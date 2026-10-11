#!/bin/sh
# dex2oat-boost（纯 root 版）离线自测
#
# 在 PC 上用 sh 直接运行（Git Bash / Linux 均可），不需要设备。
# 手段：搭一个沙箱 /data/app（假的包目录）+ 一个假 pm，以 DRY_RUN + ONESHOT 运行真实守护脚本，
#       对日志与 state.tsv 做断言。
#
# 用法： sh "测试/dex2oat-boost-magisk测试.sh"
# 输出：脚本同目录 dex2oat-boost-magisk结果.log
#
# 覆盖场景：
#   T0  sh -n 语法检查（全部 sh 脚本）
#   T1  首次运行只建基线，不编译任何既有应用
#   T2  重复轮询同一状态不重复编译
#   T3  新增包目录 → 触发一次编译
#   T4  异常目录名（无 '-'、含 '..'）被跳过
#   T5  就绪门禁：目录已出现但 pm 未指向它 → 只等待、不编译；就绪后才编译
#   T6  覆盖更新（同一包换新目录）→ 视为变更、再触发一次编译
#   T7  状态未变时不再重写 state.tsv（mtime 保持）
#   T8  空 state.tsv → 按首次处理，建基线且不编译既有包（D2 回归）
#   T9  state.tsv 含垃圾行 → 仅真正的新增被编译（健壮性）
#   T10 属性写入走 resetprop -n（直写属性区、跳过 property_service）（D3 回归）

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
MODULE_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
DAEMON="$MODULE_DIR/bin/dex2oat-boost-daemon.sh"
OUT="$SCRIPT_DIR/dex2oat-boost-magisk结果.log"

: > "$OUT" 2>/dev/null || { echo "无法写入 $OUT"; exit 1; }

PASS=0
FAIL=0
say() { printf '%s\n' "$*" | tee -a "$OUT"; }
sect() { say ""; say "================================================================"; say "$*"; say "================================================================"; }
ok() { PASS=$((PASS + 1)); say "  [PASS] $1"; }
bad() { FAIL=$((FAIL + 1)); say "  [FAIL] $1"; }

# ---- T0 语法检查 ----
sect "T0 sh -n 语法检查"
for f in \
    "$MODULE_DIR/service.sh" \
    "$MODULE_DIR/customize.sh" \
    "$MODULE_DIR/uninstall.sh" \
    "$MODULE_DIR/bin/dex2oat-boost-daemon.sh" \
    "$MODULE_DIR/META-INF/com/google/android/update-binary" \
    "$SCRIPT_DIR/dex2oat-boost-magisk测试.sh"
do
    if sh -n "$f" 2>"$SCRIPT_DIR/.syntax.err"; then
        ok "sh -n 通过：${f#$MODULE_DIR/}"
    else
        bad "sh -n 失败：${f#$MODULE_DIR/} → $(cat "$SCRIPT_DIR/.syntax.err")"
    fi
done
rm -f "$SCRIPT_DIR/.syntax.err"

# ---- 沙箱 ----
SANDBOX="$(mktemp -d)"
APP="$SANDBOX/app"
WORK="$SANDBOX/work"
WORK2="$SANDBOX/work2"
WORK3="$SANDBOX/work3"
FAKEBIN="$SANDBOX/bin"
REG="$SANDBOX/registered.txt"
mkdir -p "$WORK" "$WORK2" "$WORK3" "$FAKEBIN"

newdir() { mkdir -p "$APP/~~$1==/$2"; }         # newdir <随机段> <pkg-hash>
register() { printf '%s\n' "$1" >> "$REG"; }    # 让假 pm 认为该包已注册

# 假 pm：只有 registered.txt 里列出的包才报代码路径（模拟「尚未注册」）
cat > "$FAKEBIN/pm" <<'PMEOF'
#!/bin/sh
[ "$1" = "path" ] || exit 1
pkg="$2"
root="${D2O_APP_ROOT:-/data/app}"
reg="${D2O_PM_REG}"
[ -n "$reg" ] && [ -f "$reg" ] || exit 1
grep -Fxq "$pkg" "$reg" || exit 1
for d in "$root"/~~*/*/ ; do
    [ -d "$d" ] || continue
    name="${d%/}"; name="${name##*/}"
    p="${name%%-*}"
    [ "$p" = "$pkg" ] && { echo "package:${d%/}/base.apk"; exit 0; }
done
exit 1
PMEOF
chmod +x "$FAKEBIN/pm"

