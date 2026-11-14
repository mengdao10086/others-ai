#!/usr/bin/env python3
"""Build variant B: split tempctrl.c into 4 translation units.

  tempctrl_util.c      pure functions (zero global state, no I/O)
  tempctrl_affinity.c  CPU affinity probing / applying
  tempctrl_proc.c      clocks, subprocesses, am broadcast
  tempctrl.c           everything else (config, sensor, control, app, main)

Shared declarations/definitions live in tempctrl_shared.h.  Only relocations,
no behaviour changes.  Generated protocol-const region is moved verbatim.
"""
import os
import re
import shutil

BASE = r"D:\下载\Claude Code\杂项\tempctrl模块化实验\baseline"
OUT = r"D:\下载\Claude Code\杂项\tempctrl模块化实验\variant-b"

# (start, end, name) 1-based inclusive; start = declaration line
UTIL = [
    (386, 389, "status_field_value"), (570, 577, "trim_line"),
    (580, 584, "trim_right"), (587, 595, "trim_value"),
    (598, 604, "config_read_path"), (613, 625, "config_parse_line"),
    (1275, 1279, "cpu_set_empty"), (1282, 1286, "cpu_set_covers"),
    (1289, 1292, "cpu_set_intersect"), (1295, 1298, "cpu_set_union"),
    (1301, 1305, "cpu_set_first"), (1308, 1328, "cpu_set_format"),
    (1341, 1372, "cpu_list_parse"), (1445, 1479, "clusters_accept"),
    (1525, 1540, "affinity_expand"), (1938, 1942, "clamp"),
    (1952, 1959, "rate_limit"), (2458, 2462, "cmp_zone_desc"),
    (2892, 2894, "deadzone_band"), (2900, 2902, "within_deadzone"),
    (3051, 3068, "wakefulness_value"), (3709, 3719, "ki_cut_tok_int"),
]
AFFINITY = [
    (1375, 1383, "cpu_list_read"), (1386, 1390, "read_dir_cpus"),
    (1393, 1413, "read_self_cpuset_group"), (1421, 1431, "cpuset_join"),
    (1482, 1501, "clusters_probe_policy"), (1508, 1516, "clusters_probe"),
    (1543, 1558, "read_status_field"), (1565, 1578, "cpu_aff_note"),
    (1590, 1742, "apply_cpu_affinity"), (1762, 1781, "cpu_affinity_reassert"),
]
PROC = [
    (2648, 2652, "mono_ms"), (2660, 2664, "mono_now"),
    (2670, 2680, "wait_readable"), (2689, 2728, "wait_child_timeout"),
    (2738, 2757, "reap_am_children"), (2762, 2816, "send_am_broadcast"),
    (3077, 3140, "is_screen_awake"), (3143, 3205, "is_foreground_pkg"),
    (3213, 3237, "run_shell_timeout"), (3240, 3244, "run_cmd_silent"),
    (3252, 3263, "app_installed_probe"), (3396, 3412, "am_start_app"),
    (3501, 3515, "force_kill_and_relaunch"),
    (3596, 3601, "evict_app_if_eligible"),
]
PROC_EXTRA = [(365, 365, "alarm_fired"), (2733, 2735, "am_pending"),
              (4872, 4875, "alarm_handler")]
AFFINITY_EXTRA = [(1259, 1259, "cpu_aff_last_group"),
                  (1269, 1269, "cpu_aff_reason")]

# Single lines / ranges removed from core (moved to shared header or modules)
REMOVE = set()
REMOVE |= {78, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94,
           95, 96, 97, 98, 99, 100, 101, 102, 103}          # PRIVATE_DIR + protocol-const region
REMOVE |= {126, 127, 128, 129}                               # bin paths
REMOVE |= {406, 407, 408}                                    # APP_PKG_*
REMOVE |= {520}                                              # DeviceType typedef
REMOVE |= {545, 546, 547, 548, 551, 563}                      # forward decls + debug_log macro (moved)
REMOVE |= {1252, 1253, 1256}                                 # CPUSET_DIR / CPU_CLUSTER_MAX / REASSERT
REMOVE |= {1438, 1439}                                       # CLUSTER_SRC_*
REMOVE |= {2456, 2457}                                       # ZoneReading typedef
REMOVE |= {2640, 2643, 2644, 2645}                           # BROADCAST_VAL_MAX / CMD_*
AM_PENDING_MAX_LINE = 2732

os.makedirs(OUT, exist_ok=True)
for f in ("build_tempctrl.sh", "params_generated.h", "protocol_generated.h",
          "ki_cut.h", "patch_tls.py"):
    shutil.copy2(os.path.join(BASE, f), os.path.join(OUT, f))

