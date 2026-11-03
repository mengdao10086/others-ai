#!/system/bin/sh
# aicr 分析线程诊断（v2）
#   采集：各线程 1 秒 CPU 增量 + AISearchWorkThr 的 Java 栈（失败时退回 native 栈）
#   用法（需 root）：
#     su -c 'sh /storage/emulated/0/一键另存/测试/aicr线程栈测试.sh [采样次数] [间隔秒]'
#   默认 5 次、间隔 10 秒；结果写到同目录 aicr线程栈结果.log
#
# 判读：
#   栈顶每轮都一样 + 该线程 CPU 增量最高 → 死循环/重试卡住
#   栈顶在 getGalleryByIds / traversalPicClip / batchPic → 卡在那条路径
#   忙的是别的线程 → 负载不在分析流水线

DIR=$(cd "$(dirname "$0")" && pwd)
OUT="$DIR/aicr线程栈结果.log"
LOCK="$DIR/.aicr线程栈测试.lock"
ROUNDS=${1:-5}
INTERVAL=${2:-10}

# 防止两份同时在跑（上一版就是两个实例交替写导致结果错乱）
if ! mkdir "$LOCK" 2>/dev/null; then
    echo "已有实例在运行（$LOCK），请等它结束或手动删除该目录"
    exit 1
fi
trap 'rmdir "$LOCK" 2>/dev/null' EXIT INT TERM

log() { echo "$@" >> "$OUT"; }

find_pid() {
    for name in com.xiaomi.aicr:searchDataService com.xiaomi.aicr; do
        p=$(pidof "$name" 2>/dev/null)
        [ -n "$p" ] && { echo "$p"; return; }
    done
    ps -A -o PID,NAME 2>/dev/null | grep searchDataService | grep -v grep | awk '{print $1}' | head -1
}

snapshot() {   # $1=pid  $2=输出文件
    : > "$2"
    for t in /proc/"$1"/task/*; do
        [ -d "$t" ] || continue
        tid=${t##*/}
        comm=$(cat "$t/comm" 2>/dev/null | tr ' ' '_')
        ticks=$(awk '{print $14+$15}' "$t/stat" 2>/dev/null)
        [ -n "$comm" ] && [ -n "$ticks" ] && echo "$tid $ticks $comm" >> "$2"
    done
}

find_tid() {
    for t in /proc/"$1"/task/*; do
        [ -r "$t/comm" ] || continue
        case "$(cat "$t/comm" 2>/dev/null)" in
            AISearchWorkThr*) echo "${t##*/}"; return ;;
        esac
    done
}

dump_stack() {   # $1=pid  $2=tid
    kill -3 "$1" 2>/dev/null
    sleep 3
    # 1) 取 /data/anr 下最新的文件
    newest=$(ls -t /data/anr/* 2>/dev/null | head -1)
    if [ -n "$newest" ] && grep -q "AISearchWorkThr" "$newest" 2>/dev/null; then
        sed -n '/"AISearchWorkThr/,/^[[:space:]]*$/p' "$newest"
        return
    fi
    # 2) logcat（含 crash 缓冲）
    for buf in crash main; do
        h=$(logcat -d -b "$buf" -t 3000 2>/dev/null | sed -n '/"AISearchWorkThr/,/^[[:space:]]*$/p')
        [ -n "$h" ] && { echo "$h"; return; }
    done
    # 3) 退回 native 栈
    if [ -n "$2" ]; then
        echo "(Java 栈取不到，改用 native 栈)"
        debuggerd -b "$2" 2>/dev/null | head -40
    fi
}

TMP1="$DIR/.snap1.$$"
TMP2="$DIR/.snap2.$$"

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
    log "----- 第 $i/$ROUNDS 轮 $(date '+%H:%M:%S') pid=$PID tid=${TID:-无} 线程=$(ls /proc/$PID/task 2>/dev/null | wc -l) -----"

    snapshot "$PID" "$TMP1"
    sleep 1
    snapshot "$PID" "$TMP2"

    log "线程 CPU（1 秒增量 tick，取前 8）："
    awk '
        NR==FNR { before[$1]=$2; next }
        ($1 in before) {
            d = $2 - before[$1];
            if (d > 0) printf "%d %s %s\n", d, $1, $3
        }
    ' "$TMP1" "$TMP2" | sort -rn | head -8 | while read -r d t c; do
        log "  $d  tid=$t  $c"
    done
    log "（无输出表示 1 秒内所有线程 CPU 增量均为 0）"

    log "AISearchWorkThr 栈："
    dump_stack "$PID" "$TID" | sed 's/^/  /' >> "$OUT"

    rm -f "$TMP1" "$TMP2"
    [ "$i" -lt "$ROUNDS" ] && sleep "$INTERVAL"
    i=$((i + 1))
done

log ""
log "===== 结束，结果：$OUT ====="
echo "结果已写入：$OUT"