run_daemon() {  # 主沙箱、DRY_RUN=1、单轮
    D2O_APP_ROOT="$APP" D2O_WORKDIR="$WORK" D2O_DRY_RUN=1 D2O_ONESHOT=1 \
    D2O_PM_BIN="$FAKEBIN/pm" D2O_PM_REG="$REG" \
    sh "$DAEMON" "$MODULE_DIR" >> "$OUT" 2>&1
}
DLOG="$WORK/dex2oat-boost.log"
n_compile() { grep -c '\[DRY\] 将执行' "$DLOG" 2>/dev/null | tr -d ' '; }
n_compile_pkg() { grep -c "\[DRY\] 将执行：cmd package compile -m speed -f $1\$" "$DLOG" 2>/dev/null | tr -d ' '; }
n_state() { wc -l < "$WORK/state.tsv" 2>/dev/null | tr -d ' '; }

sect "T1 首次运行只建基线，不编译"
newdir AAA com.demo.one-abc123
newdir AAA com.demo.two-def456
newdir BBB com.demo.three-ghi789
register com.demo.one; register com.demo.two; register com.demo.three
run_daemon
[ "$(n_compile)" = "0" ] && ok "首次运行编译次数=0" || bad "首次运行发生了 $(n_compile) 次编译（应 0）"
grep -q "建立基线" "$DLOG" && ok "日志含『建立基线』" || bad "日志缺少『建立基线』"
[ "$(n_state)" = "3" ] && ok "state.tsv 记入 3 项" || bad "state.tsv 行数=$(n_state)（应 3）"

sect "T2 重复轮询同一状态不重复编译"
run_daemon
[ "$(n_compile)" = "0" ] && ok "重复轮询后编译次数仍=0" || bad "重复轮询发生了 $(n_compile) 次编译（应 0）"
[ "$(n_state)" = "3" ] && ok "state.tsv 仍为 3 项" || bad "state.tsv 行数=$(n_state)（应 3）"

sect "T3 新增包目录触发一次编译"
newdir CCC com.demo.four-jkl012
register com.demo.four
run_daemon
[ "$(n_compile_pkg com.demo.four)" = "1" ] && ok "com.demo.four 被编译 1 次" || bad "com.demo.four 编译次数=$(n_compile_pkg com.demo.four)（应 1）"
[ "$(n_state)" = "4" ] && ok "state.tsv 增至 4 项" || bad "state.tsv 行数=$(n_state)（应 4）"

sect "T4 异常目录名被跳过"
newdir DDD notapkg            # 无 '-'，无法解析出 <pkg>-<hash>
newdir DDD bad..pkg-hash      # 含 '..'，非法包名
run_daemon
[ "$(n_state)" = "4" ] && ok "异常目录未进基线（仍 4 项）" || bad "state.tsv 行数=$(n_state)（应 4）"
say "    state.tsv 内容："; sed 's/^/      /' "$WORK/state.tsv" | tee -a "$OUT"

sect "T5 就绪门禁：目录已出现但 pm 未指向它"
newdir EEE com.demo.five-mmm345
# 故意不 register com.demo.five
run_daemon
grep -q "等待就绪 com.demo.five" "$DLOG" && ok "记录了『等待就绪 com.demo.five』" || bad "未出现等待就绪日志"
[ "$(n_compile_pkg com.demo.five)" = "0" ] && ok "未就绪时不编译（0 次）" || bad "未就绪却编译了"
[ "$(n_state)" = "4" ] && ok "未就绪不进基线（仍 4 项）" || bad "state.tsv 行数=$(n_state)（应 4）"
# 现在让它就绪
register com.demo.five
run_daemon
[ "$(n_compile_pkg com.demo.five)" = "1" ] && ok "就绪后编译 com.demo.five 1 次" || bad "就绪后编译次数=$(n_compile_pkg com.demo.five)（应 1）"
[ "$(n_state)" = "5" ] && ok "state.tsv 增至 5 项" || bad "state.tsv 行数=$(n_state)（应 5）"

sect "T6 覆盖更新（同一包换新目录）再触发编译"
rm -rf "$APP/~~AAA==/com.demo.one-abc123"
newdir FFF com.demo.one-zzz999
run_daemon
[ "$(n_compile_pkg com.demo.one)" = "1" ] && ok "com.demo.one 更新后编译 1 次" || bad "com.demo.one 编译次数=$(n_compile_pkg com.demo.one)（应 1）"
grep -q 'com.demo.one-zzz999' "$WORK/state.tsv" && ok "基线含新目录 com.demo.one-zzz999" || bad "基线不含新目录"
grep -q 'com.demo.one-abc123' "$WORK/state.tsv" && bad "基线仍含已删除的旧目录" || ok "基线已剔除旧目录 com.demo.one-abc123"

sect "T7 状态未变时不重写 state.tsv"
touch -t 200001010000 "$WORK/state.tsv" 2>/dev/null
run_daemon
_yr="$(date -r "$WORK/state.tsv" '+%Y' 2>/dev/null)"
[ "$_yr" = "2000" ] && ok "无变化的一轮未重写 state.tsv（mtime 保持）" || bad "无变化却重写了 state.tsv（mtime 变 $_yr）"