src = open(os.path.join(BASE, "tempctrl.c"), encoding="utf-8").read().split("\n")


def take(ranges, label):
    out = []
    for a, b, name in ranges:
        for ln in range(a, b + 1):
            REMOVE.add(ln)
        body = "\n".join(src[a - 1:b])
        assert name in body, f"{label}: range {a}-{b} missing {name}"
        if label != "extra":
            assert body.lstrip().startswith("static"), f"{label}: {name} not static"
        out.append(body)
    return out


def strip_static(block):
    return re.sub(r'^(\s*)static\s+(?:inline\s+)?', r'\1', block, count=1, flags=re.M)


util_bodies = [strip_static(b) for b in take(UTIL, "util")]
aff_bodies = [strip_static(b) for b in take(AFFINITY, "affinity")]
proc_bodies = [strip_static(b) for b in take(PROC, "proc")]
extra_proc = take(PROC_EXTRA, "extra")
extra_aff = take(AFFINITY_EXTRA, "extra")

# Remove AM_PENDING_MAX too
REMOVE.add(AM_PENDING_MAX_LINE)

# --- shared header ---
region = "\n".join(src[79:103])  # lines 80..103 verbatim (protocol-const region)

shared = f"""// ================================================================
// tempctrl_shared.h — 变体 B 的跨 TU 声明（实验产物）
// ================================================================
// 宏/类型/共享全局/跨模块函数原型。生成区块（protocol-const）从
// tempctrl.c 原样搬入，未改内容。
// ================================================================

#ifndef TEMPCTRL_SHARED_H
#define TEMPCTRL_SHARED_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <signal.h>
#include <time.h>
#include <stdarg.h>
#include <errno.h>
#include <sched.h>
#include <sys/stat.h>
#include <sys/file.h>
#include <sys/wait.h>
#include <sys/time.h>
#include <sys/select.h>
#include <fcntl.h>
#include <dirent.h>
#include <limits.h>
#include <math.h>

#define PRIVATE_DIR "/data/data/com.example.waspwingtempctrl/files"

#include "params_generated.h"

{region}

// 系统命令路径
#define AM_BIN      "/system/bin/am"
#define PM_BIN      "/system/bin/pm"
#define DUMPSYS_BIN "/system/bin/dumpsys"
#define SH_BIN      "/system/bin/sh"

// 三方 app 包名
#define APP_PKG_B6X_OLD "com.flydigi.waspwing.experimental"
#define APP_PKG_B6X_NEW "com.flydigi.waspwing.experimentanliuliu"
#define APP_PKG_B7X "com.fdg.flashplay.farsef"

// CPU 亲和
#define CPUSET_DIR "/dev/cpuset"
#define CPU_CLUSTER_MAX 8
#define CPU_AFF_REASSERT_SEC 300
#define CLUSTER_SRC_POLICY   "cpufreq/policy"
#define CLUSTER_SRC_SINGLE   "单簇(降级)"

// 广播 / 外部命令
#define BROADCAST_VAL_MAX   12
#define CMD_TIMEOUT_SEC     5
#define CMD_KILL_GRACE_SEC  1
#define CMD_RESULT_TIMEOUT  (-2)
#define AM_PENDING_MAX 8

typedef enum {{ DEVICE_NONE = 0, DEVICE_B6X, DEVICE_B7X }} DeviceType;

// 初始扫描时暂存 zone 编号 + 温度（用于排序筛选）
typedef struct {{ int id; int raw; }} ZoneReading;

// ---- 共享全局（定义在 tempctrl.c，其余模块只读/写）----
extern char affinity_spec[64];
extern int debug_exec;
extern int debug_mode;
extern DeviceType active_device;

// 调试日志宏（总开关 debug_mode）
#define debug_log(flag, fmt, ...) do {{ if (debug_mode && (flag)) write_log("[DEBUG] " fmt, ##__VA_ARGS__); }} while(0)

// ---- 纯工具层（tempctrl_util.c）----
const char *status_field_value(const char *line, const char *field);
char *trim_line(char *line);
void trim_right(char *s);
char *trim_value(char *s);
void config_read_path(char *dest, size_t dest_size, char *src);
char *config_parse_line(char *line, char **out_key);
int cpu_set_empty(const cpu_set_t *set);
int cpu_set_covers(const cpu_set_t *super, const cpu_set_t *sub);
void cpu_set_intersect(cpu_set_t *dst, const cpu_set_t *other);
void cpu_set_union(cpu_set_t *dst, const cpu_set_t *other);
int cpu_set_first(const cpu_set_t *set);
void cpu_set_format(const cpu_set_t *set, char *out, size_t size);
int cpu_list_parse(const char *s, cpu_set_t *set);
int clusters_accept(cpu_set_t *clusters, int n, const cpu_set_t *present);
int affinity_expand(const char *spec, const cpu_set_t *clusters, int nclusters, cpu_set_t *out);
int clamp(int val, int lo, int hi);
void rate_limit(int *actual, int desired, int up_limit, int down_limit);
int cmp_zone_desc(const void *a, const void *b);
int deadzone_band(int deadzone);
int within_deadzone(int diff, int deadzone, int room);
int wakefulness_value(const char *line, char *out, size_t outSize);
int ki_cut_tok_int(const char *p, size_t len, int *out);

// ---- 亲和模块（tempctrl_affinity.c）----
int cpu_list_read(const char *path, cpu_set_t *set);
int read_dir_cpus(const char *dir, cpu_set_t *set);
int read_self_cpuset_group(char *out, size_t size);
int cpuset_join(const char *dir);
int clusters_probe_policy(cpu_set_t *clusters, const cpu_set_t *present);
int clusters_probe(cpu_set_t *clusters, const char **src);
int read_status_field(const char *field, char *out, size_t size);
void cpu_aff_note(char *reason, size_t size, const char *fmt, ...);
void apply_cpu_affinity(void);
int cpu_affinity_reassert(void);

// ---- 子进程/广播/时钟（tempctrl_proc.c）----
long long mono_ms(void);
time_t mono_now(void);
int wait_readable(int fd, long long deadline_ms);
int wait_child_timeout(pid_t pid, int *out_status, int timeout_sec);
void reap_am_children(void);
void send_am_broadcast(int mode, int target, int windOC, int coldOC, int windLevel);
int is_screen_awake(void);
int is_foreground_pkg(const char *pkg);
int run_shell_timeout(const char *cmd);
int run_cmd_silent(const char *fmt, const char *arg);
int app_installed_probe(const char *pkg);
int am_start_app(const char *pkg);
void force_kill_and_relaunch(void);
void evict_app_if_eligible(int alive, const char *keep, const char *pkg);

// ---- tempctrl.c 提供给其它模块 ----
void write_log(const char *fmt, ...);
void reset_cpu_affinity_defaults(void);
void app_process_scan(const char *pkgs[], int alive[], int count);
const char *resolve_launch_pkg(int *out_installed);

#endif /* TEMPCTRL_SHARED_H */
"""
open(os.path.join(OUT, "tempctrl_shared.h"), "w", encoding="utf-8", newline="\n").write(shared)


