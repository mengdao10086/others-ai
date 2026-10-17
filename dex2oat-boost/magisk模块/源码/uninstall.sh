#!/system/bin/sh
# dex2oat-boost 卸载清理

MODDIR="${0%/*}"
CACHE_DIR=/cache
LOG_FILE="$CACHE_DIR/dex2oat-boost.log"

kill $(pgrep -f "$MODDIR/service.sh") 2>/dev/null
sleep 1
kill $(pgrep -f "dex2oat-boost-daemon.sh") 2>/dev/null

# 原值记录在日志的 orig 行里（每个属性取第一次出现的记录）
if [ -f "$LOG_FILE" ]; then
    _rp=""
    for _c in /data/adb/ksu/bin/resetprop /data/adb/magisk/resetprop; do
        [ -x "$_c" ] && { _rp="$_c"; break; }
    done
    for _k in install install-fast install-bulk install-bulk-downgraded \
              install-bulk-secondary install-bulk-secondary-downgraded install-create-dm; do
        _v="$(sed -n "s/.* orig pm\.dexopt\.$_k=//p" "$LOG_FILE" 2>/dev/null | head -n 1)"
        [ -n "$_v" ] || continue
        if [ -n "$_rp" ]; then "$_rp" "pm.dexopt.$_k" "$_v" 2>/dev/null; else setprop "pm.dexopt.$_k" "$_v" 2>/dev/null; fi
    done
fi

rm -f "$LOG_FILE" "$LOG_FILE.rot"
