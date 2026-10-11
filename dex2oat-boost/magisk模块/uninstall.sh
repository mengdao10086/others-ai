#!/system/bin/sh
# dex2oat-boost 卸载清理

MODDIR="${0%/*}"
WORKDIR=/data/adb/dex2oat-boost

# 先停 supervisor（否则它会 5 秒后把守护进程再拉起），再停守护进程
kill $(pgrep -f "$MODDIR/service.sh") 2>/dev/null
sleep 1
kill $(pgrep -f "dex2oat-boost-daemon.sh") 2>/dev/null

# 还原属性：pm.dexopt.* 是运行期属性，重启后本就会回归系统默认；
# 此处仅对「当前这次开机」做兜底还原（用同一次开机记录的原值）。
if [ -f "$WORKDIR/orig_props.txt" ]; then
    _rp=""
    for _c in /data/adb/ksu/bin/resetprop /data/adb/magisk/resetprop; do
        [ -x "$_c" ] && { _rp="$_c"; break; }
    done
    while IFS='=' read -r _k _v; do
        [ -n "$_k" ] || continue
        if [ -n "$_rp" ]; then "$_rp" "$_k" "$_v" 2>/dev/null; else setprop "$_k" "$_v" 2>/dev/null; fi
    done < "$WORKDIR/orig_props.txt"
fi

rm -rf "$WORKDIR"
