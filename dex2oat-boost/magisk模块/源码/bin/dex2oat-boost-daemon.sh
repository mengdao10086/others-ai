#!/system/bin/sh
# dex2oat-boost 守护进程
# ① 7 个 pm.dexopt.* = skip；② 轮询 /data/app，新装倒计时 3 周期后 compile -m speed
# ③ 每周期按 CPU 4-7 负载决定是否并行（上限 MAX_PARALLEL）


MODDIR="${1:-}"
if [ -z "$MODDIR" ]; then
    _self="${0%/*}"
    MODDIR="${_self%/*}"
fi
[ -n "$MODDIR" ] || MODDIR="."

POLL_INTERVAL=5
APP_ROOT=/data/app
WORKDIR=/data/adb/dex2oat-boost
DOWNGRADE_ENABLE=1
INSTALL_FILTER=skip
DOWNGRADE_REASONS="install install-fast install-bulk install-bulk-downgraded install-bulk-secondary install-bulk-secondary-downgraded install-create-dm"
RECOMPILE_FILTER=speed
RECOMPILE_FORCE=0
START_DELAY_CYCLES=3
MAX_PARALLEL=3
CPU_CORE_SET=4-7
CPU_LOAD_THRESHOLD=50
READY_CHECK=1
COMPILE_RETRY_MAX=3
PENDING_MAX_CYCLES=120
MAX_LOG_BYTES=262144
LOG_KEEP_LINES=400
DRY_RUN=0
ONESHOT=0
MAX_CYCLES=0
PM_BIN=pm
COMPILE_BIN="cmd package"

CONFIG="$MODDIR/config.prop"
[ -f "$CONFIG" ] && . "$CONFIG"

APP_ROOT="${D2O_APP_ROOT:-$APP_ROOT}"
WORKDIR="${D2O_WORKDIR:-$WORKDIR}"
DRY_RUN="${D2O_DRY_RUN:-$DRY_RUN}"
ONESHOT="${D2O_ONESHOT:-$ONESHOT}"
PM_BIN="${D2O_PM_BIN:-$PM_BIN}"
COMPILE_BIN="${D2O_COMPILE_BIN:-$COMPILE_BIN}"
POLL_INTERVAL="${D2O_POLL_INTERVAL:-$POLL_INTERVAL}"
START_DELAY_CYCLES="${D2O_START_DELAY_CYCLES:-$START_DELAY_CYCLES}"
MAX_CYCLES="${D2O_MAX_CYCLES:-$MAX_CYCLES}"

STATE_FILE="$WORKDIR/state.tsv"
QUEUE_FILE="$WORKDIR/queue.tsv"
RUNNING_FILE="$WORKDIR/running.tsv"
COUNTER_FILE="$WORKDIR/counters.tsv"
LOG_FILE="$WORKDIR/dex2oat-boost.log"
ORIG_PROPS="$WORKDIR/orig_props.txt"
CPU_PREV="$WORKDIR/cpu_prev"
TMP="$WORKDIR/tmp"

mkdir -p "$WORKDIR" "$TMP" 2>/dev/null

countdown=0
_log_n=0

log() {
    _log_n=$((_log_n + 1))
    if [ $((_log_n % 20)) -eq 0 ] && [ -f "$LOG_FILE" ] && [ "$(wc -c < "$LOG_FILE" 2>/dev/null)" -ge "$MAX_LOG_BYTES" ] 2>/dev/null; then
        tail -n "$LOG_KEEP_LINES" "$LOG_FILE" > "$LOG_FILE.rot" 2>/dev/null && mv "$LOG_FILE.rot" "$LOG_FILE"
    fi
    printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >> "$LOG_FILE" 2>/dev/null
}

find_resetprop() {
    for _c in /data/adb/ksu/bin/resetprop /data/adb/magisk/resetprop; do
        [ -x "$_c" ] && { printf '%s\n' "$_c"; return 0; }
    done
    command -v resetprop 2>/dev/null
}
RESETPROP="$(find_resetprop 2>/dev/null)"

set_prop() {
    if [ -n "$RESETPROP" ]; then
        "$RESETPROP" -n "$1" "$2" 2>/dev/null
    else
        setprop "$1" "$2" 2>/dev/null
    fi
}

apply_downgrade() {
    [ "$DOWNGRADE_ENABLE" = "1" ] || return 0
    [ "$DRY_RUN" = "1" ] && return 0
    for _r in $DOWNGRADE_REASONS; do
        _k="pm.dexopt.$_r"
        grep -q "^$_k=" "$ORIG_PROPS" 2>/dev/null || printf '%s=%s\n' "$_k" "$(getprop "$_k" 2>/dev/null)" >> "$ORIG_PROPS" 2>/dev/null
        set_prop "$_k" "$INSTALL_FILTER"
    done
}

is_valid_pkg() {
    case "$1" in ''|*[!A-Za-z0-9_.]*) return 1 ;; esac
    case "$1" in *.*) return 0 ;; esac
    return 1
}

