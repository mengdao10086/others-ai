#!/system/bin/sh
# aicr 分析线程诊断
#   采集：进程线程列表 + 各线程 1 秒内 CPU 增量 + AISearchWorkThr 的 Java 栈
#   用法（需 root）：
#     su -c 'sh /storage/emulated/0/一键另存/测试/aicr线程栈测试.sh [采样次数] [间隔秒]'
#   默认 6 次、间隔 10 秒；结果写到同目录 aicr线程栈结果.log
#
# 判读：
#   栈顶在 traversalPicClip / getGalleryByIds / batchPic 等 → 卡在那条路径
#   AISearchWorkThr 的 CPU 增量高但栈顶每次都一样 → 死循环/重试
#   所有线程 CPU 都低 → 负载其实不在这个进程

DIR=$(cd "$(dirname "$0")" && pwd)
OUT="$DIR/aicr线程栈结果.log"
ROUNDS=${1:-6}
INTERVAL=${2:-10}

log() { echo "$@" >> "$OUT"; }

find_pid() {
    for name in com.xiaomi.aicr:searchDataService com.xiaomi.aicr; do
        p=$(pidof "$name" 2>/dev/null)
        [ -n "$p" ] && { echo "$p"; return; }
    done
    ps -A -o PID,NAME 2>/dev/null | grep searchDataService | grep -v grep | awk '{print $1}' | head -1
}

# 读 /proc/<pid>/task/<tid>/stat 的 utime+stime（第 14、15 列）
cpu_ticks() {
    awk '{print $14+$15}' "/proc/$1/task/$2/stat" 2>/dev/null || echo 0
}

find_tid() {
    for t in /proc/"$1"/task/*; do
        [ -r "$t/comm" ] || continue
        case "$(cat "$t/comm" 2>/dev/null)" in
            AISearchWorkThr*) basename "$t"; return ;;
        esac
    done
}

dump_java_stack() {
    kill -3 "$1" 2>/dev/null
    sleep 3
    if [ -f /data/anr/traces.txt ]; then
        awk '/^"AISearchWorkThr/{f=1} f{print} f&&/^[ \t]*$/{exit}' /data/anr/traces.txt
    else
        logcat -d -t 4000 2>/dev/null | awk '/AISearchWorkThr/{f=1} f{print} f&&/^[ \t]*$/{exit}'
    fi
}

: > "$OUT"
log "===== aicr 线程诊断 $(date '+%Y-%m-%d %H:%M:%S') ====="
log "轮次=$ROUNDS 间隔=${INTERVAL}s"

i=1
while [ "$i" -le "$ROUNDS" ]; do
    PID=$(find_pid)
    if [ -z "$PID" ]; then
        log "第 $i 轮：找不到 com.xiaomi.aicr 进程，退出"
        break
    fi

    TID=$(find_tid "$PID")
    log ""
    log "----- 第 $i/$ROUNDS 轮 $(date '+%H:%M:%S') pid=$PID tid=${TID:-无} -----"
    log "线程数: $(ls /proc/$PID/task 2>/dev/null | wc -l)"

    # 1 秒内各线程 CPU 增量，按大小排序取前 6
    if [ -n "$TID" ]; then
        SNAP=$(for t in /proc/"$PID"/task/*; do
            tid=$(basename "$t")
            comm=$(cat "$t/comm" 2>/dev/null)
            echo "$tid $comm $(cpu_ticks "$PID" "$tid")"
        done)
        sleep 1
        log "线程 CPU（1 秒增量，tick）："
        echo "$SNAP" | while read -r tid comm before; do
            after=$(cpu_ticks "$PID" "$tid")
            echo "$((after - before)) $tid $comm"
        done | sort -rn | head -6 | while read -r delta tid comm; do
            log "  $delta  tid=$tid  $comm"
        done
    fi

    # Java 栈
    log "AISearchWorkThr 栈："
    dump_java_stack "$PID" | sed 's/^/  /' >> "$OUT"

    [ "$i" -lt "$ROUNDS" ] && sleep "$INTERVAL"
    i=$((i + 1))
done

log ""
log "===== 结束，结果：$OUT ====="
echo "结果已写入：$OUT"
