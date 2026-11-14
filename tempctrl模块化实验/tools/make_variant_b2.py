#!/usr/bin/env python3
"""B2: variant B + a stateful sensor module.

Deliberately naive: every file-scope static referenced by the sensor module is
turned into an extern in the shared header (no private-ownership analysis), so
the resulting extern count is an upper bound of the real cost.
"""
import os
import re
import shutil

BASE = r"D:\下载\Claude Code\杂项\tempctrl模块化实验\baseline"
OUT = r"D:\下载\Claude Code\杂项\tempctrl模块化实验\variant-b2"

UTIL = [(386, 389, "status_field_value"), (570, 577, "trim_line"), (580, 584, "trim_right"),
        (587, 595, "trim_value"), (598, 604, "config_read_path"), (613, 625, "config_parse_line"),
        (1275, 1279, "cpu_set_empty"), (1282, 1286, "cpu_set_covers"),
        (1289, 1292, "cpu_set_intersect"), (1295, 1298, "cpu_set_union"),
        (1301, 1305, "cpu_set_first"), (1308, 1328, "cpu_set_format"),
        (1341, 1372, "cpu_list_parse"), (1445, 1479, "clusters_accept"),
        (1525, 1540, "affinity_expand"), (1938, 1942, "clamp"),
        (1952, 1959, "rate_limit"), (2458, 2462, "cmp_zone_desc"),
        (2892, 2894, "deadzone_band"), (2900, 2902, "within_deadzone"),
        (3051, 3068, "wakefulness_value"), (3709, 3719, "ki_cut_tok_int")]
AFFINITY = [(1375, 1383, "cpu_list_read"), (1386, 1390, "read_dir_cpus"),
            (1393, 1413, "read_self_cpuset_group"), (1421, 1431, "cpuset_join"),
            (1482, 1501, "clusters_probe_policy"), (1508, 1516, "clusters_probe"),
            (1543, 1558, "read_status_field"), (1565, 1578, "cpu_aff_note"),
            (1590, 1742, "apply_cpu_affinity"), (1762, 1781, "cpu_affinity_reassert")]
PROC = [(2648, 2652, "mono_ms"), (2660, 2664, "mono_now"), (2670, 2680, "wait_readable"),
        (2689, 2728, "wait_child_timeout"), (2738, 2757, "reap_am_children"),
        (2762, 2816, "send_am_broadcast"), (3077, 3140, "is_screen_awake"),
        (3143, 3205, "is_foreground_pkg"), (3213, 3237, "run_shell_timeout"),
        (3240, 3244, "run_cmd_silent"), (3252, 3263, "app_installed_probe"),
        (3396, 3412, "am_start_app"), (3501, 3515, "force_kill_and_relaunch"),
        (3596, 3601, "evict_app_if_eligible")]
SENSOR = [(2046, 2078, "read_single_status"), (2083, 2115, "read_status_ble_both"),
          (2118, 2129, "select_active_device"), (2135, 2153, "update_active_limits"),
          (2174, 2272, "read_cooler_params"), (2280, 2290, "read_sysfs_int"),
          (2296, 2302, "read_thermal_zone_raw"), (2311, 2339, "read_battery_temp"),
          (2362, 2372, "close_cpu_zone_fds"), (2375, 2382, "refresh_cpu_zone_fds"),
          (2388, 2405, "read_kept_zone_raw"), (2412, 2421, "close_valid_zone_fds"),
          (2424, 2431, "refresh_valid_zone_fds"), (2437, 2453, "read_valid_zone_raw"),
          (2469, 2527, "rescan_cpu_zones"), (2530, 2539, "maybe_rescan_cpu_zones"),
          (2550, 2569, "read_cpu_temp_max")]

PROC_EXTRA = [(365, 365, "alarm_fired"), (2733, 2735, "am_pending"), (4872, 4875, "alarm_handler")]
AFFINITY_EXTRA = [(1259, 1259, "cpu_aff_last_group"), (1269, 1269, "cpu_aff_reason")]

