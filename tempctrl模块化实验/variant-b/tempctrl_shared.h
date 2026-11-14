// ================================================================
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

/* protocol-const:start （本节由 参数定义/gen_params.py 从 protocol.def.json 生成，勿手改） */
#include "protocol_generated.h"

/* WebUI 曲线列契约：列数唯一声明（CI R7 断言本行数字 = WEBUI_ROW_FMT 的转换符个数）
 * 列序：0=时间戳，1=电池温度，2=CPU温度，3=热端温度，4=冷端温度，5=目标风速，6=目标制冷，7=下发目标制冷，8=PID输入，9=重算标记，10=实际制冷，11=实际转速
 * 列序与语义的权威声明是 参数定义/protocol.def.json 的 webui.cols。
 */
#define WEBUI_DATA_PATH       PROTO_PATH_DATA
#define WEBUI_DATA_MAX_LINES  720
#define WEBUI_DATA_COLS       12
#define WEBUI_ROW_FMT         "%ld,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d,%d\n"

/* 广播 extra 名单（action 宏在 protocol_generated.h）；须与 Java Protocol.java 一致 */
static const char *const BROADCAST_EXTRAS[] = {
    "mode",
    "temperature",
    "windOC",
    "coldOC",
    "windLevel",
    "modeCustom",
    "extra",
};
#define BROADCAST_EXTRAS_N  ((int)(sizeof(BROADCAST_EXTRAS) / sizeof(BROADCAST_EXTRAS[0])))
/* protocol-const:end */

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

typedef enum { DEVICE_NONE = 0, DEVICE_B6X, DEVICE_B7X } DeviceType;

// 初始扫描时暂存 zone 编号 + 温度（用于排序筛选）
typedef struct { int id; int raw; } ZoneReading;

// ---- 共享全局（定义在 tempctrl.c，其余模块只读/写）----
extern char affinity_spec[64];
extern int debug_exec;
extern int debug_mode;
extern DeviceType active_device;

// 调试日志宏（总开关 debug_mode）
#define debug_log(flag, fmt, ...) do { if (debug_mode && (flag)) write_log("[DEBUG] " fmt, ##__VA_ARGS__); } while(0)

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
