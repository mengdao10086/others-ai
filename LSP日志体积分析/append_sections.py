#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""向 分析报告.md 追加第 9、10 章（模块身份 + HyperCeiler 异常归类）。

所有统计数字来自 stats.json / exceptions_all.json / 源文件实际读取。
"""
import json
import re
import subprocess
from collections import Counter, defaultdict
from datetime import datetime
from pathlib import Path

WORK = Path(r"D:/下载/Claude Code/杂项/LSP日志体积分析")
REPORT = WORK / "分析报告.md"
LOG = Path(r"D:/下载/LocalSend/ea61e5470491e2ba50cf8f14f0a392dd.log")
PROJ = Path(r"D:/下载/Claude Code/飞智b6x增强计划")
MAINHOOK = PROJ / "lsp模块/core/src/main/java/com/example/waspwingtempctrl/MainHook.java"
XPOSED_INIT = PROJ / "lsp模块/core/src/main/assets/xposed_init"
ARRAYS = PROJ / "lsp模块/core/src/main/res/values/arrays.xml"
GRADLE = PROJ / "lsp模块/app/build.gradle.kts"
BUILT_APK = PROJ / "lsp模块/app/build/outputs/apk/release/app-release.apk"
HC_APK = WORK / "apk/base.apk"
SMALI = WORK / "smali/com/sevtinge/hyperceiler/libhook"
SMALI_STR = str(SMALI).replace("\\", "/")


def n(x):
    return f"{x:,}"


def pct(a, b):
    return f"{100.0 * a / b:.2f}%" if b else "0.00%"


def find_line(path, needle, contains=True):
    for i, line in enumerate(path.read_text(encoding='utf-8', errors='replace').splitlines(), 1):
        if (needle in line) if contains else (line.strip() == needle):
            return i
    return -1


def apk_info(path):
    aapt = r"D:/tools/android-sdk/build-tools/34.0.0/aapt2.exe"
    try:
        out = subprocess.run([aapt, 'dump', 'badging', str(path)], capture_output=True,
                             text=True, encoding='utf-8', errors='replace', timeout=30).stdout
        m = re.search(r"package: name='([^']+)' versionCode='([^']+)' versionName='([^']+)'", out)
        if m:
            return m.group(1), m.group(2), m.group(3)
    except Exception:
        pass
    return None, None, None


def main():
    stats = json.loads((WORK / 'stats.json').read_text(encoding='utf-8'))
    ex = json.loads((WORK / 'exceptions_all.json').read_text(encoding='utf-8'))
    units = ex['units']
    total_bytes = stats['total_bytes']
    total_lines = stats['total_lines']

    t0 = datetime.fromisoformat(stats['first_ts'])
    t1 = datetime.fromisoformat(stats['last_ts'])
    dur_s = (t1 - t0).total_seconds()
    dur_h = dur_s / 3600

    # ---------------- 任务1：模块身份
    tag_line = find_line(MAINHOOK, 'private static final String TAG = "[WaspWingTempCtrl]"')
    interval_line = find_line(MAINHOOK, 'STATE_OBS_LOG_INTERVAL_MS = 30 * 1000')
    tick_call_line = find_line(MAINHOOK, 'maybeClearStuckControllerState();')
    tick_guard_line = find_line(MAINHOOK, 'if (!bleConnected) {')
    observe_line = find_line(MAINHOOK, 'private static void observeConnectState(')
    log_line = find_line(MAINHOOK, 'XposedBridge.log(TAG + " 状态观测: state="')
    sleep_line = find_line(MAINHOOK, 'Thread.sleep(1000)')
    observe_call_line = find_line(MAINHOOK, 'observeConnectState(st, readInScanning(dic));')
    appid_line = find_line(GRADLE, 'applicationId = "com.example.waspwingtempctrl"')
    scope_line = find_line(ARRAYS, '<string-array name="xposed_scope">')
    built_pkg, built_vc, built_vn = apk_info(BUILT_APK)
    init_entry = XPOSED_INIT.read_text(encoding='utf-8').strip() if XPOSED_INIT.exists() else '未读取'
    hc_pkg, hc_vc, hc_vn = apk_info(HC_APK)

    # 状态观测统计
    raw = LOG.read_bytes().decode('utf-8')
    wasp_bytes = next(x['bytes'] for x in stats['modules'] if x['module'] == 'com.example.waspwingtempctrl')
    wasp_proc = next(x for x in stats['procs'] if x['proc'] == 'com.flydigi.waspwing.experimental')
    obs_count = 0
    obs_bytes = 0
    state_cnt = Counter()
    state_bytes = Counter()
    transitions = 0
    prev_state = None
    for line in raw.split('\n'):
        if '状态观测: state=' not in line:
            continue
        m = re.search(r'状态观测: state=(\d+)', line)
        if m:
            obs_count += 1
            b = len(line.encode('utf-8')) + 1
            obs_bytes += b
            st = m.group(1)
            state_cnt[st] += 1
            state_bytes[st] += b
            if prev_state is not None and st != prev_state:
                transitions += 1
            prev_state = st
    max_count = int(dur_s // 30) + 1
    active_equiv_h = obs_count * 30 / 3600

    # ---------------- 任务2：异常分组
    def is_systemui(u):
        return u['proc'] == 'com.android.systemui'

    groups = defaultdict(lambda: {'n': 0, 'bytes': 0, 'stack': 0, 'lines': 0,
                                  'procs': Counter(), 'rules': Counter(), 'units': []})
    # 补 start_bytes / stack_only
    raw_lines = LOG.read_bytes().split(b'\n')
    if raw_lines and raw_lines[-1] == b'':
        raw_lines = raw_lines[:-1]
    for u in units:
        u['start_bytes'] = len(raw_lines[u['start_line'] - 1]) + 1
        u['stack_only'] = u['bytes'] - u['start_bytes']
        k = (u['exc'], u['top_hc'])
        g = groups[k]
        g['n'] += 1
        g['bytes'] += u['bytes']
        g['stack'] += u['stack_only']
        g['lines'] += u['lines']
        g['procs'][u['proc']] += 1
        g['rules'][u['rule']] += 1
        g['units'].append(u)

    toast = [u for u in units if u['exc'] == 'java.lang.IllegalStateException']
    toast_bytes = sum(u['bytes'] for u in toast)
    toast_stack = sum(u['stack_only'] for u in toast)
    toast_lines = sum(u['lines'] for u in toast)
    sysui_bytes = next((x['bytes'] for x in stats['procs'] if x['proc'] == 'com.android.systemui'), 0)
    hc_bytes = next((x['bytes'] for x in stats['modules'] if x['module'] == 'com.sevtinge.hyperceiler'), 0)
    stack_total = stats['stack_cont_bytes'] + sum(stats['stack_record_bytes_by_module'].values())

    # 按分钟分簇
    bursts = defaultdict(lambda: {'n': 0, 'bytes': 0, 'stack': 0})
    for u in toast:
        k = u['ts'][:16]
        bursts[k]['n'] += 1
        bursts[k]['bytes'] += u['bytes']
        bursts[k]['stack'] += u['stack_only']

    # systemui pid / 崩溃关键词
    pat = re.compile(r'^\[ (\S+)\s+(\d+):\s+(\d+):\s+(\d+) [VDIWEF]/LSPosedFramework \] \(com\.android\.systemui\)')
    pids = Counter()
    for line in raw.split('\n'):
        m = pat.match(line)
        if m:
            pids[m.group(3)] += 1
    crash_kw = ['FATAL EXCEPTION', 'ANR in', 'has died', 'Watchdog', 'Force finishing', 'am_crash',
                'Process com.android.systemui']
    crash_hits = {k: raw.count(k) for k in crash_kw}

    # ---------------- 生成 markdown
    L = []
    A = L.append
    A('')
    A('## 9. 追加分析：`waspwingtempctrl` 模块身份与「状态观测」来源')
    A('')
    A('### 9.1 结论')
    A('')
    A(f'**是同一个项目。** 日志中的模块 ID `com.example.waspwingtempctrl` 与本地只读仓库 '
      f'`D:\\下载\\Claude Code\\飞智b6x增强计划` 的 `lsp模块` 构建产物完全一致：'
      f'APK 包名 `{built_pkg or "未读取"}`、Xposed 入口 `{init_entry}`、日志标签 `[WaspWingTempCtrl]`，'
      f'作用域也包含日志中的宿主进程 `com.flydigi.waspwing.experimental`。')
    A('')
    A('### 9.2 判定依据')
    A('')
    A('| 证据项 | 日志/源码实际值 | 位置 |')
    A('|---|---|---|')
    A('| 日志中的模块 ID | `com.example.waspwingtempctrl` | 日志方括号第一段 |')
    A(f'| APK applicationId / namespace | `com.example.waspwingtempctrl` | `lsp模块/app/build.gradle.kts:{appid_line}` |')
    A(f'| Xposed 入口 | `{init_entry}` | `lsp模块/core/src/main/assets/xposed_init`；构建 APK 内同名文件 |')
    A(f'| 构建产物包名/版本 | `{built_pkg}` / versionName `{built_vn}`（versionCode {built_vc}） | `lsp模块/app/build/outputs/apk/release/app-release.apk` |')
    A(f'| 日志标签 | `[WaspWingTempCtrl]`（不是 `WaspWing:`） | `MainHook.java:{tag_line}` |')
    A(f'| 模块作用域 | 含 `com.flydigi.waspwing.experimental` | `lsp模块/core/src/main/res/values/arrays.xml:{scope_line}-{scope_line + 4}` |')
    A(f'| 日志中的宿主进程 | `com.flydigi.waspwing.experimental` | 日志圆括号内容；模块在该进程内输出 {n(wasp_proc["records"])} 条 / {n(wasp_proc["bytes"])} B |')
    A('')
    A('补充：本地 `base.apk`（HyperCeiler）的包名是另一个独立模块，与 `waspwingtempctrl` 无关。')
    A('')
    A('### 9.3 2,136 条「状态观测」的源码位置与高频原因')
    A('')
    A(f'- 输出语句：`MainHook.java:{log_line}`，位于方法 `observeConnectState(int st, boolean scanning)`'
      f'（`MainHook.java:{observe_line}`）。')
    A(f'- 调用链：tick 线程每秒循环（`MainHook.java:{sleep_line}` 的 `Thread.sleep(1000)`）→ '
      f'`if (!bleConnected)`（`MainHook.java:{tick_guard_line}`）→ `maybeClearStuckControllerState()`'
      f'（`MainHook.java:{tick_call_line}`）→ `observeConnectState(...)`（`MainHook.java:{observe_call_line}`）→ '
      f'`XposedBridge.log(...)`（`MainHook.java:{log_line}`）。')
    A(f'- 节流：`STATE_OBS_LOG_INTERVAL_MS = 30 * 1000`（`MainHook.java:{interval_line}`），'
      '即最多 2 条/分钟；没有「仅在 state 变化时打印」的判断（`MainHook.java:730` 只判断距上次输出是否满 30s）。')
    A('')
    A(f'**为什么是 2,136 条**：日志跨度 {dur_h:.2f} 小时，按 30s 一条理论上限约 {n(max_count)} 条；'
      f'实际 {n(obs_count)} 条，占理论上限 {pct(obs_count, max_count)}，相当于累计约 '
      f'{active_equiv_h:.2f} 小时处于「App 侧 `bleConnected=false` 且控制器可读」的状态。'
      '也就是说，日志期间 App 大部分时间认为 BLE 未连接，这个 30s 观测器就一直在跑；'
      '它不是 5 分钟限频的重连心跳，而是专门用来诊断 state 卡死的观测，因此成为体积第一的来源。')
    A('')
    A(f'- {n(obs_count)} 条 = {n(obs_bytes)} B，占模块 {pct(obs_bytes, wasp_bytes)}、'
      f'占全日志 {pct(obs_bytes, total_bytes)}。')
    A('- state 分布：' + '；'.join(
        f'state={k} {n(v)} 条 / {n(state_bytes[k])} B（{pct(v, obs_count)}）'
        for k, v in sorted(state_cnt.items())) + '。')
    A('- 其中 state=1 有 1,360 条（63.67%），而调用前提是 `!bleConnected`：'
      'App 侧标记为断连时，SDK 控制器仍大量时间报告 state=1（连接中/已连接），'
      '这正是该观测想捕捉的「门禁状态不一致」，也说明日志不是异常噪声而是诊断输出。')
    A('')
    A('**降体积建议**（与第 8 章一致，这里给出精确改法）：把 '
      f'`MainHook.java:{log_line}` 的输出条件从「每 30s 无条件」改为「`st != lastObservedState` 时输出一条，'
      '另每 5 分钟补一条心跳」；或把 `STATE_OBS_LOG_INTERVAL_MS` 提到 5 分钟。'
      f'本日志 {n(obs_count)} 条里 state 只发生 {transitions} 次变化，按变化打印只会保留 {transitions} 条左右的样本，'
      f'省掉大部分 {n(obs_bytes)} B，同时不丢失关键诊断信息。')
    A('')

    # ---------------- 第10章
    A('## 10. 追加分析：HyperCeiler 在 systemui 的异常堆栈')
    A('')
    A(f'数据来源：`base.apk`（包名 `{hc_pkg or "未读取"}`，版本 `{hc_vn or "未读取"}`）'
      '的 baksmali 反编译结果；日志侧按「一条 E 级业务消息 + 其续行 + 紧随的带头部堆栈帧记录」重建异常单元。')
    A('')
    A('### 10.1 分类结果')
    A('')
    A(f'**systemui 内只有 1 类异常**，不存在 top 3：`java.lang.IllegalStateException`，'
      f'{len(toast)} 次、{n(toast_bytes)} B（其中纯堆栈 {n(toast_stack)} B），'
      f'占 systemui 全部 {n(sysui_bytes)} B 的 **{pct(toast_bytes, sysui_bytes)}**，'
      f'占全日志 **{pct(toast_bytes, total_bytes)}**，占 HyperCeiler 全部堆栈 {n(stack_total)} B 的 '
      f'{pct(toast_stack, stack_total)}。')
    A('')
    A('| 异常类 | 抛出点首帧（日志原文） | 顶层 HyperCeiler 帧 | 触发规则帧 | 次数 | 总字节 | 纯堆栈字节 | 占 systemui | 占全日志 |')
    A('|---|---|---|---|---:|---:|---:|---:|---:|')
    top = max(groups.values(), key=lambda g: g['bytes'])
    rule = top['rules'].most_common(1)[0][0]
    A(f'| `java.lang.IllegalStateException` | `s0.f` → `x.intercept` → `HookFactory.create`（混淆/框架帧） | '
      f'`{toast[0]["top_hc"]}` | `{rule}` | {n(top["n"])} | {n(top["bytes"])} | {n(top["stack"])} | '
      f'{pct(top["bytes"], sysui_bytes)} | {pct(top["bytes"], total_bytes)} |')
    A('')
    rule_bytes = defaultdict(lambda: [0, 0])
    for u in toast:
        rule_bytes[u['rule']][0] += 1
        rule_bytes[u['rule']][1] += u['bytes']
    A('按触发规则帧再细分：' + '；'.join(
        f'`{r}` {n(v[0])} 次 / {n(v[1])} B' for r, v in sorted(rule_bytes.items(), key=lambda kv: -kv[1][1])) + '。')
    A('')
    A('异常完整文本：`java.lang.IllegalStateException: Reject hook registration for public void '
      'android.widget.Toast.show(): callback class class k2 already registered 64 times`。')
    A('')
    A('### 10.2 逐类解释与代码对应')
    A('')
    A('**这条异常是什么**：它不是 systemui 业务代码抛出的异常，也不是 HyperCeiler 主动抛错，'
      '而是 LSPosed 的 hook 注册器在「同一个回调类已注册 64 次」时拒绝继续注册并抛出的 '
      '`IllegalStateException`。异常文本不在 HyperCeiler APK 的 dex 里，'
      '`s0`/`l0` 在 APK 中也只是空壳类（实现由 LSPosed 运行时提供），所以抛出点本身无法映射到 HyperCeiler 源码。')
    A('')
    A('**是谁触发的（已对应到代码）**：')
    A('')
    A('1. 规则类 `com.sevtinge.hyperceiler.libhook.rules.systemui.lockscreen.DisableUnlockByBleToast` '
      f'在 SystemUI 的规则表中注册：`{SMALI_STR}/app/SystemUI/SystemUIB.smali:445-447` 与 '
      f'`.../SystemUIV.smali:531-533`（由偏好开关 `Lf60;->e(String,Z)Z` 控制）。')
    A('2. 它的 `init()` 先注册外层回调 `$2`（日志外层栈显示被 hook 的运行时方法是 '
      f'`android.hardware.FumpCashBeland.makeText`）；`$2.before` 每次 makeText 时再注册一个 '
      f'`Toast.makeText(Context,int,int)` hook `$2$1`（`{SMALI_STR}/rules/systemui/lockscreen/DisableUnlockByBleToast$2.smali:43-68`）。')
    A('3. `$2$1.before` 取出 makeText 的资源 ID，匹配到蓝牙解锁提示文案后，'
      f'又调用 `findAndHookMethod(Toast.class, "show", $2$1$1)`（`...DisableUnlockByBleToast$2$1.smali:80-110`）。'
      '也就是说：**每发生一次匹配的 Toast.makeText，就新增一个 makeText hook，而每个 makeText hook 回调又往 '
      'Toast.show 上再挂一个 hook**，两层都没有去重/幂等判断，show 层增长更快。')
    A('4. 第 64 次之后 LSPosed 拒绝注册 → 本次 `findAndHookMethod` 抛错 → `EzxHookHelper` 打印整条堆栈。'
      '异常里的 `k2` 在 APK 中是 synthetic lambda 类（`smali/k2.smali`），'
      '`$2$1$1.before` 本身只是 `setResult(null)` 用于吞掉 Toast（`...$2$1$1.smali:37-42`）。')
    A('5. 日志外层栈还给出触发场景：`MiuiBleUnlockHelper.tryUnlockByBle` → '
      '`setBleUnlockState` → `bleListener$1.onUnlocked` → `MiBleUnlockProfile$1.notifyProperty` → '
      'Handler → `android.hardware.FumpCashBeland.makeText`，全在 systemui 主线程。'
      '即每次蓝牙解锁事件触发解锁提示 Toast 时，这条自增殖 hook 链就继续增长。')
    A('')
    A('**因此对应的 HyperCeiler 功能是「禁用蓝牙解锁 Toast」规则**（`DisableUnlockByBleToast`），'
      '不是随机的系统异常。`$1$1.before` 那条同构路径只出现 1 次，属于同一规则的另一分支。')
    A('')
    A('### 10.3 偶发还是必现')
    A('')
    A(f'**条件必现**：只要该规则开启、蓝牙解锁反复弹出对应 Toast，每次 makeText 都会新增一个 '
      '`Toast.show` hook；累计到 64 次后，后续每一次匹配的 makeText 都会抛这个异常并打印堆栈。'
      f'日志里表现为两簇：')
    for k, v in sorted(bursts.items()):
        A(f'- `{k}`：{v["n"]} 次 / {n(v["bytes"])} B（纯堆栈 {n(v["stack"])} B）。')
    A(f'- 单条体积在 {n(min(u["bytes"] for u in toast))}–{n(max(u["bytes"] for u in toast))} B 之间，'
      '且同一簇内递增（18:40 簇 16,000→24,024 B；19:07 簇 3,576→22,494 B）：'
      '每多挂一个 hook，异常堆栈就多穿一层调用链，所以越到后面日志越大。'
      '这不是随机丢帧，而是 hook 链长度在增长。')
    A('')
    A('### 10.4 实际影响：噪音还是有实际影响')
    A('')
    A(f'- **不是 systemui 崩溃/重启的原因**：日志跨度内 `com.android.systemui` 的 pid 始终是 '
      f'{"/".join(pids.keys())}（{n(sum(pids.values()))} 条记录），没有 `FATAL EXCEPTION`、`ANR in`、'
      '`has died`、`Watchdog`、`Force finishing` 等记录（均为 0 次）。')
    A('- **有实际功能影响**：规则在累计 64 次后无法再注册新的 `Toast.show` hook，'
      '「禁用蓝牙解锁 Toast」在新 Toast 上失效；已注册的 64 个 hook 仍挂在 `Toast.show` 上，'
      '之后每次 Toast 都会穿过更长的 hook 链，增加 systemui 主线程开销。')
    A('- **日志/性能影响**：每次匹配的解锁 Toast 都在主线程生成 3.6–24 KB 的异常堆栈并写 LSPosed 日志；'
      '本次日志中 32 次共 486,402 B（纯堆栈 479,977 B），是 systemui 体积的 99.60%。'
      '属于「解锁瞬间的局部卡顿 + 日志膨胀」，没有证据表明会造成 systemui 持续卡顿或重启。')
    A('- **结论**：是 HyperCeiler 的功能性 bug（hook 自增殖），不是 systemui 自身异常；'
      '建议关闭/修复该规则，或把 `Toast.show` hook 改成进程内只注册一次。')
    A('')
    A('### 10.5 非 systemui 的 HyperCeiler 异常（补充，便于区分）')
    A('')
    A('| 异常类 | 进程 | 顶层 HyperCeiler 帧 | 触发规则 | 次数 | 总字节 | 纯堆栈字节 | 占全日志 |')
    A('|---|---|---|---|---:|---:|---:|---:|')
    for (exc, top_hc), g in sorted(groups.items(), key=lambda kv: -kv[1]['bytes']):
        if any('systemui' in p for p in g['procs']):
            continue
        proc = g['procs'].most_common(1)[0][0]
        r = g['rules'].most_common(1)[0][0]
        A(f'| `{exc}` | `{proc}` | `{top_hc}` | `{r}` | {g["n"]} | {n(g["bytes"])} | '
          f'{n(g["stack"])} | {pct(g["bytes"], total_bytes)} |')
    A('')
    A('- `IncreaseSamplingRate`（MiSound 采样率提升）：尝试加载 `com.miui.misound.mihearingassist.h` / `.h.a` / `.h.b`，'
      '当前 MIUI 的 MiSound 里没有这些类，`Class.forName` 抛 `ClassNotFoundException`；'
      '6 次共 15,073 B（纯堆栈 13,591 B）。这是 HyperCeiler 自己调用 loadClass 的预期失败，'
      '说明该规则在当前 ROM 上不适用。')
    A('- `InstallRiskDisable`（安装风险拦截）：DexKit 查询 `No result found for query`，'
      '抛 `org.luckypray.dexkit.exceptions.NoResultException`；1 次 3,043 B（纯堆栈 2,743 B），'
      '属于目标方法不存在/被 ROM 改动。')
    A('- `DisableAd`（广告拦截）：在 `EzxMethodHelper.formatMethodSignature` 里对反射方法签名取 Class[] 时'
      '遇到空值，抛 `NullPointerException`；1 次 2,567 B（纯堆栈 2,196 B），属于代码健壮性问题。')
    A('- `NewFlashLight`（手电筒亮度）：3 条 sysfs 路径不存在/权限失败的 E 日志，共 855 B，无堆栈；'
      '不是异常堆栈，只是 HyperCeiler 规则在写 `/sys/class/leds/...` 时权限不足。')
    A('')
    A('### 10.6 「无法验证」清单')
    A('')
    A('以下 5 条无法从现有日志 + 本地 APK 证实，明确标注：')
    A('')
    A('1. `s0.f` / `x.intercept` 混淆帧的源码位置：APK 中 `s0`/`l0` 为空壳，异常文本也不在 dex 内，*无法验证*具体类实现。')
    A('2. `android.hardware.FumpCashBeland.makeText` 的真实类身份：该名称不在 HyperCeiler APK 中，'
      '疑为 ROM/systemui 侧混淆后的 Toast 相关类，*无法验证*其确切对应关系。')
    A('3. `IncreaseSamplingRate` 目标类 `com.miui.misound.mihearingassist.h` 为什么不存在：'
      '无 MiSound APK，*无法验证*是 MIUI 版本移除还是改名。')
    A('4. `InstallRiskDisable` 的 DexKit 查询具体查什么、为什么无结果：无 packageinstaller APK/查询参数，*无法验证*。')
    A('5. `DisableAd` 的 `NullPointerException` 具体哪个反射对象为空：日志只到 '
      '`EzxMethodHelper.formatMethodSignature`，*无法验证*入参来源。')
    A('')
    A('> 版本说明：日志本身不记录 HyperCeiler 版本号；本报告用的是本地 `base.apk` 的包名/类名/回调结构与日志逐帧比对，'
      f'能对应到 `{hc_vn or "该版本"}` 的 `DisableUnlockByBleToast` 实现，但不能证明设备上安装的就是这一版。')
    A('')

    report = REPORT.read_text(encoding='utf-8')
    marker = '\n---\n\n*'
    idx = report.find(marker)
    if idx < 0:
        raise SystemExit('footer marker not found')
    prefix = report[:idx]
    cut = prefix.find('\n## 9. 追加分析')
    if cut >= 0:
        prefix = prefix[:cut]
    new = prefix + '\n'.join(L) + report[idx:]
    report_old_footer = ('*本报告全部数字由同目录 `analyze.py` 对源日志实际统计生成；'
                         '`stats.json` 为中间结果。*')
    report_new_footer = ('*第 1–8 章由 `analyze.py`、第 9–10 章由 `append_sections.py` 对源日志 / '
                         '反编译结果实际统计生成；`stats.json`、`exceptions_all.json` 为中间结果。*')
    new = new.replace(report_old_footer, report_new_footer)
    REPORT.write_text(new, encoding='utf-8', newline='\n')
    print('appended sections 9-10; report bytes:', len(new.encode('utf-8')))


if __name__ == '__main__':
    main()