sect "T8 空 state.tsv → 按首次处理（D2 回归）"
mkdir -p "$WORK2"
: > "$WORK2/state.tsv"     # 故意放一个 0 字节 state
D2O_APP_ROOT="$APP" D2O_WORKDIR="$WORK2" D2O_DRY_RUN=1 D2O_ONESHOT=1 \
D2O_PM_BIN="$FAKEBIN/pm" D2O_PM_REG="$REG" \
sh "$DAEMON" "$MODULE_DIR" >> "$OUT" 2>&1
DLOG2="$WORK2/dex2oat-boost.log"
_c2="$(grep -c '\[DRY\] 将执行' "$DLOG2" 2>/dev/null | tr -d ' ')"
[ "$_c2" = "0" ] && ok "空 state 下不编译任何既有包（0 次）" || bad "空 state 触发了 $_c2 次编译（应 0）"
grep -q "建立基线" "$DLOG2" && ok "空 state 走『建立基线』分支" || bad "空 state 未走建基线分支"

sect "T9 state.tsv 含垃圾行 → 仅真新增被编译"
mkdir -p "$WORK3"
printf '%s\n' '~~GARBAGE==/com.demo.one-abc123' '' 'not a key line' > "$WORK3/state.tsv"
D2O_APP_ROOT="$APP" D2O_WORKDIR="$WORK3" D2O_DRY_RUN=1 D2O_ONESHOT=1 \
D2O_PM_BIN="$FAKEBIN/pm" D2O_PM_REG="$REG" \
sh "$DAEMON" "$MODULE_DIR" >> "$OUT" 2>&1
DLOG3="$WORK3/dex2oat-boost.log"
# com.demo.one-zzz999（当前真实目录）不在垃圾基线里 → 应被编译；其余在基线中的不应重复编译
[ "$(grep -c '\[DRY\] 将执行：cmd package compile -m speed -f com.demo.one$' "$DLOG3" 2>/dev/null | tr -d ' ')" = "1" ] \
    && ok "垃圾基线中缺失的 com.demo.one 被编译 1 次" || bad "com.demo.one 编译次数异常"
grep -q 'not a key line' "$WORK3/state.tsv" && bad "垃圾行仍留在新基线中" || ok "垃圾行已被清理出新基线"

sect "T10 属性写入用 resetprop -n（D3 回归）"
WORK4="$SANDBOX/work4"; mkdir -p "$WORK4"
RP_LOG="$SANDBOX/rp.log"; PROPS="$SANDBOX/props"
: > "$RP_LOG"; : > "$PROPS"
cat > "$FAKEBIN/resetprop" <<'RPEOF'
#!/bin/sh
printf '%s\n' "ARGS:$*" >> "$D2O_RP_LOG"
name=""; value=""
for a in "$@"; do name="$value"; value="$a"; done
[ -n "$name" ] && printf '%s=%s\n' "$name" "$value" >> "$D2O_PROPS"
exit 0
RPEOF
cat > "$FAKEBIN/getprop" <<'GPEOF'
#!/bin/sh
grep "^$1=" "$D2O_PROPS" 2>/dev/null | head -n 1 | cut -d= -f2-
GPEOF
chmod +x "$FAKEBIN/resetprop" "$FAKEBIN/getprop"
PATH="$FAKEBIN:$PATH" D2O_RP_LOG="$RP_LOG" D2O_PROPS="$PROPS" \
D2O_APP_ROOT="$APP" D2O_WORKDIR="$WORK4" D2O_ONESHOT=1 D2O_DRY_RUN=0 \
D2O_PM_BIN="$FAKEBIN/pm" D2O_PM_REG="$REG" \
sh "$DAEMON" "$MODULE_DIR" >> "$OUT" 2>&1
grep -q -- '-n pm.dexopt.install verify' "$RP_LOG" && ok "resetprop 以 -n 直写 pm.dexopt.install=verify" || bad "resetprop 未带 -n（实际：$(cat "$RP_LOG" | tr '\n' '|')）"
grep -q -- '-n pm.dexopt.install-fast verify' "$RP_LOG" && ok "resetprop 以 -n 直写 pm.dexopt.install-fast=verify" || bad "install-fast 未带 -n"

sect "结果"
say "  通过 $PASS 项，失败 $FAIL 项"
say "  沙箱：$SANDBOX（可删）"
say "  守护日志：$DLOG"
rm -rf "$SANDBOX"
[ "$FAIL" = "0" ] && say "  结论：全部通过" || say "  结论：存在失败项，请检查"
[ "$FAIL" = "0" ]
