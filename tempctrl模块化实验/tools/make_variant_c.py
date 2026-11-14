#!/usr/bin/env python3
"""Build variant C: move zero-global, no-I/O pure functions into tempctrl_util.h
as static inline, keep a single translation unit."""
import os
import re
import shutil

BASE = r"D:\下载\Claude Code\杂项\tempctrl模块化实验\baseline"
OUT = r"D:\下载\Claude Code\杂项\tempctrl模块化实验\variant-c"

# 1-based inclusive ranges in baseline/tempctrl.c
MOVED = [
    (386, 389, "status_field_value"),
    (570, 577, "trim_line"),
    (580, 584, "trim_right"),
    (587, 595, "trim_value"),
    (598, 604, "config_read_path"),
    (613, 625, "config_parse_line"),
    (1275, 1279, "cpu_set_empty"),
    (1282, 1286, "cpu_set_covers"),
    (1289, 1292, "cpu_set_intersect"),
    (1295, 1298, "cpu_set_union"),
    (1301, 1305, "cpu_set_first"),
    (1308, 1328, "cpu_set_format"),
    (1341, 1372, "cpu_list_parse"),
    (1445, 1479, "clusters_accept"),
    (1525, 1540, "affinity_expand"),
    (1938, 1942, "clamp"),
    (1952, 1959, "rate_limit"),
    (2458, 2462, "cmp_zone_desc"),
    (2892, 2894, "deadzone_band"),
    (2900, 2902, "within_deadzone"),
    (3051, 3068, "wakefulness_value"),
    (3709, 3719, "ki_cut_tok_int"),
]
# extra single-line removals: clamp forward decl, CPU_CLUSTER_MAX macro, ZoneReading typedef (+ its comment)
EXTRA_REMOVE = [546, 1253, 2456, 2457]

os.makedirs(OUT, exist_ok=True)
for f in ("build_tempctrl.sh", "params_generated.h", "protocol_generated.h",
          "ki_cut.h", "patch_tls.py"):
    shutil.copy2(os.path.join(BASE, f), os.path.join(OUT, f))

src = open(os.path.join(BASE, "tempctrl.c"), encoding="utf-8").read().split("\n")

remove = set(EXTRA_REMOVE)
blocks = []
for a, b, name in MOVED:
    for ln in range(a, b + 1):
        remove.add(ln)
    body = "\n".join(src[a - 1:b])
    assert re.search(r'\b' + name + r'\s*\(', body), f"range {a}-{b} does not contain {name}"
    assert body.lstrip().startswith("static"), f"{name} not static at {a}"
    # static -> static inline, avoid double inline
    body = re.sub(r'^(\s*)static\s+(?!inline\b)', r'\1static inline ', body, count=1, flags=re.M)
    blocks.append(body)

# preserve source order (MOVED is already ascending)
header = []
header.append("""// ================================================================
// tempctrl_util.h — 零全局状态、无 I/O 的纯工具函数（static inline，单 TU）
// ================================================================
// 由 tempctrl.c 原先的实现原样移入，只改链接说明符为 static inline，
// 保持单编译单元内联。函数不读写任何文件作用域 static 变量，不做系统调用 I/O。
// 可被 host 侧单独编译测试（与 ki_cut.h 同一模式）。
// ================================================================

#ifndef TEMPCTRL_UTIL_H
#define TEMPCTRL_UTIL_H

#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include <sched.h>

#define CPU_CLUSTER_MAX 8          /* 簇数上限（手机 SoC 实际 ≤4；簇号只取单个十进制数字） */

// 初始扫描时暂存 zone 编号 + 温度（用于排序筛选）
typedef struct { int id; int raw; } ZoneReading;
""")
header.append("\n\n".join(blocks))
header.append("\n#endif /* TEMPCTRL_UTIL_H */\n")
open(os.path.join(OUT, "tempctrl_util.h"), "w", encoding="utf-8", newline="\n").write("\n".join(header))

out_lines = []
for i, ln in enumerate(src, start=1):
    if i in remove:
        continue
    out_lines.append(ln)
    if i == 33:  # after #include <math.h>
        out_lines.append("")
        out_lines.append('// 零全局纯工具层（static inline，单 TU）：线性化/限速/解析/核集合/比较器')
        out_lines.append('#include "tempctrl_util.h"')

open(os.path.join(OUT, "tempctrl.c"), "w", encoding="utf-8", newline="\n").write("\n".join(out_lines))

moved_lines = sum(b - a + 1 for a, b, _ in MOVED)
print(f"moved functions: {len(MOVED)}  moved source lines: {moved_lines}")
print(f"removed lines total: {len(remove)}")
print(f"variant-c tempctrl.c lines: {len(out_lines)}")
print(f"tempctrl_util.h lines: {len(header)}")
