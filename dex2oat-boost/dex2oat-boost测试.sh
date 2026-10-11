#!/system/bin/sh
# dex2oat-boost 真机诊断脚本（在手机的 su 终端里直接运行，不走 PC/adb）
#
# 一次跑完三件事：
#   1) 设备上到底装了哪个模块包（新包名 / 旧包名）
#   2) LSPosed 有没有认到这个模块（daemon 模块日志 + 配置库比对）
#   3) 真装一个包，抓全量日志，看模块到底有没有被注入安装器进程
#
# 用法（手机终端，已解锁，已获 root）：
#   su
#   sh "/storage/emulated/0/一键另存/测试/dex2oat-boost测试.sh"
#
# 输出：脚本同目录的 dex2oat-boost结果.log
#       （该目录不可写时自动退到 /data/local/tmp）
#       原始日志另存同目录 _scratch/dex2oat-boost原始日志.txt
#
# 中途会停下提示「去装一个 APK」，装完在终端按回车继续。
# 全程只读系统状态，唯一的写入是脚本同目录下的结果文件。

SCRIPT_DIR="$(cd "$(dirname "$0")" 2>/dev/null && pwd)"
[ -n "$SCRIPT_DIR" ] || SCRIPT_DIR="."
if ! touch "$SCRIPT_DIR/.dex2oatboost_write_test" 2>/dev/null; then
	SCRIPT_DIR="/data/local/tmp"
	echo "脚本所在目录不可写，输出改到 $SCRIPT_DIR"
else
	rm -f "$SCRIPT_DIR/.dex2oatboost_write_test"
fi

OUT="$SCRIPT_DIR/dex2oat-boost结果.log"
SCRATCH="$SCRIPT_DIR/_scratch"
RAWLOG="$SCRATCH/dex2oat-boost原始日志.txt"
mkdir -p "$SCRATCH" 2>/dev/null
: > "$OUT" 2>/dev/null || { echo "无法写入 $OUT"; exit 1; }

MODULE_NEW="com.mengdao.dex2oatboost"
MODULE_OLD="com.mengdao.miuidexopthook"
INSTALLER="com.miui.packageinstaller"

say()  { printf '%s\n' "$*" | tee -a "$OUT"; }
sect() { say ""; say "================================================================"; say "$*"; say "================================================================"; }

# 命中统计 + 前 60 行
hits() {
	_pat="$1"; _label="$2"
	_n="$(grep -a -i -c -E "$_pat" "$RAWLOG" 2>/dev/null)"
	[ -n "$_n" ] || _n=0
	say "--- $_label（命中 $_n 行）"
	grep -a -i -n -E "$_pat" "$RAWLOG" 2>/dev/null | head -n 60 >> "$OUT"
}

sect "0. 环境"
say "时间：$(date '+%Y-%m-%d %H:%M:%S')"
say "脚本目录：$SCRIPT_DIR"
say "身份：$(id 2>/dev/null)"
say "系统：Android $(getprop ro.build.version.release) / API $(getprop ro.build.version.sdk)"
say "ROM：$(getprop ro.build.version.incremental)"
if [ "$(id -u 2>/dev/null)" != "0" ]; then
	say "!! 当前不是 root。LSPosed 配置库与 daemon 日志会读不到（其余部分仍可跑）。"
fi

sect "1. 模块安装情况"
for p in "$MODULE_NEW" "$MODULE_OLD"; do
	say "--- pm path $p"
	pm path "$p" >> "$OUT" 2>&1
done
say "--- 版本与安装时间（判断新包名是否真的装上过）"
for p in "$MODULE_NEW" "$MODULE_OLD"; do
	say "  [$p]"
	dumpsys package "$p" 2>/dev/null \
		| grep -m4 -E "versionName|firstInstallTime|lastUpdateTime|codePath" >> "$OUT" 2>&1
done

sect "2. 实际使用哪个安装器"
say "--- 设备上所有含 installer 的包"
pm list packages 2>/dev/null | grep -i installer >> "$OUT" 2>&1
say "--- com.miui.packageinstaller 的版本（与你反编译的那份对照）"
dumpsys package "$INSTALLER" 2>/dev/null | grep -m3 -E "versionName|versionCode" >> "$OUT" 2>&1

