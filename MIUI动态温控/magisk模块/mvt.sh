MODDIR=${0%/*}
# 模块初始化：取自身目录、日志开关、系统状态
log_log=0
bypass_supply_mode=0
log_n="$(wc -l < "$MODDIR/log.log")"
if [ "$log_n" -gt "30" ]; then
	sed -i '1,5d' "$MODDIR/log.log"
fi
# 读取当前电流和电量
now_current="$(cat '/sys/class/power_supply/battery/current_now')"
battery_level="$(cat '/sys/class/power_supply/battery/capacity')"

# 读取用户配置（过滤注释）
config_conf="$(grep -v '^#' "$MODDIR/config.conf")"

# ---------- 一次性解析所有配置（避免每轮循环重复创建子进程）----------
current_max=$(echo "$config_conf" | sed -n 's/^current_max=//p')
thermal_scene_init=$(echo "$config_conf" | sed -n 's/^thermal_scene=//p' | cut -d ' ' -f '1')
thermal_scene_rest_init=$(echo "$config_conf" | sed -n 's/^thermal_scene=//p' | cut -d ' ' -f '2')
global_switch=$(echo "$config_conf" | sed -n 's/^global_switch=//p')
thermal_charge=$(echo "$config_conf" | sed -n 's/^thermal_charge=//p')
thermal_app=$(echo "$config_conf" | sed -n 's/^thermal_app=//p')
app_list=$(echo "$config_conf" | sed -n 's/^app_list=//p')
bypass_supply_app=$(echo "$config_conf" | sed -n 's/^bypass_supply_app=//p')
current_txt=$(echo "$config_conf" | sed -n 's/^current_txt=//p')
bypass_supply_level=$(echo "$config_conf" | sed -n 's/^bypass_supply_level=//p')

_cfg_bypass_temp=$(echo "$config_conf" | sed -n 's/^bypass_supply_temp=//p')
bypass_supply_temp_1=$(echo "$_cfg_bypass_temp" | cut -d ' ' -f '1')
bypass_supply_temp_2=$(echo "$_cfg_bypass_temp" | cut -d ' ' -f '2')

_cfg_bypass_time=$(echo "$config_conf" | sed -n 's/^bypass_level_time=//p')
bypass_level_time_1=$(echo "$_cfg_bypass_time" | cut -d ' ' -f '1')
bypass_level_time_2=$(echo "$_cfg_bypass_time" | cut -d ' ' -f '2')

_cfg_scene_time=$(echo "$config_conf" | sed -n 's/^thermal_scene_time=//p')
thermal_scene_time_1=$(echo "$_cfg_scene_time" | cut -d ' ' -f '1')
thermal_scene_time_2=$(echo "$_cfg_scene_time" | cut -d ' ' -f '2')
thermal_scene_time_3=$(echo "$_cfg_scene_time" | cut -d ' ' -f '3')

_cfg_fps=$(echo "$config_conf" | sed -n 's/^fps=//p')
fps_game=$(echo "$_cfg_fps" | cut -d ' ' -f '1')
fps_normal=$(echo "$_cfg_fps" | cut -d ' ' -f '2')

thermal_scene="$thermal_scene_init"
# ---------- 结束一次解析 ----------
# 预计算温控文件列表（避免每轮循环重复解析）
_thermal_map_files="$(grep -E -i 'thermal-' "$MODDIR/thermal_list" | grep -E -i '\-map$' | grep -E -i -v '\-region\-map')"



# --- 电流模式初始化 ---
if [ "$current_max" -ge "1000000" ]; then
	bypass_max=1
else
	bypass_max=0
	if [ -f "$MODDIR/max_c" ]; then
		rm -f "$MODDIR/max_c"
	fi
fi

# 检查系统温控文件列表
if [ ! -f "$MODDIR/thermal_list" ]; then
	find /system/vendor/etc -type f -iname "thermal*.conf" | sed -n 's/\/system\/vendor\/etc\///g;p' | egrep -v '\/' > "$MODDIR/thermal_list"
	rm -f "$MODDIR/mode"
	sed -i 's/\[.*\]/\[ 文件thermal_list丢失，正在创建，稍等 \]/g' "$MODDIR/module.prop"
	exit 0
fi

# 确保 MIUI 云温控目录存在且 SELinux 上下文正确
chattr -R -i -a '/data/vendor/thermal'
if [ ! -d '/data/vendor/thermal/config' ]; then
	rm -f '/data/vendor/thermal/config'
	if [ ! -d '/data/vendor/thermal' ]; then
		chattr -i -a '/data/vendor'
		rm -f '/data/vendor/thermal'
	fi
	rm -f "$MODDIR/mode"
	mkdir -p '/data/vendor/thermal/config'
	chown -R root:system '/data/vendor/thermal'
	chcon -R 'u:object_r:thermal_data_file:s0' '/data/vendor/thermal'
fi
ls_z_config="$(ls -Z /data/vendor/thermal | egrep 'config' | egrep 'u:object_r:thermal_data_file:s0')"
if [ ! -n "$ls_z_config" ]; then
	rm -f "$MODDIR/mode"
	chown -R root:system '/data/vendor/thermal'
	chcon -R 'u:object_r:thermal_data_file:s0' '/data/vendor/thermal'
fi
chmod -R 0771 '/data/vendor/thermal'

# 校验核心温控文件完整性（预置 MD5 防止篡改）
t_blank_md5="$(md5sum "$MODDIR/t_blank" | cut -d ' ' -f '1')"
md5_blank="de59942d3dffc090f0dae74dfc4d47ce"
t_bypass_0_md5="$(md5sum "$MODDIR/t_bypass_0" | cut -d ' ' -f '1')"
md5_bypass_0="006bb13431c52592192e710e46e76879"
t_bypass_1_md5="$(md5sum "$MODDIR/t_bypass_1" | cut -d ' ' -f '1')"
md5_bypass_1="959b4f8711503653abea8a019936ab2c"
t_map_md5="$(md5sum "$MODDIR/t_map" | cut -d ' ' -f '1')"
md5_map="43b4b914ef6b45119bbfe2030e4025a7"
# 文件损坏时从 thermal/ 备份恢复
if [ "$t_blank_md5" != "$md5_blank" -o "$t_bypass_0_md5" != "$md5_bypass_0" -o "$t_bypass_1_md5" != "$md5_bypass_1" -o "$t_map_md5" != "$md5_map" ]; then
	rm -f "$MODDIR/mode"
	sed -i 's/\[.*\]/\[ 稍等！若提示超过1分钟，则模块文件错误，请重新安装模块重启 \]/g' "$MODDIR/module.prop"
	thermal_t_blank_md5="$(md5sum "$MODDIR/thermal/t_blank" | cut -d ' ' -f '1')"
	if [ -f "$MODDIR/thermal/t_blank" -a "$thermal_t_blank_md5" = "$md5_blank" ]; then
		cp "$MODDIR/thermal/t_blank" "$MODDIR/t_blank"
	fi
	thermal_t_bypass_0_md5="$(md5sum "$MODDIR/thermal/t_bypass_0" | cut -d ' ' -f '1')"
	if [ -f "$MODDIR/thermal/t_bypass_0" -a "$thermal_t_bypass_0_md5" = "$md5_bypass_0" ]; then
		cp "$MODDIR/thermal/t_bypass_0" "$MODDIR/t_bypass_0"
	fi
	thermal_t_bypass_1_md5="$(md5sum "$MODDIR/thermal/t_bypass_1" | cut -d ' ' -f '1')"
	if [ -f "$MODDIR/thermal/t_bypass_1" -a "$thermal_t_bypass_1_md5" = "$md5_bypass_1" ]; then
		cp "$MODDIR/thermal/t_bypass_1" "$MODDIR/t_bypass_1"
	fi
	thermal_t_map_md5="$(md5sum "$MODDIR/thermal/t_map" | cut -d ' ' -f '1')"
	if [ -f "$MODDIR/thermal/t_map" -a "$thermal_t_map_md5" = "$md5_map" ]; then
		cp "$MODDIR/thermal/t_map" "$MODDIR/t_map"
	fi
	exit 0
fi
md5_bypass="$md5_bypass_0"
t_bypass='t_bypass_0'

# ========== 工具函数 ==========
# 清空云温控配置目录
delete_conf() {
	chattr -R -i -a '/data/vendor/thermal'
	rm -rf /data/vendor/thermal/config/*
}
# 触发 MIUI 温控引擎解密（写标记文件后轮询 decrypt.txt 时间戳）
program_data() {
	chattr -R -i -a '/data/vendor/thermal'
	stat_decrypt_2="$stat_decrypt_1"
	decrypt_n=3
	until [ "$stat_decrypt_1" != "$stat_decrypt_2" -o "$decrypt_n" = "0" ] ; do
		echo "$(date +%F_%T)" > '/data/vendor/thermal/config/mvt.conf'
		sleep 1
		decrypt_n="$(( $decrypt_n - 1 ))"
		stat_decrypt_2="$(stat -c %Y '/data/vendor/thermal/decrypt.txt')"
		if [ ! -n "$stat_decrypt_2" ]; then
			stat_decrypt_2="$stat_decrypt_1"
		fi
	done
}
# 检测温控引擎类型（mi_thermald / thermal-engine）
pgrep_thermal_program() {
	which_thermal_1="$(which 'mi_thermald')"
	which_thermal_2="$(which 'thermal-engine')"
	if [ -f "$which_thermal_1" ]; then
		thermal_program='mi_thermald'
	elif [ -f "$which_thermal_2" ]; then
		thermal_program='thermal-engine'
	else
		rm -f "$MODDIR/mode"
		rm -f "$MODDIR/max_c"
		sed -i 's/\[.*\]/\[ 机型或系统不支持，无法使用 \]/g' "$MODDIR/module.prop"
		exit 0
	fi
	thermal_program_id="$(pgrep "$thermal_program")"
	if [ ! -n "$thermal_program_id" ]; then
		rm -f "$MODDIR/mode"
		rm -f "$MODDIR/max_c"
		sed -i 's/\[.*\]/\[ 稍等！若提示超过1分钟，则系统温控进程文件被屏蔽或删除了，请排查移除冲突后重启再试 \]/g' "$MODDIR/module.prop"
		exit 0
	fi
}

# --- 温控进程管理 ---
# 重启温控进程，验证是否正常解密；失败则清理目录并退出（最多重试 10 次）
start_thermal_program() {
	program_data
	if [ "$stat_decrypt_1" = "$stat_decrypt_2" ]; then
		chown -R root:system '/data/vendor/thermal'
		chcon -R 'u:object_r:thermal_data_file:s0' '/data/vendor/thermal'
		stop "$thermal_program"
		start "$thermal_program"
		program_data
		if [ "$stat_decrypt_1" = "$stat_decrypt_2" ]; then
			rm -f "$MODDIR/mode"
			rm -f "$MODDIR/max_c"
			sed -i 's/\[.*\]/\[ 机型或系统可能不支持，无法使用，也可能有冲突，请排查移除冲突后重启再试 \]/g' "$MODDIR/module.prop"
			chattr -i -a '/data/vendor'
			chattr -R -i -a '/data/vendor/thermal'
			rm -rf '/data/vendor/thermal'
			_retry=0
			while [ "$_retry" -lt 10 ] ; do
				sleep 1
				_retry="$(( _retry + 1 ))"
			done
			exit 1
		fi
	fi
	rm -f '/data/vendor/thermal/config/mvt.conf'
	time_now="$(date +%s)"
	if [ "$time_mode" = "$(cat "$MODDIR/time_log" | sed -n '$p' | cut -d ' ' -f '2')" ]; then
		echo "$time_now $time_mode" >> "$MODDIR/time_log"
	else
		echo "$time_now $time_mode" > "$MODDIR/time_log"
	fi
	time_mode_n="$(wc -l < "$MODDIR/time_log")"
	if [ "$time_mode_n" -gt "10" ]; then
		sed -i "1,$(( $time_mode_n - 10 ))d" "$MODDIR/time_log"
	fi
	time_mode_n="$(wc -l < "$MODDIR/time_log")"
	if [ "$time_mode_n" = "10" ]; then
		time_s="$(cat "$MODDIR/time_log" | sed -n '1p' | cut -d ' ' -f '1')"
		if [ "$time_now" -lt "$(( $time_s + 120 ))" -a "$time_now" -gt "$time_s" ]; then
			_retry2=0
			while [ "$_retry2" -lt 10 ] ; do
				rm -f "$MODDIR/mode"
				rm -f "$MODDIR/max_c"
				rm -f "$MODDIR/time_log"
				sed -i 's/\[.*\]/\[ 有持续性第三方冲突，请排查移除冲突后重启再试 \]/g' "$MODDIR/module.prop"
				sleep 1
				_retry2="$(( _retry2 + 1 ))"
			done
			exit 1
		fi
	fi
}

# ========== 旁路供电功能 ==========
# 将旁路供电温控文件写入系统路径（MD5 变化时才覆盖）
bypass_supply_md5() {
	thermal_config_md5="$(md5sum "/data/vendor/thermal/config/thermal-normal.conf" | cut -d ' ' -f '1')"
	if [ "$thermal_config_md5" != "$md5_bypass" ]; then
		cp "$MODDIR/$t_bypass" "/data/vendor/thermal/config/thermal-normal.conf"
		if [ "$thermal_config_md5" != "$md5_bypass_0" -a "$thermal_config_md5" != "$md5_bypass_1" ]; then
			log_log=1
		fi
	fi
	thermal_list="$_thermal_map_files"
	for i in $thermal_list ; do
		thermal_config_md5="$(md5sum "/data/vendor/thermal/config/$i" | cut -d ' ' -f '1')"
		if [ -f "/system/vendor/etc/$i" -a "$thermal_config_md5" != "$md5_map" ]; then
			cp "$MODDIR/t_map" "/data/vendor/thermal/config/$i"
			log_log=1
		fi
	done
	if [ ! -f "$MODDIR/mode" -o "$log_log" = "1" ]; then
		start_thermal_program
	fi
}
# 记录充电电流日志（到 current.txt）
current_log() {
	if [ "$current_txt" = "1" ]; then
		current_n="$(wc -l < "$MODDIR/current.txt")"
		if [ "$current_n" -gt "500" ]; then
			sed -i '1,50d' "$MODDIR/current.txt"
		fi
		battery_temp="$(sed -n 's/.$//g;$p' /sys/class/power_supply/battery/temp)"
		if [ "$stop_level" -gt "0" ]; then
			echo "$(date +%F_%T) $screen_data 电量$battery_level 档位$thermal_scene 电模$current_max 电流$now_current 温度$battery_temp $bypass_supply_type$stop_level" >> "$MODDIR/current.txt"
		else
			echo "$(date +%F_%T) $screen_data 电量$battery_level 档位$thermal_scene 电模$current_max 电流$now_current 温度$battery_temp" >> "$MODDIR/current.txt"
		fi
	fi
}
# 写入充电电流到各电源管理节点
change_current() {
	if [ "$current_max" = "0" ]; then
		if [ -n "$now_current" ]; then
			echo "$now_current" >> "$MODDIR/now_c"
			now_current_n="$(wc -l < "$MODDIR/now_c")"
			if [ "$now_current_n" -gt "10" ]; then
				sed -i '1,2d' "$MODDIR/now_c"
			fi
			now_current_e="$(egrep '\-' "$MODDIR/now_c" | wc -l)"
			now_current_ev="$(egrep -v '\-' "$MODDIR/now_c" | wc -l)"
			if [ "$now_current_e" -ge "5" -a "$now_current_ev" = "0" ]; then
				current_max="100000"
			else
				current_max="0"
			fi
		fi
	else
		rm -f "$MODDIR/now_c"
	fi
	current_log
	current_bridge="1000000"
	max_c="$(cat "$MODDIR/max_c")"
	battery_current_list="/sys/class/power_supply/battery/constant_charge_current_max /sys/class/power_supply/battery/constant_charge_current /sys/class/power_supply/battery/fast_charge_current /sys/class/power_supply/battery/thermal_input_current /sys/class/power_supply/battery/current_max"
	for i in $battery_current_list ; do
		if [ -f "$i" ]; then
			chmod 0644 "$i"
			battery_current_data="$(cat "$i")"
			if [ -n "$battery_current_data" -a "$battery_current_data" != "$current_max" ]; then
				if [ "$current_max" -ge "$current_bridge" -o "$battery_current_data" -ge "0" -o "$max_c" = "0" ]; then
					if [ "$current_max" -ge "$current_bridge" -o "$battery_current_data" -le "$current_bridge" ]; then
						echo "$current_max" > "$i"
					else
						echo "$current_bridge" > "$i"
					fi
				else
					echo "$current_bridge" > "$i"
				fi
			fi
		fi
	done
	if [ "$current_max" != "$max_c" ]; then
		echo "$current_max" > "$MODDIR/max_c"
	fi
}
# 退出旁路模式时清理电流状态
stop_current() {
	if [ "$bypass_max" = "1" ]; then
		if [ -f "$MODDIR/stop_level" ]; then
			change_current
			rm -f "$MODDIR/stop_level"
		fi
		rm -f "$MODDIR/max_c"
	else
		if [ -f "$MODDIR/stop_level" ]; then
			rm -f "$MODDIR/stop_level"
		fi
	fi
}
# 旁路供电电流控制：根据电量动态调整充电电流和温控文件
bypass_supply_current() {
	if [ "$battery_level" -gt "0" ]; then
		until [ "$stop_level" -gt "0" ]; do
			stop_level="$battery_level"
			echo "$stop_level" > "$MODDIR/stop_level"
		done
		if [ "$battery_level" -lt "$stop_level" -o "$battery_level" -lt "3" ]; then
			md5_bypass="$md5_bypass_1"
			t_bypass='t_bypass_1'
		fi
		if [ "$bypass_max" = "1" ]; then
			if [ "$stop_level" = "100" ]; then
				if [ "$battery_level" = "100" ]; then
					current_max="0"
				elif [ "$battery_level" = "99" ]; then
					current_max="100000"
				fi
			else
				if [ "$battery_level" -gt "$stop_level" ]; then
					current_max="0"
				elif [ "$battery_level" = "$stop_level" ]; then
					current_max="100000"
				fi
			fi
			change_current
		else
			current_max="-"
			current_log
		fi
	fi
	bypass_supply_md5
}
# 旁路供电时间段限制：指定时间段外不触发电量旁路
bypass_supply_level_time() {
	bypass_level_data=1
	# 已从全局预解析
	if [ "$bypass_level_time_1" != "$bypass_level_time_2" ]; then
		if [ "$bypass_level_time_1" -ge "0" -a "$bypass_level_time_1" -lt "24" -a "$bypass_level_time_2" -ge "0" -a "$bypass_level_time_2" -lt "24" ]; then
			if [ "$bypass_level_time_1" -gt "$bypass_level_time_2" ]; then
				if [ "$(date +%k)" -lt "$bypass_level_time_1" -a "$(date +%k)" -ge "$bypass_level_time_2" ]; then
					bypass_level_data=0
				fi
			elif [ "$bypass_level_time_1" -lt "$bypass_level_time_2" ]; then
				if [ "$(date +%k)" -lt "$bypass_level_time_1" -o "$(date +%k)" -ge "$bypass_level_time_2" ]; then
					bypass_level_data=0
				fi
			fi
		fi
	fi
}
# --- 旁路供电场景判断（优先级：温度 > 手动 > 电量 > 游戏）---
bypass_supply_conf() {
	stop_level="$(cat "$MODDIR/stop_level")"
	battery_temp="$(sed -n 's/.$//g;$p' /sys/class/power_supply/battery/temp)"
	if [ "$battery_temp" -gt "0" -a "$bypass_supply_temp_2" -gt "0" -a "$bypass_supply_temp_1" -gt "$bypass_supply_temp_2" ]; then
		if [ "$battery_temp" -ge "$bypass_supply_temp_1" ]; then
			if [ ! -f "$MODDIR/on_bypass_temp" ]; then
				touch "$MODDIR/on_bypass_temp"
			fi
		else
			if [ "$battery_temp" -le "$bypass_supply_temp_2" ]; then
				rm -f "$MODDIR/on_bypass_temp"
			fi
		fi
	else
		rm -f "$MODDIR/on_bypass_temp"
	fi
	if [ -f "$MODDIR/on_bypass_temp" ]; then
		bypass_supply_mode=1
	else
		if [ -f "$MODDIR/on_bypass" ]; then
			bypass_supply_mode=2
		else
			bypass_supply_level_time
			# 已从全局预解析
			bypass_supply_level_2="$(( $bypass_supply_level - 1 ))"
			if [ "$battery_level" -ge "$bypass_supply_level" -a "$bypass_supply_level" -gt "2" -a "$bypass_supply_level" -le "100" -a "$bypass_level_data" = "1" ]; then
				bypass_supply_mode=3
			elif [ "$battery_level" = "$bypass_supply_level_2" -a "$bypass_supply_level" -gt "2" -a "$bypass_supply_level" -le "100" -a "$bypass_level_data" = "1" ]; then
				md5_bypass="$md5_bypass_1"
				t_bypass='t_bypass_1'
				bypass_supply_mode=3
			else
				if [ "$app_on" = "1" -a "$bypass_supply_app" = "1" ]; then
					bypass_supply_mode=4
				fi
			fi
		fi
	fi
	mode="$(cat "$MODDIR/mode")"
	if [ "$bypass_supply_mode" = "1" ]; then
		bypass_supply_type='温度旁路'
		time_mode=6
		bypass_supply_current
		if [ "$mode" != "6" ]; then
			echo "6" > "$MODDIR/mode"
			sed -i 's/\[.*\]/\[ 当前温控：温度-旁路供电 \]/g' "$MODDIR/module.prop"
			echo "$(date +%F_%T) 当前温控：温度-旁路供电" >> "$MODDIR/log.log"
		fi
		exit 0
	elif [ "$bypass_supply_mode" = "2" ]; then
		bypass_supply_type='手动旁路'
		time_mode=7
		bypass_supply_current
		if [ "$mode" != "7" ]; then
			echo "7" > "$MODDIR/mode"
			sed -i 's/\[.*\]/\[ 当前温控：手动-旁路供电 \]/g' "$MODDIR/module.prop"
			echo "$(date +%F_%T) 当前温控：手动-旁路供电" >> "$MODDIR/log.log"
		fi
		exit 0
	elif [ "$bypass_supply_mode" = "3" ]; then
		bypass_supply_type='电量旁路'
		time_mode=8
		bypass_supply_current
		if [ "$mode" != "8" ]; then
			rm -f "$MODDIR/stop_level"
			echo "8" > "$MODDIR/mode"
			sed -i 's/\[.*\]/\[ 当前温控：电量-旁路供电 \]/g' "$MODDIR/module.prop"
			echo "$(date +%F_%T) 当前温控：电量-旁路供电" >> "$MODDIR/log.log"
		fi
		exit 0
	elif [ "$bypass_supply_mode" = "4" ]; then
		bypass_supply_type='游戏旁路'
		time_mode=9
		bypass_supply_current
		if [ "$mode" != "9" ]; then
			echo "9" > "$MODDIR/mode"
			sed -i 's/\[.*\]/\[ 当前温控：游戏-旁路供电 \]/g' "$MODDIR/module.prop"
			echo "$(date +%F_%T) 当前温控：游戏-旁路供电" >> "$MODDIR/log.log"
		fi
		exit 0
	else
		if [ -f "$MODDIR/stop_level" ]; then
			rm -f "$MODDIR/stop_level"
		fi
	fi
}
# ---------- 通用温控配置应用函数 ----------
# 统一处理：复制温控文件、处理 t_map、重启温控进程、写日志
# 参数1: 源文件路径（相对 $MODDIR）
# 参数2: mode 编号
# 参数3: 描述文字
apply_thermal_config() {
	_src="$1"
	_mode="$2"
	_desc="$3"
	_target="/data/vendor/thermal/config/thermal-normal.conf"

	# 复制主温控文件（仅当源文件存在且 MD5 变化时）
	if [ -f "$MODDIR/$_src" ]; then
		_tgt_md5="$(md5sum "$_target" | cut -d ' ' -f '1')"
		_src_md5="$(md5sum "$MODDIR/$_src" | cut -d ' ' -f '1')"
		if [ "$_tgt_md5" != "$_src_md5" ]; then
			cp "$MODDIR/$_src" "$_target"
			log_log=1
		fi
	fi

	# 统一处理 t_map 文件
	for i in $_thermal_map_files ; do
		_cfg_md5="$(md5sum "/data/vendor/thermal/config/$i" | cut -d ' ' -f '1')"
		if [ -f "/system/vendor/etc/$i" -a "$_cfg_md5" != "$md5_map" ]; then
			cp "$MODDIR/t_map" "/data/vendor/thermal/config/$i"
			log_log=1
		fi
	done

	# 检查是否需要重启温控进程
	_cur_mode="$(cat "$MODDIR/mode")"
	if [ "$log_log" = "1" -o "$_cur_mode" != "$_mode" ]; then
		time_mode="$_mode"
		start_thermal_program
		echo "$_mode" > "$MODDIR/mode"
		sed -i "s/\[.*\]/\[ 当前温控：$_desc \]/g" "$MODDIR/module.prop"
		echo "$(date +%F_%T) 当前温控：$_desc" >> "$MODDIR/log.log"
	fi
}

# ---------- 原 5 个重复函数简化为薄封装 ----------
t_blank_conf() {
	apply_thermal_config "t_blank" "5" "零档-无限制"
}
thermal_scene_conf() {
	case "$thermal_scene" in
		1) apply_thermal_config "thermal/$thermal_scene/thermal-scene.conf" "11" "一档-无限制" ;;
		2) apply_thermal_config "thermal/$thermal_scene/thermal-scene.conf" "12" "二档-无限制" ;;
		3) apply_thermal_config "thermal/$thermal_scene/thermal-scene.conf" "13" "三档-无限制" ;;
		4) apply_thermal_config "thermal/$thermal_scene/thermal-scene.conf" "14" "四档-无限制" ;;
		5) apply_thermal_config "thermal/$thermal_scene/thermal-scene.conf" "15" "五档-无限制" ;;
		*) apply_thermal_config "t_blank" "10" "其它-无限制" ;;
	esac
}
thermal_app_conf() {
	apply_thermal_config "thermal/thermal-app.conf" "4" "thermal-app.conf"
}
thermal_charge_conf() {
	apply_thermal_config "thermal/thermal-charge.conf" "3" "thermal-charge.conf"
}
thermal_default_conf() {
	apply_thermal_config "thermal/thermal-default.conf" "2" "thermal-default.conf"
}


# 恢复系统默认温控：清空云温控目录 → 重启引擎让 MIUI 重新生成
thermal_conf() {
	thermal_config="$(ls -A /data/vendor/thermal/config)"
	if [ -n "$thermal_config" ]; then
		delete_conf
		log_log=1
	fi
	mode="$(cat "$MODDIR/mode")"
	if [ "$log_log" = "1" -o "$mode" != "1" ]; then
		time_mode=1
		start_thermal_program
		echo "1" > "$MODDIR/mode"
		sed -i 's/\[.*\]/\[ 当前温控：系统默认 \]/g' "$MODDIR/module.prop"
		echo "$(date +%F_%T) 当前温控：系统默认" >> "$MODDIR/log.log"
	fi
}

# ========== 屏幕刷新率控制 ==========
# 锁定高刷新率（游戏场景用）
fps_lock() {
	fps="$fps_game"
	if [ -n "$fps" -a "$fps" != "0" ]; then
		DisplayModeRecord="$(dumpsys display | egrep 'DisplayModeRecord')"
		DisplayModeRecord_id="$(echo "$DisplayModeRecord" | egrep "fps=$fps" | egrep -v '=\[\]' | sed -n 's/.*id=//g;s/,.*//g;1p')"
		if [ -n "$DisplayModeRecord_id" ]; then
			DisplayModeRecord_id="$(( $DisplayModeRecord_id - 1 ))"
			if [ "$DisplayModeRecord_id" != "-1" ]; then
				service call SurfaceFlinger 1035 i32 "$DisplayModeRecord_id"
				if [ ! -f "$MODDIR/fps" ]; then
					touch "$MODDIR/fps"
				fi
			fi
		fi
	fi
}
# 恢复普通刷新率（退出游戏场景时）
fps_recovery() {
	if [ -f "$MODDIR/fps" ]; then
		fps="$fps_normal"
		if [ -n "$fps" -a "$fps" != "0" ]; then
			DisplayModeRecord="$(dumpsys display | egrep 'DisplayModeRecord')"
			DisplayModeRecord_id="$(echo "$DisplayModeRecord" | egrep "fps=$fps" | egrep -v '=\[\]' | sed -n 's/.*id=//g;s/,.*//g;1p')"
			if [ -n "$DisplayModeRecord_id" ]; then
				DisplayModeRecord_id="$(( $DisplayModeRecord_id - 1 ))"
				if [ "$DisplayModeRecord_id" != "-1" ]; then
					service call SurfaceFlinger 1035 i32 "$DisplayModeRecord_id"
				fi
			fi
		fi
		rm -f "$MODDIR/fps"
	fi
}
# 电流日志入口（区分是否启用电流模式）
change_current_log() {
	if [ "$bypass_max" = "1" ]; then
		change_current
	else
		current_max="-"
		current_log
	fi
}

