#!/system/bin/sh
# dex2oat-boost 守护进程
# ① 7 个 pm.dexopt.* = skip；② 轮询 /data/app，新装倒计时 3 周期后 compile -m speed
# ③ 每周期按 CPU 4-7 负载决定是否并行（上限 MAX_PARALLEL）
# 持久状态与临时文件在模块 bin/，日志在 /cache/。

MODDIR="${1:-}"
if [ -z "$MODDIR" ]; then
    _self="${0%/*}"
    MODDIR="${_self%/*}"
fi
[ -n "$MODDIR" ] || MODDIR="."

POLL_INTERVAL=5
APP_ROOT=/data/app
WORKDIR="$MODDIR/bin"
CACHE_DIR=/cache
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
CACHE_DIR="${D2O_CACHE_DIR:-$CACHE_DIR}"
DRY_RUN="${D2O_DRY_RUN:-$DRY_RUN}"
ONESHOT="${D2O_ONESHOT:-$ONESHOT}"
PM_BIN="${D2O_PM_BIN:-$PM_BIN}"
COMPILE_BIN="${D2O_COMPILE_BIN:-$COMPILE_BIN}"
POLL_INTERVAL="${D2O_POLL_INTERVAL:-$POLL_INTERVAL}"
START_DELAY_CYCLES="${D2O_START_DELAY_CYCLES:-$START_DELAY_CYCLES}"
MAX_CYCLES="${D2O_MAX_CYCLES:-$MAX_CYCLES}"

STATE_FILE="$WORKDIR/state.tsv"
QUEUE_FILE="$WORKDIR/queue.tsv"
LOG_FILE="$CACHE_DIR/dex2oat-boost.log"
TMP="$WORKDIR/.tmp"

mkdir -p "$WORKDIR" 2>/dev/null
rm -rf "$TMP" 2>/dev/null
mkdir -p "$TMP" 2>/dev/null

countdown=0
_log_n=0
_jobn=0
RUNNING=""
CPU_PREV=""
STATE_STR=""

log_at() {
    _log_n=$((_log_n + 1))
    if [ $((_log_n % 20)) -eq 0 ] && [ -f "$LOG_FILE" ] && [ "$(wc -c < "$LOG_FILE" 2>/dev/null)" -ge "$MAX_LOG_BYTES" ] 2>/dev/null; then
        tail -n "$LOG_KEEP_LINES" "$LOG_FILE" > "$LOG_FILE.rot" 2>/dev/null && mv "$LOG_FILE.rot" "$LOG_FILE"
    fi
    printf '%s %s\n' "$1" "$2" >> "$LOG_FILE" 2>/dev/null
}
log() { log_at "$(date '+%d %H:%M:%S')" "$*"; }

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
    _n=0; _ok=0
    for _r in $DOWNGRADE_REASONS; do
        _k="pm.dexopt.$_r"
        _old="$(getprop "$_k" 2>/dev/null)"
        grep -q " orig $_k=" "$LOG_FILE" 2>/dev/null || log "orig $_k=$_old"
        set_prop "$_k" "$INSTALL_FILTER"
        _n=$((_n + 1))
        [ "$(getprop "$_k" 2>/dev/null)" = "$INSTALL_FILTER" ] && _ok=$((_ok + 1))
    done
    if [ "$_ok" = "$_n" ]; then
        log "设置 $INSTALL_FILTER 完成（$_ok/$_n）"
    else
        log "设置 $INSTALL_FILTER 失败（$_ok/$_n）"
    fi
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

