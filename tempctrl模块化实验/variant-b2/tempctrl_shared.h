// ================================================================
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

typedef enum { DEVICE_NONE = 0, DEVICE_B6X, DEVICE_B7X } DeviceType;
typedef struct { int id; int raw; } ZoneReading;

// ---- 共享全局 ----
extern char affinity_spec[64];
extern int debug_exec;
extern int debug_mode;
extern DeviceType active_device;
extern int BATT_TEMP_DIVISOR;
extern char BATT_TEMP_PATH[128];
extern int CPU_TEMP_DIVISOR;
extern char CPU_TEMP_PATH_FMT[128];
extern int CPU_ZONE_MAX;
extern int CPU_ZONE_MIN;
extern int active_fan_max;
extern int active_pid_cold_max;
extern time_t active_status_mtime;
extern int app_ble_connected;
extern int b6_connected;
extern time_t b6_connected_at;
extern time_t b6_last_at;
extern int b6_last_owner;
extern int b6_model;
extern int b6_owner;
extern int b7_connected;
extern time_t b7_connected_at;
extern int b7_fan_rpm_max;
extern time_t b7_last_at;
extern int b7_last_owner;
extern int b7_model;
extern int b7_pid_cold_max;
extern int batt_cached_temp;
extern int batt_mtime_stale;
extern time_t batt_temp_mtime;
extern int batt_temp_updated;
extern int cooler_cold_real;
extern int cooler_cold_run;
extern int cooler_cold_temp;
extern int cooler_hot_temp;
extern int cooler_rpm_real;
extern int cooler_rpm_run;
extern int cpu_zone_cache[64];
extern int cpu_zone_count;
extern int cpu_zone_fd[64];
extern int cpu_zone_fd_inited;
extern int cpu_zone_keep;
extern time_t cpu_zone_last_scan;
extern int cpu_zone_list_dirty;
extern int cpu_zone_rescan_cycles;
extern int cpu_zone_scanned;
extern int cpu_zone_valid[64];
extern int cpu_zone_valid_count;
extern int cpu_zone_valid_fd[64];
extern int cpu_zone_valid_fd_inited;
extern int debug_sensor;
extern int fan_rpm_max;
extern int fan_rpm_min;
extern int hot_derate;
extern int hot_derate_cooldown;
extern int hot_recover_cooldown;
extern int last_owner;
extern time_t last_owner_at;
extern int meta_connected;
extern time_t meta_connected_at;
extern time_t meta_last_at;
extern int meta_last_owner;
extern int meta_model;
extern int meta_owner_ble;
extern int pid_cold_max;
extern int report_ok;
extern int report_ok_streak;
extern int rpm_run_missing_logged;
extern int rpm_run_missing_streak;
extern char status_file_path_b6[512];
extern char status_file_path_b7[512];
extern int status_meta_is_b6;
extern unsigned long status_meta_seq;
extern int status_meta_valid;
extern unsigned long status_seq;

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
#define debug_log(flag, fmt, ...) do { if (debug_mode && (flag)) write_log("[DEBUG] " fmt, ##__VA_ARGS__); } while(0)

#endif