# ========== 主逻辑（每 3 秒执行一轮）==========
mode="$(cat "$MODDIR/mode")"
# 非停止状态则检查温控引擎进程
if [ "$mode" != 'stop' ]; then
	pgrep_thermal_program
fi

# 读取解密状态和全局开关
stat_decrypt_1="$(stat -c %Y '/data/vendor/thermal/decrypt.txt')"
# 模块被禁用 → 先恢复系统默认温控，再标记停止
if [ -f "$MODDIR/disable" -o "$global_switch" = "0" ]; then
	mode="$(cat "$MODDIR/mode")"
	if [ "$mode" != 'stop' ]; then
		rm -f "$MODDIR/max_c"
		rm -f "$MODDIR/stop_level"
		rm -f "$MODDIR/now_c"
		thermal_conf
		echo 'stop' > "$MODDIR/mode"
		sed -i 's/\[.*\]/\[ 模块已关闭 \]/g' "$MODDIR/module.prop"
		echo "$(date +%F_%T) 模块已关闭" >> "$MODDIR/log.log"
	fi
	exit 0
fi

# 重置场景温控档位（从配置重新读取）
thermal_scene="$thermal_scene_init"

# --- 场景检测 ---
screen_on="$(dumpsys deviceidle get screen)"

# === 亮屏状态：检测前台是否在游戏列表 ===
if [ "$screen_on" != 'false' ]; then
	screen_data=1
	if [ "$thermal_app" = "1" ]; then
		if [ -n "$app_list" ]; then
			dumpsys_window="$(dumpsys window displays | egrep 'mCurrentFocus' | sed -n '$p')"
			if [ -n "$dumpsys_window" ]; then
				activity_window="$(echo "$dumpsys_window" | egrep "$app_list")"
			else
				activity_window="$(dumpsys window | egrep 'mCurrentFocus' | sed -n '$p' | egrep "$app_list")"
			fi
			if [ -f "$MODDIR/mCurrentFocus" ]; then
				if [ ! -n "$activity_window" ]; then
					activity_window="$(dumpsys activity | egrep 'mResumedActivity|mTopFullscreen' | sed -n '$p' | egrep "$app_list")"
				fi
			fi
			if [ -n "$activity_window" ]; then
				if [ ! -f "$MODDIR/mCurrentFocus" ]; then
					touch "$MODDIR/mCurrentFocus"
				fi
				fps_lock