queue_has() { [ -f "$QUEUE_FILE" ] && awk -v k="$1" '$1==k{f=1} END{exit !f}' "$QUEUE_FILE" 2>/dev/null; }
queue_remove() {
    [ -f "$QUEUE_FILE" ] || return 0
    awk -v k="$1" '$1!=k' "$QUEUE_FILE" > "$TMP/q" 2>/dev/null && mv "$TMP/q" "$QUEUE_FILE"
}
queue_set() {
    awk -v k="$1" '$1!=k' "$QUEUE_FILE" > "$TMP/q" 2>/dev/null
    printf '%s %s %s\n' "$1" "$2" "$3" >> "$TMP/q"
    mv "$TMP/q" "$QUEUE_FILE"
}
queue_field() { awk -v k="$1" -v f="$2" '$1==k{print $f; exit}' "$QUEUE_FILE" 2>/dev/null; }

running_has() {
    for _r in $RUNNING; do
        case "$_r" in *"|$1|"*) return 0 ;; esac
    done
    return 1
}

cpu_load_pct() {
    _cur="$(awk '/^cpu[0-9]+ /{t=0; for(i=2;i<=11;i++) t+=$i; print substr($1,4)+0, t, $5+$6}' /proc/stat 2>/dev/null)"
    [ -n "$_cur" ] || return 1
    if [ -z "$CPU_PREV" ]; then
        CPU_PREV="$_cur"
        return 1
    fi
    _pct="$(awk -v prev="$CPU_PREV" -v cur="$_cur" -v spec="$CPU_CORE_SET" '
        function hit(k,   a) {
            if (spec == "") return 1
            if (index(spec, "-")) { split(spec, a, "-"); return k+0 >= a[1]+0 && k+0 <= a[2]+0 }
            return k+0 == spec+0
        }
        BEGIN {
            n=split(prev, P, "\n")
            for (i=1; i<=n; i++) { split(P[i], f, " "); pt[f[1]]=f[2]; pi[f[1]]=f[3] }
            m=split(cur, C, "\n")
            for (i=1; i<=m; i++) {
                split(C[i], g, " ")
                if (!(g[1] in pt)) continue
                dt=g[2]-pt[g[1]]; di=g[3]-pi[g[1]]
                if (dt <= 0) continue
                ta+=dt; ia+=di
                if (hit(g[1])) { ts+=dt; is+=di }
            }
            if (spec != "" && ts > 0) printf "%d\n", (ts-is)*100/ts
            else if (ta > 0) printf "%d\n", (ta-ia)*100/ta
        }' 2>/dev/null)"
    CPU_PREV="$_cur"
    [ -n "$_pct" ] || return 1
    printf '%s\n' "$_pct"
}

is_ready() {
    case "$("$PM_BIN" path "$1" 2>/dev/null)" in
        *"/$2/"*) return 0 ;;
    esac
    return 1
}

reap_jobs() {
    [ -n "$RUNNING" ] || return 0
    _keep=""
    for _r in $RUNNING; do
        _pid="${_r%%|*}"
        _rest="${_r#*|}"
        _key="${_rest%%|*}"
        _rcf="${_rest#*|}"
        if [ ! -f "$_rcf" ]; then
            _keep="$_keep $_r"
            continue
        fi
        _rc=1; _td=""; _tt=""
        read -r _rc _td _tt < "$_rcf" 2>/dev/null
        rm -f "$_rcf"
        _ts="$_td $_tt"
        [ -n "$_td" ] || _ts="$(date '+%d %H:%M:%S')"
        _leaf="${_key##*/}"
        _pkg="${_leaf%%-*}"
        if [ "$_rc" = "0" ]; then
            log_at "$_ts" "$_pkg $RECOMPILE_FILTER"
            queue_remove "$_key"
        else
            _f="$(queue_field "$_key" 3)"; _f=$(( ${_f:-0} + 1 ))
            if [ "$_f" -ge "$COMPILE_RETRY_MAX" ]; then
                log_at "$_ts" "$_pkg $RECOMPILE_FILTER fail"
                queue_remove "$_key"
            else
                _w="$(queue_field "$_key" 2)"; [ -n "$_w" ] || _w=0
                queue_set "$_key" "$_w" "$_f"
            fi
        fi
    done
    RUNNING="$_keep"
}