emit_key() {
    KEY="${2#"$1"/}"
    _nm="${KEY##*/}"
    case "$_nm" in *-*) ;; *) return 1 ;; esac
    is_valid_pkg "${_nm%%-*}" || return 1
}

scan_app_root() {
    _root="$1"
    [ -d "$_root" ] || return 1
    for _top in "$_root"/*; do
        [ -d "$_top" ] || continue
        case "${_top##*/}" in
            '~~'*)
                for _pd in "$_top"/*; do
                    [ -d "$_pd" ] || continue
                    emit_key "$_root" "$_pd" && printf '%s\n' "$KEY"
                done
                ;;
            *-*)
                emit_key "$_root" "$_top" && printf '%s\n' "$KEY"
                ;;
        esac
    done
}

write_state_file() {
    cmp -s "$1" "$STATE_FILE" 2>/dev/null && return 0
    mv "$1" "$STATE_FILE"
}

queue_has() { [ -f "$QUEUE_FILE" ] && grep -F -x -q -- "$1" "$QUEUE_FILE" 2>/dev/null; }
queue_remove() { grep -F -x -v -- "$1" "$QUEUE_FILE" > "$TMP/q" 2>/dev/null; mv "$TMP/q" "$QUEUE_FILE"; }
queue_rotate() {
    [ "$(wc -l < "$QUEUE_FILE" 2>/dev/null)" -gt 1 ] 2>/dev/null || return 0
    _first="$(head -n 1 "$QUEUE_FILE")"
    sed '1d' "$QUEUE_FILE" > "$TMP/q" 2>/dev/null
    printf '%s\n' "$_first" >> "$TMP/q"
    mv "$TMP/q" "$QUEUE_FILE"
}
running_has() {
    [ -f "$RUNNING_FILE" ] && awk -v k="$1" '$2==k{f=1} END{exit !f}' "$RUNNING_FILE" 2>/dev/null
}
running_count() {
    if [ -s "$RUNNING_FILE" ]; then wc -l < "$RUNNING_FILE" | tr -d ' '; else echo 0; fi
}

counter_get() { awk -v t="$1" -v k="$2" '$1==t && $2==k{print $3; exit}' "$COUNTER_FILE" 2>/dev/null; }
counter_set() {
    awk -v t="$1" -v k="$2" '!($1==t && $2==k)' "$COUNTER_FILE" > "$TMP/c" 2>/dev/null
    printf '%s %s %s\n' "$1" "$2" "$3" >> "$TMP/c"
    mv "$TMP/c" "$COUNTER_FILE"
}
counter_clear() {
    [ -f "$COUNTER_FILE" ] || return 0
    awk -v k="$1" '$2!=k' "$COUNTER_FILE" > "$TMP/c" 2>/dev/null && mv "$TMP/c" "$COUNTER_FILE"
}

cpu_load_pct() {
    _cur="$TMP/cpu_cur"
    awk '/^cpu[0-9]+ /{t=0; for(i=2;i<=11;i++) t+=$i; print substr($1,4)+0, t, $5+$6}' /proc/stat > "$_cur" 2>/dev/null || return 1
    [ -s "$_cur" ] || return 1
    [ -s "$CPU_PREV" ] || { mv "$_cur" "$CPU_PREV"; return 1; }
    _pct="$(awk -v spec="$CPU_CORE_SET" '
        function hit(k,   a) {
            if (spec == "") return 1
            if (index(spec, "-")) { split(spec, a, "-"); return k+0 >= a[1]+0 && k+0 <= a[2]+0 }
            return k+0 == spec+0
        }
        NR==FNR { pt[$1]=$2; pi[$1]=$3; next }
        { if (!($1 in pt)) next; dt=$2-pt[$1]; di=$3-pi[$1]; if (dt<=0) next
          ta+=dt; ia+=di; if (hit($1)) { ts+=dt; is+=di } }
        END { if (spec != "" && ts > 0) printf "%d\n", (ts-is)*100/ts; else if (ta > 0) printf "%d\n", (ta-ia)*100/ta }
    ' "$CPU_PREV" "$_cur" 2>/dev/null)"
    mv "$_cur" "$CPU_PREV" 2>/dev/null
    [ -n "$_pct" ] && printf '%s\n' "$_pct"
}

is_ready() {
    case "$("$PM_BIN" path "$1" 2>/dev/null)" in
        *"/$2/"*) return 0 ;;
    esac
    return 1
}

reap_jobs() {
    [ -s "$RUNNING_FILE" ] || return 0
    : > "$TMP/running.new"
    while read -r _pid _key _out _fail; do
        [ -n "$_pid" ] || continue
        [ -n "$_fail" ] || _fail=0
        if [ ! -f "$_out.rc" ]; then
            printf '%s %s %s %s\n' "$_pid" "$_key" "$_out" "$_fail" >> "$TMP/running.new"
            continue
        fi
        _rc=1
        read -r _rc < "$_out.rc" 2>/dev/null
        _leaf="${_key##*/}"
        _pkg="${_leaf%%-*}"
        if [ "$_rc" = "0" ] || grep -q Success "$_out" 2>/dev/null; then
            log "$_pkg $RECOMPILE_FILTER"
            counter_clear "$_key"
        else
            _fail=$((_fail + 1))
            if [ "$_fail" -ge "$COMPILE_RETRY_MAX" ]; then
                log "$_pkg $RECOMPILE_FILTER fail"
                counter_clear "$_key"
            else
                counter_set fail "$_key" "$_fail"
                queue_has "$_key" || printf '%s\n' "$_key" >> "$QUEUE_FILE"
            fi
        fi
        rm -f "$_out" "$_out.rc"
    done < "$RUNNING_FILE"
    mv "$TMP/running.new" "$RUNNING_FILE" 2>/dev/null
}