# 检查是否同时处于充电状态
				dumpsys_charging="$(dumpsys deviceidle get charging)"
				if [ "$dumpsys_charging" = "true" ]; then
					app_on=1
					bypass_supply_conf
				else
					stop_current
				fi
				if [ "$bypass_supply_app" -gt "1" ]; then
					thermal_scene="$bypass_supply_app"
				fi
				thermal_app_c="$(wc -c < "$MODDIR/thermal/thermal-app.conf")"
				if [ "$thermal_app_c" -lt "100" ]; then
					if [ "$thermal_scene" -ge "1" ]; then
# 检查场景温控文件是否有效
						thermal_scene_c="$(wc -c < "$MODDIR/thermal/$thermal_scene/thermal-scene.conf")"
						if [ "$thermal_scene_c" -lt "100" ]; then
							t_blank_conf
							thermal_scene="-"
						else
							thermal_scene_conf
						fi
					else
						t_blank_conf
					fi
				else
					thermal_app_conf
					thermal_scene="a"
				fi
				if [ "$app_on" = "1" ]; then
					change_current_log
				fi
				exit 0
			else
				rm -f "$MODDIR/mCurrentFocus"
			fi
		fi
	fi
else
	screen_data=0
fi
fps_recovery
dumpsys_charging="$(dumpsys deviceidle get charging)"
if [ "$dumpsys_charging" = "true" ]; then
	app_on=0
	bypass_supply_conf
