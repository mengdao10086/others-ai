#!/system/bin/sh
# dex2oat-boost 守护进程（纯 root，不依赖 LSPosed）
#
# 每 POLL_INTERVAL 秒轮询 APP_ROOT（默认 /data/app）：
#   · 首次运行只建立基线（把当前所有包目录记入 state.tsv），绝不编译任何既有应用；
#   · 之后只处理「新增/变更」的包目录（当前有、基线里没有）：
#       1) 用 pm 确认该目录确为包「当前」的代码路径（就绪判定，避免编译到升级前的旧版本）；
#       2) 执行 cmd package compile -m speed -f <包名>，成功后才写回基线；失败按退避重试。
#
# 用法：由 ../service.sh 启动；也可手动 `sh bin/dex2oat-boost-daemon.sh <模块目录>`。
# 测试用环境变量（前缀 D2O_）可覆盖配置：D2O_APP_ROOT / D2O_WORKDIR / D2O_DRY_RUN /
#   D2O_ONESHOT / D2O_PM_BIN / D2O_COMPILE_BIN。

MODDIR="${1:-}"
if [ -z "$MODDIR" ]; then
    _self="${0%/*}"
    MODDIR="${_self%/*}"
fi
[ -n "$MODDIR" ] || MODDIR="."

# ---- 默认配置（可被 $MODDIR/config.prop 覆盖）----
POLL_INTERVAL=5
APP_ROOT=/data/app
WORKDIR=/data/adb/dex2oat-boost
INSTALL_FILTER=verify
RECOMPILE_FILTER=speed
DOWNGRADE_ENABLE=1
DOWNGRADE_REASONS="install install-fast"
COMPILE_RETRY_MAX=6
PENDING_MAX_CYCLES=120
MAX_LOG_BYTES=262144
LOG_KEEP_LINES=400
DRY_RUN=0
ONESHOT=0
PM_BIN=pm
COMPILE_BIN="cmd package"

CONFIG="$MODDIR/config.prop"
if [ -f "$CONFIG" ]; then
    . "$CONFIG"
fi

# ---- 测试覆盖（环境变量优先于 config.prop）----
APP_ROOT="${D2O_APP_ROOT:-$APP_ROOT}"
WORKDIR="${D2O_WORKDIR:-$WORKDIR}"
DRY_RUN="${D2O_DRY_RUN:-$DRY_RUN}"
ONESHOT="${D2O_ONESHOT:-$ONESHOT}"
PM_BIN="${D2O_PM_BIN:-$PM_BIN}"
COMPILE_BIN="${D2O_COMPILE_BIN:-$COMPILE_BIN}"

STATE_FILE="$WORKDIR/state.tsv"
PENDING_FILE="$WORKDIR/pending.tsv"
LOG_FILE="$WORKDIR/dex2oat-boost.log"
ORIG_PROPS="$WORKDIR/orig_props.txt"
TMP="$WORKDIR/tmp"

mkdir -p "$WORKDIR" "$TMP" 2>/dev/null

# ---- 日志（带体积上限轮转，避免无限增长）----
log() {
    if [ -f "$LOG_FILE" ]; then
        _sz="$(wc -c < "$LOG_FILE" 2>/dev/null)"
    else
        _sz=0
    fi
    [ -n "$_sz" ] || _sz=0
    if [ "$_sz" -ge "$MAX_LOG_BYTES" ]; then
        tail -n "$LOG_KEEP_LINES" "$LOG_FILE" > "$LOG_FILE.rot" 2>/dev/null && mv "$LOG_FILE.rot" "$LOG_FILE"
    fi
    printf '%s %s\n' "$(date '+%Y-%m-%d %H:%M:%S')" "$*" >> "$LOG_FILE" 2>/dev/null
}

# ---- 属性写入：优先 resetprop，其次 setprop ----
find_resetprop() {
    for _c in /data/adb/ksu/bin/resetprop /data/adb/magisk/resetprop; do
        [ -x "$_c" ] && { printf '%s\n' "$_c"; return 0; }
    done
    command -v resetprop 2>/dev/null
}
RESETPROP="$(find_resetprop 2>/dev/null)"

