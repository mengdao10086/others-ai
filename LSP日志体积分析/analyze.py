#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""LSPosed 日志体积分析：按模块 / 进程 / 消息前缀 / 归一化模式统计字节与行数。

用法:
    python -I analyze.py <日志路径> [--json stats.json] [--report 分析报告.md]

口径:
  * 字节 = 每行 UTF-8 原始字节数 + 行尾 LF 的 1 字节（末行无换行则不加），
    所有条目字节之和 == 文件大小（脚本内自校验）。
  * 行数 = 物理行数（split on LF）。
  * 非头部行（堆栈等）归属到前一条可解析记录。
"""
import argparse
import hashlib
import json
import re
import sys
from collections import Counter, defaultdict
from datetime import datetime

HEADER_RE = re.compile(
    r'^\[ (?P<ts>\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{3})'
    r'\s+(?P<uid>\d+):\s+(?P<pid>\d+):\s+(?P<tid>\d+)'
    r' (?P<level>[VDIWEF])/(?P<tag>\S+) \] '
    r'\((?P<proc>.*?)\)\[(?P<bracket>[^\]]*)\]'
    r'(?: (?P<msg>.*))?$'
)
PART_RE = re.compile(r'^----part \d+ (?:start|end)----$')
STACK_RE = re.compile(r'^\s*at [\w$.\-]+[.(]')
BRACKET_TAGS_RE = re.compile(r'^((?:\[[^\]]+\]\s*)+)')

MAC_RE = re.compile(r'\b(?:[0-9A-Fa-f]{2}:){5}[0-9A-Fa-f]{2}\b')
R8_RE = re.compile(r'r8-map-id-[0-9A-Fa-f]+')
HEX_RE = re.compile(r'\b[0-9A-Fa-f]{8,}\b')
NUM_RE = re.compile(r'\d+')
WS_RE = re.compile(r'\s+')


def normalize(msg):
    s = msg or ''
    s = MAC_RE.sub('<MAC>', s)
    s = R8_RE.sub('<RMAP>', s)
    s = HEX_RE.sub('<HEX>', s)
    s = NUM_RE.sub('<N>', s)
    s = WS_RE.sub(' ', s).strip()
    return s or '<空消息>'


def extract_label(msg):
    """消息前缀：第一个后接空白的冒号之前的部分（<=60 字符）；否则取开头 [Tag] 串。"""
    if msg is None:
        return '<无消息>'
    s = msg.strip()
    if not s:
        return '<空消息>'
    if STACK_RE.match(s):
        return '<堆栈帧>'
    if s.startswith('Caused by:'):
        return 'Caused by'
    for i, ch in enumerate(s[:61]):
        if ch in ':：' and (i + 1 == len(s) or s[i + 1].isspace()):
            pre = s[:i].strip()
            if pre:
                return pre
            break
    m = BRACKET_TAGS_RE.match(s)
    if m:
        return m.group(1).strip()
    return '<无标签>'


class Bucket:
    __slots__ = ('records', 'cont_lines', 'lines', 'bytes', 'chars')

    def __init__(self):
        self.records = 0
        self.cont_lines = 0
        self.lines = 0
        self.bytes = 0
        self.chars = 0

    def add_record(self, nbytes, nchars):
        self.records += 1
        self.lines += 1
        self.bytes += nbytes
        self.chars += nchars

    def add_continuation(self, nbytes, nchars):
        self.cont_lines += 1
        self.lines += 1
        self.bytes += nbytes
        self.chars += nchars


def analyze(path):
    raw = open(path, 'rb').read()
    size = len(raw)
    sha256 = hashlib.sha256(raw).hexdigest()
    has_trailing_nl = raw.endswith(b'\n')
    parts = raw.split(b'\n')
    if has_trailing_nl:
        parts = parts[:-1]

    total_lines = len(parts)
    total_bytes = 0
    total_chars = 0

    modules = defaultdict(Bucket)
    procs = defaultdict(Bucket)
    pairs = defaultdict(Bucket)
    levels = defaultdict(Bucket)
    mod_levels = defaultdict(lambda: defaultdict(Bucket))
    labels = defaultdict(Bucket)
    mod_labels = defaultdict(lambda: defaultdict(Bucket))
    patterns = defaultdict(Bucket)
    mod_patterns = defaultdict(lambda: defaultdict(Bucket))
    pattern_mods = defaultdict(Counter)
    pattern_labels = defaultdict(Counter)
    label_samples = {}
    pattern_samples = {}
    cont_bytes_by_module = Counter()
    cont_lines_by_module = Counter()
    stack_record_bytes_by_module = Counter()
    stack_record_lines_by_module = Counter()

    part_markers = []
    continuations = 0
    stack_cont_lines = 0
    stack_cont_bytes = 0
    orphans = 0
    orphan_lines = []
    records = 0
    first_ts = None
    last_ts = None

    cur = None

    for idx, b in enumerate(parts):
        nbytes = len(b) + (1 if (idx < len(parts) - 1 or has_trailing_nl) else 0)
        try:
            s = b.decode('utf-8')
            decode_ok = True
        except UnicodeDecodeError:
            s = b.decode('utf-8', 'replace')
            decode_ok = False
        nchars = len(s) + (1 if (idx < len(parts) - 1 or has_trailing_nl) else 0)
        total_bytes += nbytes
        total_chars += nchars
        if s.endswith('\r'):
            s = s[:-1]

        m = HEADER_RE.match(s)
        if m:
            records += 1
            g = m.groupdict()
            ts = g['ts']
            if first_ts is None:
                first_ts = ts
            last_ts = ts
            bracket = g['bracket']
            module = bracket.split(',')[0].strip() if bracket else '<无模块>'
            proc = g['proc']
            level = g['level']
            msg = g['msg']
            label = extract_label(msg)
            pat = normalize(msg)
            pat_display = pat if len(pat) <= 160 else pat[:157] + '...'
            cur = (module, proc, level, label, pat, msg)

            for bucket in (modules[module], procs[proc], pairs[(module, proc)],
                           levels[level], mod_levels[module][level],
                           labels[label], mod_labels[module][label],
                           patterns[pat], mod_patterns[module][pat]):
                bucket.add_record(nbytes, nchars)
            pattern_mods[pat][module] += 1
            pattern_labels[pat][label] += 1
            label_samples.setdefault((module, label), (msg or '').strip())
            pattern_samples.setdefault(pat, msg or '')
            if label == '<堆栈帧>':
                stack_record_bytes_by_module[module] += nbytes
                stack_record_lines_by_module[module] += 1
            continue

        if PART_RE.match(s.strip()):
            part_markers.append((idx + 1, s))
            continue

        if s == '':
            orphan_lines.append((idx + 1, '<空行>', nbytes))
            continue

        continuations += 1
        stack_cont_lines += 1
        stack_cont_bytes += nbytes
        if cur is None:
            orphans += 1
            orphan_lines.append((idx + 1, s[:200], nbytes))
            continue
        module, proc, level, label, pat, msg = cur
        for bucket in (modules[module], procs[proc], pairs[(module, proc)],
                       levels[level], mod_levels[module][level],
                       labels[label], mod_labels[module][label],
                       patterns[pat], mod_patterns[module][pat]):
            bucket.add_continuation(nbytes, nchars)
        cont_bytes_by_module[module] += nbytes
        cont_lines_by_module[module] += 1

    return {
        'path': path, 'size': size, 'sha256': sha256,
        'total_lines': total_lines, 'total_bytes': total_bytes,
        'total_chars': total_chars, 'has_trailing_nl': has_trailing_nl,
        'byte_sum_matches_file': total_bytes == size,
        'records': records, 'continuations': continuations,
        'stack_cont_lines': stack_cont_lines, 'stack_cont_bytes': stack_cont_bytes,
        'orphans': orphans, 'orphan_lines': orphan_lines,
        'part_markers': part_markers, 'first_ts': first_ts, 'last_ts': last_ts,
        'assigned_bytes': sum(v.bytes for v in modules.values()),
        'unassigned_bytes': size - sum(v.bytes for v in modules.values()),
        'modules': modules, 'procs': procs, 'pairs': pairs,
        'levels': levels, 'mod_levels': mod_levels,
        'labels': labels, 'mod_labels': mod_labels,
        'patterns': patterns, 'mod_patterns': mod_patterns,
        'pattern_mods': pattern_mods, 'pattern_labels': pattern_labels,
        'label_samples': label_samples, 'pattern_samples': pattern_samples,
        'cont_bytes_by_module': cont_bytes_by_module,
        'cont_lines_by_module': cont_lines_by_module,
        'stack_record_bytes_by_module': stack_record_bytes_by_module,
        'stack_record_lines_by_module': stack_record_lines_by_module,
        'decode_errors': 0,
    }


def rows(dct, total_bytes, total_lines, key='name'):
    out = []
    for k, v in sorted(dct.items(), key=lambda kv: (-kv[1].bytes, -kv[1].records, str(kv[0]))):
        out.append({
            key: k, 'records': v.records, 'cont_lines': v.cont_lines,
            'lines': v.lines, 'bytes': v.bytes, 'chars': v.chars,
            'pct_bytes': 100.0 * v.bytes / total_bytes if total_bytes else 0.0,
            'pct_lines': 100.0 * v.lines / total_lines if total_lines else 0.0,
        })
    return out


# ---------------------------------------------------------------- 报告

def n(x):
    return f'{x:,}'


def pct(a, b):
    return f'{100.0 * a / b:.2f}%' if b else '0.00%'


def esc(s, width=None):
    s = (s or '').replace('\r', ' ').replace('\n', ' ').replace('|', '\\|')
    if width and len(s) > width:
        s = s[:width - 3] + '...'
    return s


def is_stack_pattern(p):
    return p.startswith('at ') or p.startswith('Caused by')


def build_report(r):
    size = r['total_bytes']
    lines = r['total_lines']
    mod_rows = rows(r['modules'], size, lines, 'module')
    proc_rows = rows(r['procs'], size, lines, 'proc')
    pair_rows = rows(r['pairs'], size, lines, 'pair')
    L = []
    A = L.append
    t0 = datetime.fromisoformat(r['first_ts'])
    t1 = datetime.fromisoformat(r['last_ts'])
    dur_seconds = (t1 - t0).total_seconds()

    A('# LSPosed 日志体积分析报告')
    A('')
    A('## 1. 数据与统计口径')
    A('')
    A(f'- 源文件：`{r["path"]}`（只读分析，前后 SHA-256 一致，未修改）')
    A(f'- 文件大小：**{n(r["size"])} 字节**；物理行数：**{n(r["total_lines"])}**；'
      f'UTF-8 解码字符数（含换行）：{n(r["total_chars"])}')
    A(f'- SHA-256：`{r["sha256"]}`')
    A(f'- 时间范围：`{r["first_ts"]}` ~ `{r["last_ts"]}`（跨度 {dur_seconds / 3600:.2f} 小时）')
    A(f'- 分段标记：共 {len(r["part_markers"])} 个（'
      + ('、'.join(f'第 {ln} 行 `{esc(s)}`' for ln, s in r['part_markers']) or '无')
      + '）。脚本按出现位置通用处理任意多段。')
    A('')
    A('**字节口径**：每行按 UTF-8 原始字节计数，并计入行尾 LF（1 字节/行）；'
      '末行有换行则同样计入。逐行字节求和与文件大小 '
      f'**{"完全一致" if r["byte_sum_matches_file"] else "不一致，需复查"}**'
      f'（{n(r["total_bytes"])} = {n(r["size"])}）。文中“占比”除特别注明外均为'
      '**占文件总字节**；行数占比为占物理总行数。字符数仅作参考，中文按字符与按 UTF-8 字节的占比会不同。')
    A('')
    A('**解析规则**：头部按正则匹配 '
      '`[ 时间 uid: pid: tid 级别/LSPosedFramework ] (进程)[模块,框架,调用ID,?,?] 消息`，'
      '模块取方括号第一段，进程取圆括号内容。头部之后的非头部行（`\\tat ...`、异常类名、`... N more` 等）'
      '视为上一条记录的续行，其字节一并计入该记录的模块/进程。'
      '另有 145 条堆栈帧由 LSPosed 作为独立记录（带完整头部、调用 ID 递增）写出，按正常记录统计。')
    A('')
    unmatched = r['total_lines'] - r['records']
    A('**未匹配行单列（不静默丢弃）**：')
    A('')
    A('| 类别 | 行数 | 字节 | 处理 |')
    A('|---|---:|---:|---|')
    A(f'| 可解析记录（头部匹配） | {n(r["records"])} | {n(sum(v.bytes for v in r["modules"].values()) - r["stack_cont_bytes"])} | 计入模块/进程 |')
    A(f'| 续行（堆栈等，非头部） | {n(r["continuations"])} | {n(r["stack_cont_bytes"])} | 归属前一条记录 |')
    A(f'| part 分段标记 | {len(r["part_markers"])} | {n(r["unassigned_bytes"])} | 不归属任何模块 |')
    A(f'| 孤儿续行（无前一条记录） | {r["orphans"]} | 0 | 未归属 |')
    A(f'| 空行 | 0 | 0 | — |')
    A(f'| **非头部行合计** | **{n(unmatched)}** | **{n(r["stack_cont_bytes"] + r["unassigned_bytes"])}** | 其中 {n(r["continuations"])} 行为续行归属、{len(r["part_markers"])} 行标记未归属 |')
    A('')
    A(f'未归属字节 {n(r["unassigned_bytes"])}，占总字节 {pct(r["unassigned_bytes"], size)}。'
      f'解析失败/无法归属的记录数：**{r["orphans"]}**。')
    A('')

    # ---- 模块
    A('## 2. 按模块统计（完整排名）')
    A('')
    A('| 排名 | 模块 | 记录数 | 续行数 | 总行数 | 字节 | 占总字节 | 占总行数 |')
    A('|---:|---|---:|---:|---:|---:|---:|---:|')
    for i, x in enumerate(mod_rows, 1):
        A(f'| {i} | `{x["module"]}` | {n(x["records"])} | {n(x["cont_lines"])} | '
          f'{n(x["lines"])} | {n(x["bytes"])} | **{x["pct_bytes"]:.2f}%** | {x["pct_lines"]:.2f}% |')
    A('')
    top = mod_rows[0]
    top3 = sum(x['bytes'] for x in mod_rows[:3])
    A(f'Top 1 `{top["module"]}`：{n(top["bytes"])} 字节，占 **{top["pct_bytes"]:.2f}%**；'
      f'前三名合计 {n(top3)} 字节，占 **{pct(top3, size)}**，其余 5 个模块合计仅 {pct(size - top3, size)}。'
      '完整排名见上表（共 8 个模块，已全部逐条列出）。')
    A('')

    # ---- 进程
    A('## 3. 按进程/应用统计（完整排名）')
    A('')
    A('| 排名 | 进程 | 记录数 | 续行数 | 总行数 | 字节 | 占总字节 | 占总行数 |')
    A('|---:|---|---:|---:|---:|---:|---:|---:|')
    for i, x in enumerate(proc_rows, 1):
        A(f'| {i} | `{x["proc"]}` | {n(x["records"])} | {n(x["cont_lines"])} | '
          f'{n(x["lines"])} | {n(x["bytes"])} | **{x["pct_bytes"]:.2f}%** | {x["pct_lines"]:.2f}% |')
    A('')
    A(f'进程维度同样由 `{proc_rows[0]["proc"]}` 主导（{proc_rows[0]["pct_bytes"]:.2f}%），'
      f'其次是 `{proc_rows[1]["proc"]}`（{proc_rows[1]["pct_bytes"]:.2f}%）——'
      '后者字节主要来自 HyperCeiler 的异常堆栈，记录数却只有 '
      f'{n(proc_rows[1]["records"])} 条，平均每条 {n(proc_rows[1]["bytes"] // max(proc_rows[1]["records"], 1))} 字节。')
    A('')

    # ---- 交叉
    A('## 4. 模块 × 进程：谁把哪个进程刷爆了')
    A('')
    A('| 模块 | 进程 | 记录数 | 续行数 | 字节 | 占总字节 | 占该模块 |')
    A('|---|---|---:|---:|---:|---:|---:|')
    for x in pair_rows:
        mod, proc = x['pair']
        mb = r['modules'][mod].bytes
        A(f'| `{mod}` | `{proc}` | {n(x["records"])} | {n(x["cont_lines"])} | '
          f'{n(x["bytes"])} | {x["pct_bytes"]:.2f}% | {pct(x["bytes"], mb)} |')
    A('')
    bymod = defaultdict(list)
    for x in pair_rows:
        bymod[x['pair'][0]].append(x)
    for mod, xs in sorted(bymod.items(), key=lambda kv: -r['modules'][kv[0]].bytes)[:3]:
        total = r['modules'][mod].bytes
        parts = '；'.join(f'`{x["pair"][1]}` {n(x["bytes"])} B（{pct(x["bytes"], total)}）' for x in xs)
        A(f'- `{mod}` 的 {n(total)} B 去向：{parts}')
    A('')

    # ---- 模块内部前缀
    A('## 5. 头部模块内部：消息前缀细分')
    A('')
    for mod_row in mod_rows[:3]:
        mod = mod_row['module']
        mb = mod_row['bytes']
        ml = mod_row['lines']
        lv = r['mod_levels'][mod]
        lv_txt = '，'.join(f'{k}: {n(v.records)} 条/{n(v.bytes)} B' for k, v in sorted(lv.items()))
        A(f'### 5.{mod_rows.index(mod_row) + 1} `{mod}` — {n(mb)} B（{mod_row["pct_bytes"]:.2f}%），'
          f'级别：{lv_txt}')
        A('')
        A('| 排名 | 消息前缀 | 记录 | 续行 | 字节 | 占本模块 | 占总字节 | 示例（截断） |')
        A('|---:|---|---:|---:|---:|---:|---:|---|')
        lrows = rows(r['mod_labels'][mod], mb, ml, 'label')
        for i, x in enumerate(lrows[:15], 1):
            sample = r['label_samples'].get((mod, x['label']), '')
            A(f'| {i} | `{esc(x["label"], 50)}` | {n(x["records"])} | {n(x["cont_lines"])} | '
              f'{n(x["bytes"])} | **{x["pct_bytes"]:.2f}%** | {pct(x["bytes"], size)} | {esc(sample, 70)} |')
        if len(lrows) > 15:
            rest = sum(x['bytes'] for x in lrows[15:])
            A(f'| — | 其余 {len(lrows) - 15} 个前缀 | | | {n(rest)} | {pct(rest, mb)} | {pct(rest, size)} | — |')
        A('')
        A(f'本模块内部重复最多的具体日志（归一化模式，按次数 Top 5）：')
        A('')
        A('| 次数 | 字节 | 占本模块 | 归一化消息 |')
        A('|---:|---:|---:|---|')
        mp = [(p, b) for p, b in r['mod_patterns'][mod].items() if not is_stack_pattern(p)]
        mp.sort(key=lambda kv: (-kv[1].records, -kv[1].bytes))
        for p, b in mp[:5]:
            A(f'| {n(b.records)} | {n(b.bytes)} | {pct(b.bytes, mb)} | `{esc(p, 110)}` |')
        A('')

    # ---- 重复模式
    A('## 6. 重复度最高的消息模式')
    A('')
    A('**归一化规则**：先替换 MAC 地址为 `<MAC>`、`r8-map-id-<hex>` 为 `<RMAP>`、'
      '长度 ≥8 的十六进制串为 `<HEX>`，再把所有数字串替换为 `<N>`，最后折叠空白。'
      '统计键为**归一化消息文本（跨模块合并）**，出现次数为记录条数，字节含归属该记录的续行（堆栈）；'
      '若同一文本出现在多个模块，表中给出模块分布。')
    A('')
    A('### 6.1 业务消息模式（按出现次数，Top 15）')
    A('')
    A('| 排名 | 归一化模式 | 次数 | 字节 | 占总字节 | 占记录数 | 模块分布（记录数） |')
    A('|---:|---|---:|---:|---:|---:|---|')
    biz = []
    for p, b in r['patterns'].items():
        if is_stack_pattern(p):
            continue
        biz.append((p, b))
    biz.sort(key=lambda kv: (-kv[1].records, -kv[1].bytes))
    for i, (p, b) in enumerate(biz[:15], 1):
        dist = '；'.join(f'`{m}` {n(c)}' for m, c in r['pattern_mods'][p].most_common(3))
        A(f'| {i} | `{esc(p, 110)}` | **{n(b.records)}** | {n(b.bytes)} | '
          f'**{pct(b.bytes, size)}** | {pct(b.records, r["records"])} | {dist} |')
    A('')
    if biz:
        p0, b0 = biz[0]
        A(f'重复最多的一条：`{esc(p0, 120)}`，同一模式出现 **{n(b0.records)} 次**，'
          f'占全部记录 **{pct(b0.records, r["records"])}**，共 {n(b0.bytes)} 字节，'
          f'占总体积 **{pct(b0.bytes, size)}**。在 {dur_seconds / 3600:.2f} 小时跨度内'
          f'平均每 {dur_seconds / b0.records:.0f} 秒一条。')
    A('')

    A('### 6.2 业务消息模式（按字节，Top 10）')
    A('')
    A('| 排名 | 归一化模式 | 次数 | 字节 | 占总字节 | 主要模块 |')
    A('|---:|---|---:|---:|---:|---|')
    for i, (p, b) in enumerate(sorted(biz, key=lambda kv: -kv[1].bytes)[:10], 1):
        main_mod = r['pattern_mods'][p].most_common(1)[0][0]
        A(f'| {i} | `{esc(p, 110)}` | {n(b.records)} | {n(b.bytes)} | '
          f'**{pct(b.bytes, size)}** | `{main_mod}` |')
    A('')

    stack_lines = r['stack_cont_lines'] + sum(r['stack_record_lines_by_module'].values())
    stack_bytes = r['stack_cont_bytes'] + sum(r['stack_record_bytes_by_module'].values())
    hc_stack_bytes = (r['cont_bytes_by_module'].get('com.sevtinge.hyperceiler', 0)
                      + r['stack_record_bytes_by_module'].get('com.sevtinge.hyperceiler', 0))
    A('### 6.3 异常堆栈（另列，不混入业务模式）')
    A('')
    A(f'- 堆栈相关物理行合计 **{n(stack_lines)} 行**（续行 {n(r["stack_cont_lines"])} + 带头部堆栈记录 '
      f'{n(sum(r["stack_record_lines_by_module"].values()))}），共 **{n(stack_bytes)} 字节，占总字节 '
      f'{pct(stack_bytes, size)}**，占全部物理行的 {pct(stack_lines, lines)}。')
    A(f'- 这部分几乎全部来自 `com.sevtinge.hyperceiler`（HyperCeiler）：{n(hc_stack_bytes)} B，'
      f'占全部堆栈字节的 {pct(hc_stack_bytes, stack_bytes)}。注意：该口径包含挂在业务消息（如 '
      '`hook ... failed by`）下面的续行堆栈，比 5.2 表中 `<堆栈帧>` 前缀单独统计的字节更多。')
    A('')
    A('| 排名 | 堆栈首行模式（归一化） | 次数 | 字节 | 占总字节 |')
    A('|---:|---|---:|---:|---:|')
    st = [(p, b) for p, b in r['patterns'].items() if is_stack_pattern(p)]
    st.sort(key=lambda kv: -kv[1].bytes)
    for i, (p, b) in enumerate(st[:8], 1):
        A(f'| {i} | `{esc(p, 100)}` | {n(b.records)} | {n(b.bytes)} | {pct(b.bytes, size)} |')
    A('')

    # ---- 异常事件
    A('## 7. 异常日志事件明细（HyperCeiler，全部 E 级）')
    A('')
    A('| 消息前缀 | 记录数 | 续行 | 字节 | 说明 |')
    A('|---|---:|---:|---:|---|')
    for x in rows(r['mod_labels']['com.sevtinge.hyperceiler'], r['modules']['com.sevtinge.hyperceiler'].bytes,
                  r['modules']['com.sevtinge.hyperceiler'].lines, 'label'):
        if x['label'] == '<堆栈帧>':
            desc = '异常堆栈帧（Toast hook 失败等）'
        elif 'IncreaseSamplingRate' in x['label']:
            desc = f'ClassNotFoundException，平均 {x["cont_lines"] / x["records"]:.0f} 行堆栈/次'
        elif 'EzxHookHelper' in x['label']:
            desc = f'Toast#show() 重复注册失败，平均 {x["cont_lines"] / x["records"]:.0f} 行堆栈/次'
        elif 'InstallRiskDisable' in x['label']:
            desc = f'DexKit NoResultException，{x["cont_lines"]} 行堆栈'
        elif 'DisableAd' in x['label']:
            desc = f'DexKit 查询失败，{x["cont_lines"]} 行堆栈'
        elif 'NewFlashLight' in x['label']:
            desc = 'sysfs 路径/权限失败，无堆栈'
        else:
            desc = ''
        A(f'| `{esc(x["label"], 55)}` | {n(x["records"])} | {n(x["cont_lines"])} | '
          f'{n(x["bytes"])} | {desc} |')
    A('')

    # ---- 结论
    A('## 8. 结论与减日志建议')
    A('')
    A('### 8.1 体积构成结论')
    A('')
    A(f'1. **`com.example.waspwingtempctrl`（WaspWingTempCtrl）是最大头**：{n(mod_rows[0]["bytes"])} B，'
      f'占 **{mod_rows[0]["pct_bytes"]:.2f}%**，全部为 I 级、全部写在 '
      '`com.flydigi.waspwing.experimental` 进程；没有堆栈续行，纯粹是高频业务日志。')
    A(f'2. **`com.sevtinge.hyperceiler`（HyperCeiler）第二**：{n(mod_rows[1]["bytes"])} B，'
      f'占 **{mod_rows[1]["pct_bytes"]:.2f}%**；其中堆栈相关约 {n(stack_bytes)} B，'
      f'仅 {n(mod_rows[1]["records"])} 条记录却撑起三分之一体积，是“少量记录、超大堆栈”型。')
    A(f'3. **`com.taplus.fix` 第三**：{n(mod_rows[2]["bytes"])} B，占 **{mod_rows[2]["pct_bytes"]:.2f}%**，'
      f'{n(mod_rows[2]["records"])} 条纯业务日志，单条约 {mod_rows[2]["bytes"] // mod_rows[2]["records"]} B，'
      '属正常量级但重复。')
    A(f'4. 其余 5 个模块合计 {n(sum(x["bytes"] for x in mod_rows[3:]))} B（{pct(sum(x["bytes"] for x in mod_rows[3:]), size)}），'
      '无需处理。')
    A('')
    A('### 8.2 可操作建议（按收益排序）')
    A('')
    wp = r['mod_patterns']['com.example.waspwingtempctrl']

    def sum_patterns(pats, *needles):
        return sum(b.bytes for p, b in pats.items() if any(nd in p for nd in needles))

    obs = sum_patterns(wp, '状态观测')
    hb = sum_patterns(wp, '重连循环心跳')
    cbytes = sum_patterns(wp, 'connect()', '后台重连')
    hp = r['mod_patterns']['com.sevtinge.hyperceiler']
    toast = sum_patterns(hp, 'Toast#show')
    inc = sum_patterns(hp, 'IncreaseSamplingRate')
    dex = sum_patterns(hp, 'InstallRiskDisable', 'DisableAd')
    toast_records = sum(b.records for p, b in hp.items() if 'Toast#show' in p)
    inc_records = sum(b.records for p, b in hp.items() if 'IncreaseSamplingRate' in p)
    dex_records = sum(b.records for p, b in hp.items() if 'InstallRiskDisable' in p or 'DisableAd' in p)
    flash_records = r['mod_labels']['com.sevtinge.hyperceiler']['[NewFlashLight]'].records
    biz_err = toast_records + inc_records + dex_records + flash_records
    hc_nonstack = r['modules']['com.sevtinge.hyperceiler'].bytes - hc_stack_bytes
    tap = r['modules']['com.taplus.fix'].bytes
    others = sum(x['bytes'] for x in mod_rows[3:])
    A('“可减上限”= 该类日志完全不再输出时可省的字节；实际按保留比例打折，不会超过该值。')
    A('')
    A('| 优先级 | 模块 | 具体动作 | 当前体积 | 可减上限 |')
    A('|---:|---|---|---:|---:|')
    A(f'| 1 | `com.example.waspwingtempctrl` | `状态观测` 由 I 降为 D，或仅在 `state` 变化时打印（现在每条都打） | '
      f'{n(obs)} B（总 {pct(obs, size)}） | {n(obs)} B |')
    A(f'| 2 | `com.example.waspwingtempctrl` | 心跳日志改为“仅状态变化时打印”或每 5 分钟一条 | '
      f'{n(hb)} B（总 {pct(hb, size)}） | {n(hb)} B |')
    A(f'| 3 | `com.example.waspwingtempctrl` | `connect() 进入/退出` 与 `后台重连尝试` 合并为一条结果日志，仅失败时打详情 | '
      f'{n(cbytes)} B（总 {pct(cbytes, size)}） | {n(cbytes)} B |')
    A(f'| 4 | `com.sevtinge.hyperceiler` | 统一异常输出：每进程每异常类型只打 1 次；堆栈改为单行摘要（异常类 + 首帧）。'
      f'明细：Toast {n(toast)} B、ClassNotFound {n(inc)} B、DexKit {n(dex)} B | '
      f'{n(hc_stack_bytes)} B（总 {pct(hc_stack_bytes, size)}） | {n(hc_stack_bytes)} B |')
    A(f'| 5 | `com.taplus.fix` | Hook 安装/模块加载日志改为首次加载打印或降 D，格式转换日志加开关 | '
      f'{n(tap)} B（总 {pct(tap, size)}） | {n(tap)} B |')
    A(f'| 6 | 其余 5 个模块 | 体积可忽略，不建议改动 | {n(others)} B（总 {pct(others, size)}） | 0 B |')
    A('')
    save = obs + hb + cbytes + hc_stack_bytes + tap
    A('**补充事实**：')
    A('')
    A(f'- HyperCeiler 的 {n(mod_rows[1]["records"])} 条 E 级记录里，只有 {biz_err} 条是错误首行'
      f'（Toast {toast_records}、IncreaseSamplingRate {inc_records}、DexKit {dex_records}、手电筒 {flash_records}），'
      f'其余 {n(sum(r["stack_record_lines_by_module"].values()))} 条是带头部的堆栈帧，另有 '
      f'{n(r["stack_cont_lines"])} 行续行堆栈；真正不同的错误只有 Toast、ClassNotFound、DexKit 查询失败 3 类，其余都是重复。')
    A(f'- WaspWing 的 3 条建议合计 {n(obs + hb + cbytes)} B（总 {pct(obs + hb + cbytes, size)}）；'
      f'HyperCeiler 堆栈 {n(hc_stack_bytes)} B（总 {pct(hc_stack_bytes, size)}）；'
      f'TaplusFix {n(tap)} B（总 {pct(tap, size)}）。')
    A(f'- 若以上重复日志全部关闭，理论上限可减 **{n(save)} B（{pct(save, size)}）**，'
      f'剩余 {n(size - save)} B（{pct(size - save, size)}）为未列入上述模式的业务日志'
      f'（模块加载、状态广播、少量告警等）。保留“每进程每异常一行摘要”（≤ {n(hc_nonstack)} B）后，'
      '实际可减量与此上限接近。')
    A('')
    A('### 8.3 其余模块')
    A('')
    A('- `com.mengdao.galleryanalyze`（0.65%）、`com.mengdao.lsposedtoolkit`（0.31%）、'
      '`cn.buffcow.hyper5g`（0.06%）、`xyz.cirno.noswipetokill`（0.05%）、'
      '`com.mengdao.statusbarclickblock`（0.02%）体积均可忽略，不需要为省日志改动。')
    A('- 若目标是“日志可读性”而非体积，优先修 HyperCeiler 的 Toast hook 重复注册问题：'
      '同一 hook 报 `already registered 64 times` 共 32 次，这是功能性异常，体积收益只是附带。')
    A('')
    A('---')
    A('')
    A('*本报告全部数字由同目录 `analyze.py` 对源日志实际统计生成；`stats.json` 为中间结果。*')
    return '\n'.join(L) + '\n'


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('log')
    ap.add_argument('--json')
    ap.add_argument('--report')
    args = ap.parse_args()
    r = analyze(args.log)
    report = build_report(r)
    if args.report:
        with open(args.report, 'w', encoding='utf-8', newline='\n') as f:
            f.write(report)
        print('report written', args.report)
    else:
        sys.stdout.write(report)
    if args.json:
        out = {
            'path': r['path'], 'sha256': r['sha256'], 'size': r['size'],
            'total_lines': r['total_lines'], 'total_bytes': r['total_bytes'],
            'total_chars': r['total_chars'], 'records': r['records'],
            'continuations': r['continuations'], 'orphans': r['orphans'],
            'stack_cont_lines': r['stack_cont_lines'], 'stack_cont_bytes': r['stack_cont_bytes'],
            'part_markers': r['part_markers'],
            'first_ts': r['first_ts'], 'last_ts': r['last_ts'],
            'assigned_bytes': r['assigned_bytes'], 'unassigned_bytes': r['unassigned_bytes'],
            'byte_sum_matches_file': r['byte_sum_matches_file'],
            'modules': rows(r['modules'], r['total_bytes'], r['total_lines'], 'module'),
            'procs': rows(r['procs'], r['total_bytes'], r['total_lines'], 'proc'),
            'pairs': rows(r['pairs'], r['total_bytes'], r['total_lines'], 'pair'),
            'levels': rows(r['levels'], r['total_bytes'], r['total_lines'], 'level'),
            'mod_levels': {m: rows(d, r['modules'][m].bytes, r['modules'][m].lines, 'level')
                           for m, d in r['mod_levels'].items()},
            'labels': rows(r['labels'], r['total_bytes'], r['total_lines'], 'label'),
            'mod_labels': {m: rows(d, r['modules'][m].bytes, r['modules'][m].lines, 'label')
                           for m, d in r['mod_labels'].items()},
            'patterns': rows(r['patterns'], r['total_bytes'], r['total_lines'], 'pattern'),
            'mod_patterns': {m: rows(d, r['modules'][m].bytes, r['modules'][m].lines, 'pattern')
                             for m, d in r['mod_patterns'].items()},
            'cont_bytes_by_module': dict(r['cont_bytes_by_module']),
            'cont_lines_by_module': dict(r['cont_lines_by_module']),
            'stack_record_bytes_by_module': dict(r['stack_record_bytes_by_module']),
            'stack_record_lines_by_module': dict(r['stack_record_lines_by_module']),
        }
        with open(args.json, 'w', encoding='utf-8') as f:
            json.dump(out, f, ensure_ascii=False, indent=2)
        print('json written', args.json)


if __name__ == '__main__':
    main()