REMOVE = set()
REMOVE |= set(range(78, 104))          # PRIVATE_DIR + protocol-const region
REMOVE |= {126, 127, 128, 129}
REMOVE |= {406, 407, 408}
REMOVE |= {520}
REMOVE |= {545, 546, 547, 548, 551, 563}
REMOVE |= {1252, 1253, 1256}
REMOVE |= {1438, 1439}
REMOVE |= {2456, 2457}
REMOVE |= {2640, 2643, 2644, 2645}
REMOVE |= {2732}
REMOVE |= {64, 355, 2344, 2357}        # sensor macros

os.makedirs(OUT, exist_ok=True)
for f in ("build_tempctrl.sh", "params_generated.h", "protocol_generated.h", "ki_cut.h", "patch_tls.py"):
    shutil.copy2(os.path.join(BASE, f), os.path.join(OUT, f))
src = open(os.path.join(BASE, "tempctrl.c"), encoding="utf-8").read().split("\n")

# --- AST: static var name -> (type, definition line) ---
ast = {}
for ln in open(os.path.join(BASE, "ast.txt"), encoding="utf-8", errors="replace"):
    m = re.search(r"VarDecl .*? (\w+) '(.*?)' static", ln)
    if not m:
        continue
    name, t = m.group(1), m.group(2)
    t = t.split("':'")[0]
    lm = re.search(r"<(?:tempctrl\.c:|line:)(\d+):", ln)
    ast[name] = (t, int(lm.group(1)) if lm else None)


def take(ranges, label):
    out = []
    for a, b, name in ranges:
        for ln in range(a, b + 1):
            REMOVE.add(ln)
        body = "\n".join(src[a - 1:b])
        assert name in body, f"{label}: range {a}-{b} missing {name}"
        assert body.lstrip().startswith("static"), f"{label}: {name} not static"
        out.append(re.sub(r'^(\s*)static\s+(?:inline\s+)?', r'\1', body, count=1, flags=re.M))
    return out


util_b = take(UTIL, "util"); aff_b = take(AFFINITY, "affinity")
proc_b = take(PROC, "proc"); sensor_b = take(SENSOR, "sensor")
extra_proc = ["\n".join(src[a - 1:b]) for a, b, _ in PROC_EXTRA]
for a, b, _ in PROC_EXTRA + AFFINITY_EXTRA:
    REMOVE |= set(range(a, b + 1))
extra_aff = ["\n".join(src[a - 1:b]) for a, b, _ in AFFINITY_EXTRA]

# sensor-referenced statics (from analyzer JSON)
import json
funcs = json.load(open(os.path.join(os.path.dirname(__file__), "funcs.json")))
byname = {r["name"]: r for r in funcs["functions"]}
sensor_refs = set()
for _, _, n in SENSOR:
    # all identifiers in the body, intersected with real file-scope VarDecls;
    # catches arrays the crude static_refs parser missed.
    sensor_refs |= set(re.findall(r"[A-Za-z_][A-Za-z0-9_]*", byname[n]["body"]))
sensor_vars = sorted(x for x in sensor_refs if x in ast)
assert len(sensor_vars) >= 68, len(sensor_vars)


def extern_decl(name):
    t, _ = ast[name]
    if "[" in t:
        i = t.index("[")
        return f"extern {t[:i]} {name}{t[i:]};"
    return f"extern {t} {name};"


# remove static from sensor vars' definitions in core
for n in sensor_vars:
    line_no = ast[n][1]
    if line_no and re.match(r'^\s*static\s+', src[line_no - 1]):
        src[line_no - 1] = re.sub(r'^(\s*)static\s+', r'\1', src[line_no - 1], count=1)

region = "\n".join(src[79:103])