# 写入属性。优先 resetprop 直写属性区（-n / --skip-svc：跳过 property_service，
# 不受 SELinux 对 pm_prop 的 set 约束）；无 resetprop 时退 setprop（走 property_service）。
# 理由：pm.dexopt.<reason> 由 ART/PMS 每次 dexopt 现读 /system 属性区，故只需属性区值被改到；
#       resetprop -n 不触发 property change 广播，对「现读」语义没有影响。
set_prop() {
    if [ -n "$RESETPROP" ]; then
        "$RESETPROP" -n "$1" "$2" 2>>"$LOG_FILE"
    else
        setprop "$1" "$2" 2>>"$LOG_FILE"
    fi
}

# 记录原值 + 把 DOWNGRADE_REASONS 里的每个 pm.dexopt.<reason> 置为 INSTALL_FILTER
apply_downgrade() {
    [ "$DOWNGRADE_ENABLE" = "1" ] || { log "降档属性已禁用（DOWNGRADE_ENABLE=0），跳过"; return 0; }
    if [ "$DRY_RUN" = "1" ]; then
        log "[DRY] 跳过属性设置；将写入：$(for _r in $DOWNGRADE_REASONS; do printf 'pm.dexopt.%s=%s ' "$_r" "$INSTALL_FILTER"; done)"
        return 0
    fi
    for _r in $DOWNGRADE_REASONS; do
        _k="pm.dexopt.$_r"
        _old="$(getprop "$_k" 2>/dev/null)"
        if ! grep -q "^$_k=" "$ORIG_PROPS" 2>/dev/null; then
            printf '%s=%s\n' "$_k" "$_old" >> "$ORIG_PROPS" 2>/dev/null
        fi
        if [ "$_old" = "$INSTALL_FILTER" ]; then
            log "属性 $_k 已是 $INSTALL_FILTER，无需修改"
            continue
        fi
        set_prop "$_k" "$INSTALL_FILTER"
        _new="$(getprop "$_k" 2>/dev/null)"
        if [ "$_new" = "$INSTALL_FILTER" ]; then
            log "属性 $_k：$_old -> $_new"
        else
            log "属性 $_k 设置失败（当前 '$_new'，目标 '$INSTALL_FILTER'）"
        fi
    done
}

# ---- 包名合法性：只允许 [A-Za-z0-9_.]，须含点，无首尾点/连续点 ----
is_valid_pkg() {
    _p="$1"
    [ -n "$_p" ] || return 1
    case "$_p" in
        .*|*.) return 1 ;;
        *..*) return 1 ;;
        *[!A-Za-z0-9_.]*) return 1 ;;
        *.*) return 0 ;;
        *) return 1 ;;
    esac
}

# 由包目录名 <pkg>-<hash> 取「相对 APP_ROOT 的路径」作为去重键。
# 包名不含 '-'，故取第一个 '-' 之前的部分即包名（hash 可能为 URL-safe base64，含 '-'）。
emit_key() {
    _root="$1"; _dir="$2"
    _name="${_dir##*/}"
    case "$_name" in
        *-*) ;;
        *) return 1 ;;
    esac
    _pkg="${_name%%-*}"
    is_valid_pkg "$_pkg" || return 1
    printf '%s\n' "${_dir#"$_root"/}"
    return 0
}

