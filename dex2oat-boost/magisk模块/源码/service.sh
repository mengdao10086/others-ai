#!/system/bin/sh
# dex2oat-boost 开机服务（Magisk / KernelSU 在 late_start 阶段以 root 执行）
# 职责：等开机完成 → 启动守护进程；守护进程退出则重启（看门狗）。

MODDIR="${0%/*}"
DAEMON="$MODDIR/bin/dex2oat-boost-daemon.sh"
LOG_FILE=/cache/dex2oat-boost.log

log_msg() {
    if [ -f "$LOG_FILE" ]; then
        _sz="$(wc -c < "$LOG_FILE" 2>/dev/null)"
    else
        _sz=0
    fi
    [ -n "$_sz" ] || _sz=0
    if [ "$_sz" -ge 262144 ]; then
        tail -n 400 "$LOG_FILE" > "$LOG_FILE.rot" 2>/dev/null && mv "$LOG_FILE.rot" "$LOG_FILE"
    fi
    printf '%s service.sh：%s\n' "$(date '+%d %H:%M:%S')" "$1" >> "$LOG_FILE" 2>/dev/null
}

trap 'log_msg "收到终止信号，退出"; exit 0' TERM INT

# 等系统启动完成（cmd package / pm 就绪），最多等 4 分钟
_i=0
while [ "$(getprop sys.boot_completed 2>/dev/null)" != "1" ]; do
    _i=$((_i + 1))
    [ "$_i" -ge 120 ] && break
    sleep 2
done
log_msg "开机完成，启动守护进程（等待 $_i 次）"

chmod 0755 "$DAEMON" 2>/dev/null

while true; do
    "$DAEMON" "$MODDIR" >> "$LOG_FILE" 2>&1
    _rc=$?
    log_msg "守护进程退出（rc=$_rc），5 秒后重启"
    sleep 5
done