shared = f"""// ================================================================
// tempctrl_shared.h — 变体 B2（含 sensor 模块）
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

#define AM_BIN      "/system/bin/am"
#define PM_BIN      "/system/bin/pm"
#define DUMPSYS_BIN "/system/bin/dumpsys"
#define SH_BIN      "/system/bin/sh"
#define APP_PKG_B6X_OLD "com.flydigi.waspwing.experimental"
#define APP_PKG_B6X_NEW "com.flydigi.waspwing.experimentanliuliu"
#define APP_PKG_B7X "com.fdg.flashplay.farsef"
#define CPUSET_DIR "/dev/cpuset"
#define CPU_CLUSTER_MAX 8
#define CPU_AFF_REASSERT_SEC 300
#define CLUSTER_SRC_POLICY   "cpufreq/policy"
#define CLUSTER_SRC_SINGLE   "单簇(降级)"
#define BROADCAST_VAL_MAX   12
#define CMD_TIMEOUT_SEC     5
#define CMD_KILL_GRACE_SEC  1
#define CMD_RESULT_TIMEOUT  (-2)
#define AM_PENDING_MAX 8
#define COLD_MIN             1
#define REPORT_OK_N 2
#define CPU_ZONE_MAX_CACHE 64
#define CPU_ZONE_FD_INVALID (-1)

typedef enum {{ DEVICE_NONE = 0, DEVICE_B6X, DEVICE_B7X }} DeviceType;
typedef struct {{ int id; int raw; }} ZoneReading;

// ---- 共享全局 ----
extern char affinity_spec[64];
extern int debug_exec;
extern int debug_mode;
extern DeviceType active_device;
{chr(10).join(extern_decl(n) for n in sensor_vars if n not in ('active_device','debug_exec','debug_mode','affinity_spec'))}

// ---- 纯工具层 ----
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

// ---- 亲和 ----
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

// ---- 子进程/广播/时钟 ----
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

// ---- 传感器/温度采集 ----
void read_single_status(const char *path, int is_b6_file, int *out_connected, time_t *out_connected_at, int *out_model);
void read_status_ble_both(void);
DeviceType select_active_device(void);
void update_active_limits(void);
void read_cooler_params(void);
int read_sysfs_int(const char *path);
int read_thermal_zone_raw(int zone_id);
int read_battery_temp(void);
void close_cpu_zone_fds(void);
void refresh_cpu_zone_fds(void);
int read_kept_zone_raw(int idx);
void close_valid_zone_fds(void);
void refresh_valid_zone_fds(void);
int read_valid_zone_raw(int idx);
void rescan_cpu_zones(void);
void maybe_rescan_cpu_zones(void);
int read_cpu_temp_max(void);

// ---- tempctrl.c 提供给其它模块 ----
void write_log(const char *fmt, ...);
void reset_cpu_affinity_defaults(void);
void app_process_scan(const char *pkgs[], int alive[], int count);
const char *resolve_launch_pkg(int *out_installed);
void invalidate_report_ok(void);
#define debug_log(flag, fmt, ...) do {{ if (debug_mode && (flag)) write_log("[DEBUG] " fmt, ##__VA_ARGS__); }} while(0)

#endif
"""
open(os.path.join(OUT, "tempctrl_shared.h"), "w", encoding="utf-8", newline="\n").write(shared)


def module_file(extra, bodies):
    return ("// 变体 B2 实验模块：由 tempctrl.c 原样搬出，仅改链接说明符。\n"
            "#define _GNU_SOURCE\n#include \"tempctrl_shared.h\"\n\n"
            + "\n\n".join(extra + bodies) + "\n")


open(os.path.join(OUT, "tempctrl_util.c"), "w", encoding="utf-8", newline="\n").write(module_file([], util_b))
open(os.path.join(OUT, "tempctrl_affinity.c"), "w", encoding="utf-8", newline="\n").write(module_file(extra_aff, aff_b))
open(os.path.join(OUT, "tempctrl_proc.c"), "w", encoding="utf-8", newline="\n").write(module_file(extra_proc, proc_b))
open(os.path.join(OUT, "tempctrl_sensor.c"), "w", encoding="utf-8", newline="\n").write(module_file([], sensor_b))

out_lines = []
for i, ln in enumerate(src, start=1):
    if i in REMOVE:
        continue
    if i == 33:
        out_lines += ["", '#include "tempctrl_shared.h"', ""]
    if i in (152, 233, 235, 521):
        ln = re.sub(r'^static\s+', '', ln)
    if i in (976, 1879, 2164, 3013, 3369):
        ln = re.sub(r'^static\s+', '', ln)
    out_lines.append(ln)
open(os.path.join(OUT, "tempctrl.c"), "w", encoding="utf-8", newline="\n").write("\n".join(out_lines))

print(f"modules: util {len(UTIL)} / affinity {len(AFFINITY)} / proc {len(PROC)} / sensor {len(SENSOR)}")
print(f"sensor extern vars: {len(sensor_vars)}")
print(f"core lines: {len(out_lines)}")