# 充电场景总开关已开启
	if [ "$thermal_charge" = "1" ]; then
		thermal_charge_c="$(wc -c < "$MODDIR/thermal/thermal-charge.conf")"
# 无有效自定义文件 → 使用场景温控
		if [ "$thermal_charge_c" -lt "100" ]; then
			thermal_scene_time_data=0
			if [ "$thermal_scene_time_1" != "$thermal_scene_time_2" ]; then
				if [ "$thermal_scene_time_1" -ge "0" -a "$thermal_scene_time_1" -lt "24" -a "$thermal_scene_time_2" -ge "0" -a "$thermal_scene_time_2" -lt "24" -a "$thermal_scene_time_3" -ge "0" ]; then
# 跨零点时间段处理（开始 > 结束）
					if [ "$thermal_scene_time_1" -gt "$thermal_scene_time_2" ]; then
						if [ "$(date +%k)" -ge "$thermal_scene_time_1" -o "$(date +%k)" -lt "$thermal_scene_time_2" ]; then
							thermal_scene="$thermal_scene_time_3"
							thermal_scene_time_data=1
						fi
# 同天内时间段处理（开始 < 结束）
					elif [ "$thermal_scene_time_1" -lt "$thermal_scene_time_2" ]; then
						if [ "$(date +%k)" -ge "$thermal_scene_time_1" -a "$(date +%k)" -lt "$thermal_scene_time_2" ]; then
							thermal_scene="$thermal_scene_time_3"
							thermal_scene_time_data=1
						fi
					fi
				fi
			fi
			if [ "$screen_data" = "0" -a "$thermal_scene_time_data" != "1" ]; then
				thermal_scene_rest="$thermal_scene_rest_init"
				if [ -n "$thermal_scene_rest" -a "$thermal_scene_rest" -ge "0" ]; then
					thermal_scene="$thermal_scene_rest"
				fi
			fi