# 扫描 APP_ROOT，逐行输出去重键；无有效条目返回 1。
# 兼容两种布局：/data/app/~~<b64>==/<pkg>-<hash>/ 与 /data/app/<pkg>-<hash>/。
scan_app_root() {
    _root="$1"
    [ -d "$_root" ] || return 1
    _n=0
    _buf=""
    for _top in "$_root"/*; do
        [ -d "$_top" ] || continue
        _tb="${_top##*/}"
        case "$_tb" in
            '~~'*)
                for _pd in "$_top"/*; do
                    [ -d "$_pd" ] || continue
                    _k="$(emit_key "$_root" "$_pd" 2>/dev/null)" || continue
                    [ -n "$_k" ] || continue
                    _buf="${_buf}${_k}
"
                    _n=$((_n + 1))
                done
                ;;
            *-*)
                _k="$(emit_key "$_root" "$_top" 2>/dev/null)" || continue
                [ -n "$_k" ] || continue
                _buf="${_buf}${_k}
"
                _n=$((_n + 1))
                ;;
        esac
    done
    [ "$_n" -gt 0 ] || return 1
    printf '%s' "$_buf"
    return 0
}

# ---- 退避计数：wait=未就绪；fail=编译失败 ----
pending_get() {
    _v=""
    if [ -f "$PENDING_FILE" ]; then
        _v="$(awk -v t="$1" -v k="$2" '$1==t && $2==k {print $3; exit}' "$PENDING_FILE" 2>/dev/null)"
    fi
    printf '%s' "${_v:-0}"
}
pending_set() {
    awk -v t="$1" -v k="$2" '!($1==t && $2==k)' "$PENDING_FILE" > "$TMP/pending" 2>/dev/null
    printf '%s %s %s\n' "$1" "$2" "$3" >> "$TMP/pending"
    mv "$TMP/pending" "$PENDING_FILE"
}
pending_del() {
    [ -f "$PENDING_FILE" ] || return 0
    awk -v t="$1" -v k="$2" '!($1==t && $2==k)' "$PENDING_FILE" > "$TMP/pending" 2>/dev/null && mv "$TMP/pending" "$PENDING_FILE"
}

# ---- 编译单个包 ----
compile_pkg() {
    _pkg="$1"
    if [ "$DRY_RUN" = "1" ]; then
        log "[DRY] 将执行：$COMPILE_BIN compile -m $RECOMPILE_FILTER -f $_pkg"
        return 0
    fi
    _out="$($COMPILE_BIN compile -m "$RECOMPILE_FILTER" -f "$_pkg" 2>&1)"
    _rc=$?
    case "$_out" in
        *Success*) log "compile $_pkg：$_out"; return 0 ;;
    esac
    if [ "$_rc" -eq 0 ]; then
        log "compile $_pkg（rc=0）：$_out"
        return 0
    fi
    log "compile $_pkg 失败（rc=$_rc）：$_out"
    return 1
}

# ---- 处理单个候选键 ----
process_key() {
    _key="$1"
    _leaf="${_key##*/}"
    _pkg="${_leaf%%-*}"
    _pp="$("$PM_BIN" path "$_pkg" 2>/dev/null | head -n 1)"
    case "$_pp" in
        *"/$_leaf/"*)
            : ;;   # 已就绪：pm 报告的代码路径正指向本目录
        *)
            _c="$(pending_get wait "$_key")"; _c=$((_c + 1))
            if [ "$_c" -ge "$PENDING_MAX_CYCLES" ]; then
                log "放弃 $_pkg：等待 $_c 轮仍未就绪（pm 未指向 $_leaf）"
                printf '%s\n' "$_key" >> "$TMP/added"
                pending_del wait "$_key"
            else
                pending_set wait "$_key" "$_c"
                log "等待就绪 $_pkg（第 $_c 轮，pm 路径未指向 $_leaf）"
            fi
            return 0
            ;;
    esac
    if compile_pkg "$_pkg"; then
        log "已重编译 $_pkg -> $RECOMPILE_FILTER（$_leaf）"
        printf '%s\n' "$_key" >> "$TMP/added"
        pending_del wait "$_key"
        pending_del fail "$_key"
    else
        _c="$(pending_get fail "$_key")"; _c=$((_c + 1))
        if [ "$_c" -ge "$COMPILE_RETRY_MAX" ]; then
            log "放弃重编译 $_pkg（已尝试 $_c 次）"
            printf '%s\n' "$_key" >> "$TMP/added"
            pending_del fail "$_key"
        else
            pending_set fail "$_key" "$_c"
            log "重编译 $_pkg 失败（第 $_c 次），下轮重试"
        fi
    fi
    return 0
}