sect "3. LSPosed daemon 的模块日志（最直接的「有没有加载过」证据）"
LOGDIR="/data/adb/lspd/log"
if [ -d "$LOGDIR" ]; then
	say "--- $LOGDIR 内容"
	ls -la "$LOGDIR" >> "$OUT" 2>&1
	say "--- 日志里与本模块相关的行（新旧包名一起搜）"
	if grep -a -i -E "dex2oatboost|miuidexopthook" "$LOGDIR"/* 2>/dev/null | head -n 40 >> "$OUT"; then
		:
	else
		say "    （无命中）"
	fi
	say "--- 日志里「已加载的模块」行（看本模块在不在其中）"
	if grep -a -i "Loading.*module" "$LOGDIR"/* 2>/dev/null | head -n 40 >> "$OUT"; then
		:
	else
		say "    （无命中）"
	fi
else
	say "!! 找不到 $LOGDIR（LSPosed 未装 / 非 Zygisk 系 / 无 root？）"
fi

sect "4. LSPosed 配置库（在册 / 启用 / 作用域）"
DB="/data/adb/lspd/config/modules_config.db"
if [ -f "$DB" ]; then
	say "库文件：$DB"
	ls -la "$DB" >> "$OUT" 2>&1
	say "--- 字符串存在性比对（这个判断最可靠：没出现过就是没在册）"
	for p in "$MODULE_NEW" "$MODULE_OLD"; do
		_n="$(grep -a -c "$p" "$DB" 2>/dev/null)"
		[ -n "$_n" ] || _n=0
		say "    库中 '$p' 出现 $_n 次"
	done
	if command -v sqlite3 >/dev/null 2>&1; then
		say "--- sqlite3 详查：modules_state（enabled 1=已启用）"
		sqlite3 "$DB" "select module_pkg_name,user_id,enabled from modules_state;" 2>/dev/null | grep -i mengdao >> "$OUT" 2>&1
		say "--- sqlite3 详查：scope（作用域）"
		sqlite3 "$DB" "select module_pkg_name,app_pkg_name,user_id from scope;" 2>/dev/null | grep -i mengdao >> "$OUT" 2>&1
	else
		say "（设备上没有 sqlite3，只做了字符串存在性判断，够判断「在不在册」）"
	fi
else
	say "!! 读不到 $DB（无 root 或该 ROM 的 LSPosed 库路径不同）"
fi

sect "5. 抓取全量日志（关键：不按标签过滤）"
say "清空日志、杀掉安装器进程，然后开始录制。"
logcat -c 2>/dev/null
am force-stop "$INSTALLER" 2>/dev/null

say "\$ logcat -v time > $RAWLOG"
logcat -v time > "$RAWLOG" 2>&1 &
LOGPID=$!
sleep 1

say ""
say ">>> 现在请在手机上点开一个 APK，走完 MIUI 安装界面（这一步必须有，否则抓不到东西）。"
if [ -t 0 ]; then
	printf '%s' "    装完后回到这个终端按回车结束抓取... "
	read _ignore
else
	say "    （非交互运行：固定抓 60 秒）"
	sleep 60
fi

kill "$LOGPID" 2>/dev/null
wait "$LOGPID" 2>/dev/null
sleep 1
_n="$(wc -l < "$RAWLOG" 2>/dev/null)"
say "抓取结束，原始日志：$RAWLOG（${_n:-0} 行）"

sect "6. 日志分析"
hits "Dex2OatBoost|MIUIDexoptHook|dex2oatboost|miuidexopthook|dexopthook" "6.1 模块自身日志（新旧两种标签一起搜）"
hits "com\.miui\.packageinstaller" "6.2 安装器进程相关行"

say ""
say "--- 6.3 这份日志里被 LSPosed 注入到 com.miui.packageinstaller 的模块"
grep -a -o -E '\(com\.miui\.packageinstaller\)\[[A-Za-z0-9_.]+,' "$RAWLOG" 2>/dev/null \
	| sed -E 's/.*\[//; s/,$//' | sort -u >> "$OUT" 2>&1
say "    （若为空 → 这次安装期间安装器进程没被注入，或压根没启动）"

say ""
say "--- 6.4 这份日志里出现过的所有模块（供对照）"
grep -a -o -E '\[[a-z][a-z0-9_.]*,[A-Za-z]' "$RAWLOG" 2>/dev/null \
	| sed -E 's/^\[//; s/,$//' | sort -u >> "$OUT" 2>&1

sect "7. 怎么读这份结果"
cat <<'TXT' | tee -a "$OUT"

  · 第 1 节：新包名 pm path 有输出 = 新 APK 装上了；只有旧包名有 = 还在用旧版本。
  · 第 3 节：出现本模块的 Loading 行 = LSPosed 确实加载过它；
           完全没有本模块的行（但能看到别的模块）= 没加载，问题在 LSPosed 侧。
  · 第 4 节：新包名在库里出现 0 次 = LSPosed 根本没认到这个模块，
           此时怎么勾作用域都不会注入 → 卸载重装模块 APK，并重开 LSPosed 管理器让它重新扫描。
  · 第 6.1 节：有 Dex2OatBoost 字样 = 新模块已注入；有 MIUIDexoptHook 字样 = 旧模块在跑；
           两者都没有 = 模块没进安装器进程。
  · 第 6.3 节：能看到别的模块却看不到我们的 → 锁定在注入环节；
           整段为空 → 这次测试可能没真正触发安装器界面。

  结果文件：同目录 dex2oat-boost结果.log
  原始日志：同目录 _scratch/dex2oat-boost原始日志.txt
TXT

say ""
say "完成。把 dex2oat-boost结果.log 交回即可。"