start_one() {
    [ -s "$QUEUE_FILE" ] || return 0
    _pick=""
    while read -r _k _w _f; do
        [ -n "$_k" ] || continue
        running_has "$_k" && continue
        _leaf="${_k##*/}"
        _pkg="${_leaf%%-*}"
        if [ "$READY_CHECK" = "1" ] && ! is_ready "$_pkg" "$_leaf"; then
            _w=$(( ${_w:-0} + 1 ))
            if [ "$_w" -ge "$PENDING_MAX_CYCLES" ]; then
                queue_remove "$_k"
            else
                queue_set "$_k" "$_w" "${_f:-0}"
            fi
            continue
        fi
        _pick="$_k"
        break
    done < "$QUEUE_FILE"
    [ -n "$_pick" ] || return 0

    _leaf="${_pick##*/}"
    _pkg="${_leaf%%-*}"
    _mode="compile -m $RECOMPILE_FILTER"
    [ "$RECOMPILE_FORCE" = "1" ] && _mode="$_mode -f"

    log "$_pkg dex2oat"

    if [ "$DRY_RUN" = "1" ]; then
        log "$_pkg $RECOMPILE_FILTER"
        queue_remove "$_pick"
        return 0
    fi

    _jobn=$((_jobn + 1))
    _rcf="$TMP/job.$_jobn.rc"
    ( $COMPILE_BIN $_mode "$_pkg" > /dev/null 2>&1; _r=$?; echo "$_r $(date '+%d %H:%M:%S')" > "$_rcf" ) &
    RUNNING="$RUNNING $!|$_pick|$_rcf"
}

compile_phase() {
    reap_jobs
    [ -s "$QUEUE_FILE" ] || return 0
    set -- $RUNNING
    [ $# -ge "$MAX_PARALLEL" ] && return 0
    if [ $# -gt 0 ]; then
        _load="$(cpu_load_pct)" || return 0
        [ "$_load" -lt "$CPU_LOAD_THRESHOLD" ] || return 0
    fi
    start_one
}

one_cycle() {
    _cur="$(scan_app_root "$APP_ROOT" 2>/dev/null)"
    [ -n "$_cur" ] || return 0

    if [ -z "$STATE_STR" ]; then
        if [ ! -s "$STATE_FILE" ]; then
            STATE_STR="$_cur"
            printf '%s\n' "$STATE_STR" > "$STATE_FILE" 2>/dev/null
            return 0
        fi
        STATE_STR="$(cat "$STATE_FILE" 2>/dev/null)"
    fi

    if [ "$_cur" != "$STATE_STR" ]; then
        _new="$(awk -v cur="$_cur" -v st="$STATE_STR" '
            BEGIN {
                n=split(st, L, "\n"); for (i=1; i<=n; i++) if (L[i] != "") s[L[i]]=1
                m=split(cur, C, "\n"); for (i=1; i<=m; i++) if (C[i] != "" && !(C[i] in s)) print C[i]
            }' 2>/dev/null)"
        if [ -n "$_new" ]; then
            _added=0
            while IFS= read -r _key; do
                [ -n "$_key" ] || continue
                queue_has "$_key" && continue
                running_has "$_key" && continue
                printf '%s 0 0\n' "$_key" >> "$QUEUE_FILE"
                _added=$((_added + 1))
            done <<EOF
$_new
EOF
            [ "$_added" -gt 0 ] && countdown=$START_DELAY_CYCLES
        fi
        STATE_STR="$_cur"
        printf '%s\n' "$STATE_STR" > "$STATE_FILE" 2>/dev/null
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

apply_downgrade
_cycles=0
while true; do
    one_cycle
    _cycles=$((_cycles + 1))
    [ "$MAX_CYCLES" -gt 0 ] && [ "$_cycles" -ge "$MAX_CYCLES" ] && break
    [ "$ONESHOT" = "1" ] && break
    sleep "$POLL_INTERVAL"
done