# 基线是否可用：存在、非空、且至少含一行有效键（键必含 '-'）。
# 空文件 / 仅空行 / 无有效键 → 视为无效，走「首次建基线」分支，绝不重编译既有包。
state_ok() {
    [ -f "$STATE_FILE" ] || return 1
    [ -s "$STATE_FILE" ] || return 1
    grep -q -- '-' "$STATE_FILE" 2>/dev/null || return 1
    return 0
}

# 原子写入基线，且仅当内容变化时才落盘（避免每轮无条件重写 state 造成的持续 flash 磨损）。
write_state() {
    _content="$(printf '%s\n' "$1" | grep -v '^$')"
    if [ -f "$STATE_FILE" ] && [ "$_content" = "$(cat "$STATE_FILE" 2>/dev/null)" ]; then
        return 0
    fi
    printf '%s\n' "$_content" > "$STATE_FILE.tmp" 2>/dev/null && mv "$STATE_FILE.tmp" "$STATE_FILE"
}

# ---- 单轮：扫描 → 建基线 / 找新增 → 处理 → 回写基线 ----
one_cycle() {
    _cur="$(scan_app_root "$APP_ROOT" 2>/dev/null)"
    if [ -z "$_cur" ]; then
        log "扫描 $APP_ROOT 失败或无包目录，跳过本轮（不改动基线）"
        return 0
    fi

    # 基线不存在 / 为空 / 无有效键 → 视作首次：只建基线，不编译任何既有应用
    if ! state_ok; then
        write_state "$_cur"
        log "首次运行/基线无效：建立基线，记入 $(printf '%s\n' "$_cur" | grep -c -- '-') 项，本次不编译任何包"
        return 0
    fi

    : > "$TMP/added"
    _new="$(printf '%s\n' "$_cur" | grep -F -x -v -f "$STATE_FILE" 2>/dev/null)"
    if [ -n "$_new" ]; then
        printf '%s\n' "$_new" > "$TMP/new.keys"
        while IFS= read -r _key; do
            [ -n "$_key" ] || continue
            process_key "$_key"
        done < "$TMP/new.keys"
    fi

    # 新基线 =（旧基线 ∩ 当前）∪ 本轮成功/放弃的键（自动剪除已卸载的包）；内容不变则不落盘
    _keep="$(printf '%s\n' "$_cur" | grep -F -x -f "$STATE_FILE" 2>/dev/null)"
    if [ -s "$TMP/added" ]; then
        _keep="${_keep}
$(cat "$TMP/added")"
    fi
    write_state "$_keep"

    # 清掉 pending 中已不存在的键（通常 pending 为空，此处不产生写入）
    if [ -s "$PENDING_FILE" ]; then
        _pc=""
        while read -r _t _k _c; do
            [ -n "$_k" ] || continue
            printf '%s\n' "$_cur" | grep -Fxq "$_k" 2>/dev/null && _pc="${_pc}${_t} ${_k} ${_c}
"
        done < "$PENDING_FILE"
        printf '%s' "$_pc" > "$PENDING_FILE.tmp" 2>/dev/null && mv "$PENDING_FILE.tmp" "$PENDING_FILE"
    fi
    return 0
}

# ---- 主循环（单轮内部异常不退出）----
trap 'log "收到终止信号，退出"; exit 0' TERM INT

log "==== dex2oat-boost 守护启动（APP_ROOT=$APP_ROOT，间隔 ${POLL_INTERVAL}s，DRY_RUN=$DRY_RUN，ONESHOT=$ONESHOT）===="
apply_downgrade
while true; do
    one_cycle || log "one_cycle 内部异常，已忽略并继续"
    [ "$ONESHOT" = "1" ] && break
    sleep "$POLL_INTERVAL"
done
log "==== dex2oat-boost 守护退出 ===="