def module_file(path, extra_blocks, bodies):
    head = ("// 变体 B 实验模块：由 tempctrl.c 原样搬出，仅改链接说明符。\n"
            "#define _GNU_SOURCE\n#include \"tempctrl_shared.h\"\n\n")
    return head + "\n\n".join(extra_blocks + bodies) + "\n"


open(os.path.join(OUT, "tempctrl_util.c"), "w", encoding="utf-8", newline="\n").write(
    module_file("util", [], util_bodies))
open(os.path.join(OUT, "tempctrl_affinity.c"), "w", encoding="utf-8", newline="\n").write(
    module_file("affinity", extra_aff, aff_bodies))
open(os.path.join(OUT, "tempctrl_proc.c"), "w", encoding="utf-8", newline="\n").write(
    module_file("proc", extra_proc, proc_bodies))

# --- core ---
out_lines = []
for i, ln in enumerate(src, start=1):
    if i in REMOVE:
        continue
    if i == 33:  # after <math.h>
        out_lines.append("")
        out_lines.append('#include "tempctrl_shared.h"')
        out_lines.append("")
    # externalise shared globals
    if i in (152, 233, 235, 521):
        ln = re.sub(r'^static\s+', '', ln)
    # externalise functions used by other modules
    if i in (976, 1879, 3013, 3369):
        ln = re.sub(r'^static\s+', '', ln)
    out_lines.append(ln)
open(os.path.join(OUT, "tempctrl.c"), "w", encoding="utf-8", newline="\n").write("\n".join(out_lines))

print(f"util: {len(UTIL)} funcs / {sum(b-a+1 for a,b,_ in UTIL)} lines")
print(f"affinity: {len(AFFINITY)} funcs / {sum(b-a+1 for a,b,_ in AFFINITY)} lines")
print(f"proc: {len(PROC)} funcs / {sum(b-a+1 for a,b,_ in PROC)} lines")
print(f"removed lines from core: {len(REMOVE)}; core lines: {len(out_lines)}")