# 有场景档位 → 使用对应温控
			if [ "$thermal_scene" -ge "1" ]; then
# 检查场景温控文件是否有效
				thermal_scene_c="$(wc -c < "$MODDIR/thermal/$thermal_scene/thermal-scene.conf")"
				if [ "$thermal_scene_c" -lt "100" ]; then
					t_blank_conf
					thermal_scene="-"
				else
					thermal_scene_conf
				fi
			else
				t_blank_conf
			fi
		else
			thermal_charge_conf
			thermal_scene="c"
		fi
		change_current_log
		exit 0
	fi
	thermal_scene="--"
	change_current_log
else
	stop_current
fi

# === 默认场景：检查自定义默认温控文件 ===
if [ -f "$MODDIR/thermal/thermal-default.conf" ]; then
	thermal_default_c="$(wc -c < "$MODDIR/thermal/thermal-default.conf")"
	if [ "$thermal_default_c" -lt "100" ]; then
		if [ "$thermal_scene" -ge "1" ]; then
			thermal_scene_c="$(wc -c < "$MODDIR/thermal/$thermal_scene/thermal-scene.conf")"
			if [ "$thermal_scene_c" -lt "100" ]; then
				t_blank_conf
			else
				thermal_scene_conf
			fi
		else
			t_blank_conf
		fi
	else
		thermal_default_conf
	fi
	exit 0
fi

# 无任何自定义温控 → 恢复系统默认
thermal_conf
exit 0
# 模块版本标记
#version=2023032400
# ##