start_one() {
    [ -s "$QUEUE_FILE" ] || return 0
    _key="$(head -n 1 "$QUEUE_FILE")"
    [ -n "$_key" ] || return 0
    _leaf="${_key##*/}"
    _pkg="${_leaf%%-*}"

    if [ "$READY_CHECK" = "1" ] && ! is_ready "$_pkg" "$_leaf"; then
        _c="$(counter_get wait "$_key")"; _c=$(( ${_c:-0} + 1 ))
        if [ "$_c" -ge "$PENDING_MAX_CYCLES" ]; then
            queue_remove "$_key"; counter_clear "$_key"
        else
            counter_set wait "$_key" "$_c"
            queue_rotate
        fi
        return 0
    fi

    queue_remove "$_key"
    counter_set wait "$_key" 0

    _mode="compile -m $RECOMPILE_FILTER"
    [ "$RECOMPILE_FORCE" = "1" ] && _mode="$_mode -f"

    if [ "$DRY_RUN" = "1" ]; then
        log "$_pkg $RECOMPILE_FILTER"
        return 0
    fi

    _out="$TMP/job.$$.$(date +%s).out"
    ( $COMPILE_BIN $_mode "$_pkg" > "$_out" 2>&1; echo $? > "$_out.rc" ) &
    printf '%s %s %s %s\n' "$!" "$_key" "$_out" "$(counter_get fail "$_key")" >> "$RUNNING_FILE"
}

compile_phase() {
    reap_jobs
    [ -s "$QUEUE_FILE" ] || return 0
    _run="$(running_count)"
    [ "$_run" -ge "$MAX_PARALLEL" ] && return 0
    if [ "$_run" -gt 0 ]; then
        _load="$(cpu_load_pct)" || return 0
        [ "$_load" -lt "$CPU_LOAD_THRESHOLD" ] || return 0
    fi
    start_one
}

one_cycle() {
    scan_app_root "$APP_ROOT" > "$TMP/cur.keys" 2>/dev/null
    [ -s "$TMP/cur.keys" ] || return 0

    if ! [ -s "$STATE_FILE" ]; then
        write_state_file "$TMP/cur.keys"
        return 0
    fi

    if ! cmp -s "$TMP/cur.keys" "$STATE_FILE"; then
        : > "$TMP/new.keys"; : > "$TMP/keep.keys"
        awk -v nf="$TMP/new.keys" -v kf="$TMP/keep.keys" '
            NR==FNR { st[$0]=1; next }
            { if ($0 in st) print > kf; else print > nf }
        ' "$STATE_FILE" "$TMP/cur.keys"

        if [ -s "$TMP/new.keys" ]; then
            _added=0
            while IFS= read -r _key; do
                [ -n "$_key" ] || continue
                queue_has "$_key" && continue
                running_has "$_key" && continue
                printf '%s\n' "$_key" >> "$QUEUE_FILE"
                _leaf="${_key##*/}"
                log "${_leaf%%-*} $INSTALL_FILTER"
                _added=$((_added + 1))
            done < "$TMP/new.keys"
            [ "$_added" -gt 0 ] && countdown=$START_DELAY_CYCLES
            cat "$TMP/new.keys" >> "$TMP/keep.keys"
        fi

        write_state_file "$TMP/keep.keys"
    fi

    if [ "$countdown" -gt 0 ]; then
        countdown=$((countdown - 1))
        if [ "$countdown" -gt 0 ]; then
            reap_jobs
            return 0
        fi
    fi
    compile_phase
    return 0
}

requeue_running() {
    [ -s "$RUNNING_FILE" ] || return 0
    while read -r _pid _key _out _fail; do
        [ -n "$_key" ] || continue
        grep -F -x -q -- "$_key" "$QUEUE_FILE" 2>/dev/null || printf '%s\n' "$_key" >> "$QUEUE_FILE"
        rm -f "$_out" "$_out.rc" 2>/dev/null
    done < "$RUNNING_FILE"
    : > "$RUNNING_FILE"
}

requeue_running
apply_downgrade
_cycles=0
while true; do
    one_cycle
    _cycles=$((_cycles + 1))
    [ "$MAX_CYCLES" -gt 0 ] && [ "$_cycles" -ge "$MAX_CYCLES" ] && break
    [ "$ONESHOT" = "1" ] && break
    sleep "$POLL_INTERVAL"
done
