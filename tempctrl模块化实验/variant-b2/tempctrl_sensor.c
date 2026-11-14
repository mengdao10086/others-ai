// 变体 B2 实验模块：由 tempctrl.c 原样搬出，仅改链接说明符。
#define _GNU_SOURCE
#include "tempctrl_shared.h"

void read_single_status(const char *path, int is_b6_file,
                               int *out_connected, time_t *out_connected_at,
                               int *out_model) {
    *out_connected = 0;
    *out_connected_at = 0;
    if (out_model) *out_model = 0;
    FILE *f = fopen(path, "r");
    if (!f) return;
    char line[64];
    while (fgets(line, sizeof(line), f)) {
        const char *v;
        if ((v = status_field_value(line, STF_BLE)) != NULL) {
            int ble = atoi(v);
            *out_connected = (ble != 0);
            if (is_b6_file) {
                if (ble == 1 || ble == 2) b6_owner = ble;
                // BLE=1/2 不设 model，由 read_status_ble_both 按文件路径兜底型号 6
            } else if (out_model && (ble == 6 || ble == 7)) {
                *out_model = ble;   // B7X 文件型号编码
            }
        } else if ((v = status_field_value(line, STF_CONNECTED_AT)) != NULL) {
            *out_connected_at = (time_t)atol(v);
        } else if ((v = status_field_value(line, STF_BLE_OWNER_LAST)) != NULL) {
            int owner = 0;
            long at = 0;
            if (sscanf(v, "%d %ld", &owner, &at) == 2 && owner > 0) {
                if (is_b6_file) { b6_last_owner = owner; b6_last_at = (time_t)at; }
                else { b7_last_owner = owner; b7_last_at = (time_t)at; }
            }
        }
    }
    fclose(f);
}

void read_status_ble_both(void) {
    // 同一 1s 拍内 read_cooler_params 已解析过其中一台的文件 → 复用那份结果，只现场读另一台（R40）。
    // 跨拍缓存失效（序号不等），模块改写后下一次调用必然重读；值/判定语义与两次 read_single_status 完全一致。
    int b6_fresh = status_meta_valid && status_meta_seq == status_seq && status_meta_is_b6;
    int b7_fresh = status_meta_valid && status_meta_seq == status_seq && !status_meta_is_b6;

    if (b6_fresh) {
        b6_connected = meta_connected;
        b6_connected_at = meta_connected_at;
        b6_model = 0;                                   // 与 read_single_status 先清 out_model 一致
        if (meta_owner_ble) b6_owner = meta_owner_ble;  // BLE=1/2 才写；缺失不改全局（同原语义）
        if (meta_last_owner > 0) { b6_last_owner = meta_last_owner; b6_last_at = meta_last_at; }
    } else {
        read_single_status(status_file_path_b6, 1, &b6_connected, &b6_connected_at, &b6_model);
    }

    if (b7_fresh) {
        b7_connected = meta_connected;
        b7_connected_at = meta_connected_at;
        b7_model = meta_model;                          // BLE=6/7 的型号；其余留 0
        if (meta_last_owner > 0) { b7_last_owner = meta_last_owner; b7_last_at = meta_last_at; }
    } else {
        read_single_status(status_file_path_b7, 0, &b7_connected, &b7_connected_at, &b7_model);
    }
    // B6X BLE=1/2 型号未知 → 按文件路径兜底（B6X app 默认连 B6X 散热器，型号按 6）
    if (b6_connected && b6_model == 0) b6_model = 6;
    // B7X BLE≠6/7（旧编码 1/2）→ 按文件路径兜底型号 7
    if (b7_connected && b7_model == 0) b7_model = 7;
    // BLE_OWNER_LAST 跨文件合并——取最近一次连接者（时间最新者）。
    // 时间戳相等（同秒连接，1 秒分辨率）时固定选 B6X 侧；两文件均无记录时 last_owner=0
    if (b7_last_at > b6_last_at) { last_owner = b7_last_owner; last_owner_at = b7_last_at; }
    else { last_owner = b6_last_owner; last_owner_at = b6_last_at; }
}

DeviceType select_active_device(void) {
    if (b6_connected && !b7_connected) return DEVICE_B6X;
    if (!b6_connected && b7_connected) return DEVICE_B7X;
    if (!b6_connected && !b7_connected) return DEVICE_NONE;

    // 两者都连：比较时间戳
    if (b6_connected_at > 0 && b7_connected_at > 0)
        return (b6_connected_at <= b7_connected_at) ? DEVICE_B6X : DEVICE_B7X;
    if (b6_connected_at > 0) return DEVICE_B6X;  // 仅 B6X 有精确时间戳
    if (b7_connected_at > 0) return DEVICE_B7X;  // 仅 B7X 有精确时间戳
    return DEVICE_B6X;  // 都无时间戳，B6X 优先
}

void update_active_limits(void) {
    // 按 status 回传的实际设备型号选择限制，而非按包名猜测。
    // （B7X 文件 BLE=6/7 回传实际型号；B6X 文件 BLE=1/2 型号未知，b6_model 已兜底为 6）
    int model = (active_device == DEVICE_B7X) ? b7_model : b6_model;
    if (model != 6 && model != 7)
        model = (active_device == DEVICE_B7X) ? 7 : 6;  // 型号未知按包名兜底
    if (model == 7) {
        active_fan_max  = b7_fan_rpm_max;    // FAN_RPM_RANGE 第三值（B7X），默认同 B6X
        active_pid_cold_max = b7_pid_cold_max; // PID_COLD_RANGE 第三值（B7X），默认同 B6X
    } else {
        active_fan_max  = fan_rpm_max;        // 使用 profile.conf 中的配置值
        active_pid_cold_max = pid_cold_max;   // 使用 profile.conf 中的配置值
    }
    // 基准上限变了（切设备 / 改配置）：旧的「相对削减量」及其冷却一并清零。
    // 否则旧基线（如 B7X 上 actual_cold>190）会算出负的 hot_derate，使生效上限反向高于配置（审查 S2-4）。
    hot_derate = 0;
    hot_derate_cooldown = 0;
    hot_recover_cooldown = 0;
}

void read_cooler_params(void) {
    const char *path = (active_device == DEVICE_B7X) ? status_file_path_b7 : status_file_path_b6;
    const int is_b6_path = (active_device != DEVICE_B7X);
    active_status_mtime = 0;   // 本拍先置未知；下面成功打开后刷新
    status_meta_valid = 0;     // 缓存作废；本帧成功读完后重新置有效

    // 元数据缓存字段按 read_single_status 的「先清零」语义初始化（R40）
    meta_connected = 0; meta_connected_at = 0; meta_model = 0;
    meta_owner_ble = 0; meta_last_owner = 0; meta_last_at = 0;

    cooler_hot_temp = -1; cooler_cold_temp = -1;
    cooler_rpm_real = -1; cooler_rpm_run = -1; cooler_cold_real = -1; cooler_cold_run = -1;

    FILE *f = fopen(path, "r");
    if (!f) {   // 本帧读不到 status：按异常帧处理，不许沿用断连前的「已就绪」
        invalidate_report_ok();
        return;
    }
    {   // 复用已打开的 fd 取 mtime（is_app_alive 同拍紧随其后调用，见其注释）
        struct stat fst;
        if (fstat(fileno(f), &fst) == 0) active_status_mtime = fst.st_mtime;
    }
    char line[64];
    int run_mode_seen = 0;   // 本帧是否读到 RUN_MODE（与 COLD_REAL 同块写入，lastWaspWingInfo 就绪才有）
    int rpm_run_seen = 0;    // 本帧是否读到 RPM_RUN（诊断旧模块 / getSpeed 不可用）
    while (fgets(line, sizeof(line), f)) {
        const char *v;
        if ((v = status_field_value(line, STF_BLE)) != NULL) {
            int ble = atoi(v);
            app_ble_connected = (ble != 0);
            meta_connected = (ble != 0);
            if (is_b6_path) {
                if (ble == 1 || ble == 2) meta_owner_ble = ble;
            } else if (ble == 6 || ble == 7) {
                meta_model = ble;
            }
        } else if ((v = status_field_value(line, STF_CONNECTED_AT)) != NULL) {
            meta_connected_at = (time_t)atol(v);
        } else if ((v = status_field_value(line, STF_BLE_OWNER_LAST)) != NULL) {
            int owner = 0;
            long at = 0;
            if (sscanf(v, "%d %ld", &owner, &at) == 2 && owner > 0) {
                meta_last_owner = owner;
                meta_last_at = (time_t)at;
            }
        } else if ((v = status_field_value(line, STF_HOT_TEMP)) != NULL) {
            cooler_hot_temp = atoi(v);
        } else if ((v = status_field_value(line, STF_COLD_TEMP)) != NULL) {
            cooler_cold_temp = atoi(v);
        } else if (status_field_value(line, STF_RUN_MODE) != NULL) {
            run_mode_seen = 1;
        } else if ((v = status_field_value(line, STF_RPM_REAL)) != NULL) {
            cooler_rpm_real = atoi(v);
        } else if ((v = status_field_value(line, STF_RPM_RUN)) != NULL) {
            // 旧 status 文件缺该行时保持上面重置的 -1，不沿用旧值；非法值同样写 -1
            rpm_run_seen = 1;
            char *end = NULL;
            long run_rpm = strtol(v, &end, 10);
            while (*end == ' ' || *end == '\r' || *end == '\n') end++;
            cooler_rpm_run = (end != v && *end == '\0' && run_rpm >= 0) ? (int)run_rpm : -1;
        } else if ((v = status_field_value(line, STF_COLD_REAL)) != NULL) {
            cooler_cold_real = atoi(v);
        } else if ((v = status_field_value(line, STF_COLD_RUN)) != NULL) {
            // 缺失保持 -1；非法（非整数/负数/尾随垃圾）同样写 -1
            char *end = NULL;
            long run = strtol(v, &end, 10);
            while (*end == ' ' || *end == '\r' || *end == '\n') end++;
            cooler_cold_run = (end != v && *end == '\0' && run >= 0) ? (int)run : -1;
        }
    }
    fclose(f);

    // 本帧解析结果可供同一拍的 read_status_ble_both 复用（R40）；跨拍由序号不等自动失效。
    status_meta_is_b6 = is_b6_path;
    status_meta_seq = status_seq;
    status_meta_valid = 1;

    // 诊断：模块已在写真实回传（RUN_MODE）却连续 3 帧无 RPM_RUN → 旧模块或 getSpeed 不可用；
    // 只打一条，避免每秒刷日志。实际转速列此时恒为 -1。
    if (run_mode_seen && app_ble_connected && !rpm_run_seen) {
        if (rpm_run_missing_streak < 3) rpm_run_missing_streak++;
        if (rpm_run_missing_streak >= 3 && !rpm_run_missing_logged) {
            rpm_run_missing_logged = 1;
            write_log("status 缺少 RPM_RUN（模块未更新或 getSpeed 不可用），曲线实际转速列将为 -1");
        }
    } else if (rpm_run_seen) {
        rpm_run_missing_streak = 0;
    }

    // 回传可信判定：本帧 RUN_MODE 存在（真实回传已就绪）+ 冷/rpm 值合法 → 累计连续帧；
    // 任一帧缺失/异常即清零。连续 REPORT_OK_N 帧（≈N 秒）才置 report_ok=1，用于启动/重连对齐。
    int frame_ok = (run_mode_seen && cooler_cold_real >= COLD_MIN && cooler_rpm_real >= fan_rpm_min);
    if (frame_ok) {
        if (report_ok_streak < REPORT_OK_N) report_ok_streak++;
        if (report_ok_streak >= REPORT_OK_N) report_ok = 1;
    } else {
        invalidate_report_ok();   // 异常帧不只清 streak，还要作废「已就绪」
    }
}

int read_sysfs_int(const char *path) {
    FILE *f = fopen(path, "r");
    if (!f) return -1;
    int val;
    if (fscanf(f, "%d", &val) != 1) {
        fclose(f);
        return -1;
    }
    fclose(f);
    return val;
}

int read_thermal_zone_raw(int zone_id) {
    char path[128];
    snprintf(path, sizeof(path), CPU_TEMP_PATH_FMT, zone_id);
    int raw = read_sysfs_int(path);
    if (raw <= 0 || raw > 150000) return -1;
    return raw;
}

int read_battery_temp(void) {
    // 值比较为主 + mtime 更新作为补充刷新信号（部分内核 mtime 不可靠）；见 逻辑说明.md「温度变化检测」。
    int raw = read_sysfs_int(BATT_TEMP_PATH);
    if (raw < 0) {
        batt_temp_updated = 0;
        return -1;
    }
    int val = raw / BATT_TEMP_DIVISOR;
    debug_log(debug_sensor, "batt_temp 原始 %d 除数 %d = %d (%.1f°C)",
              raw, BATT_TEMP_DIVISOR, val, val / 10.0);
    // 只在「值未变」时才需要 mtime 判刷新：值变了本拍 updated 必为 1，stat 对结果无影响（R39）。
    // 值变化那一拍记 stale，下一次成功 stat 只重建基线（旧实现已在值变化拍记录过该 mtime，不重复计）。
    int mtime_changed = 0;
    if (val != batt_cached_temp) {
        batt_mtime_stale = 1;
    } else {
        struct stat st;
        if (stat(BATT_TEMP_PATH, &st) == 0) {
            if (st.st_mtime != batt_temp_mtime) {
                if (!batt_mtime_stale) mtime_changed = 1;
                batt_temp_mtime = st.st_mtime;
            }
            batt_mtime_stale = 0;
        }
    }
    batt_temp_updated = (val != batt_cached_temp) || mtime_changed;
    batt_cached_temp = val;
    return val;
}

void close_cpu_zone_fds(void) {
    if (!cpu_zone_fd_inited) {
        for (int i = 0; i < CPU_ZONE_MAX_CACHE; i++) cpu_zone_fd[i] = CPU_ZONE_FD_INVALID;
        cpu_zone_fd_inited = 1;
        return;
    }
    for (int i = 0; i < CPU_ZONE_MAX_CACHE; i++) {
        if (cpu_zone_fd[i] >= 0) close(cpu_zone_fd[i]);
        cpu_zone_fd[i] = CPU_ZONE_FD_INVALID;
    }
}

void refresh_cpu_zone_fds(void) {
    close_cpu_zone_fds();
    for (int i = 0; i < cpu_zone_count && i < CPU_ZONE_MAX_CACHE; i++) {
        char path[128];
        snprintf(path, sizeof(path), CPU_TEMP_PATH_FMT, cpu_zone_cache[i]);
        cpu_zone_fd[i] = open(path, O_RDONLY | O_CLOEXEC);   // O_CLOEXEC：不被 fork 出的子进程（am/dumpsys/看门狗孙进程）继承；失败=-1，读取时回落 fopen
    }
}

int read_kept_zone_raw(int idx) {
    if (idx >= 0 && idx < CPU_ZONE_MAX_CACHE && cpu_zone_fd[idx] >= 0) {
        char rbuf[32];
        if (lseek(cpu_zone_fd[idx], 0, SEEK_SET) != (off_t)-1) {
            ssize_t n = read(cpu_zone_fd[idx], rbuf, sizeof(rbuf) - 1);
            if (n > 0) {
                rbuf[n] = '\0';
                int raw = atoi(rbuf);
                if (raw <= 0 || raw > 150000) return -1;   // 与 read_thermal_zone_raw 同口径
                return raw;
            }
        }
        // lseek/read 失败：关闭失效 fd，回落 fopen
        close(cpu_zone_fd[idx]);
        cpu_zone_fd[idx] = CPU_ZONE_FD_INVALID;
    }
    return read_thermal_zone_raw(cpu_zone_cache[idx]);
}

void close_valid_zone_fds(void) {
    if (!cpu_zone_valid_fd_inited) {
        for (int i = 0; i < CPU_ZONE_MAX_CACHE; i++) cpu_zone_valid_fd[i] = CPU_ZONE_FD_INVALID;
        cpu_zone_valid_fd_inited = 1;
    }
    for (int i = 0; i < CPU_ZONE_MAX_CACHE; i++) {
        if (cpu_zone_valid_fd[i] >= 0) close(cpu_zone_valid_fd[i]);
        cpu_zone_valid_fd[i] = CPU_ZONE_FD_INVALID;
    }
}

void refresh_valid_zone_fds(void) {
    close_valid_zone_fds();
    for (int i = 0; i < cpu_zone_valid_count && i < CPU_ZONE_MAX_CACHE; i++) {
        char path[128];
        snprintf(path, sizeof(path), CPU_TEMP_PATH_FMT, cpu_zone_valid[i]);
        cpu_zone_valid_fd[i] = open(path, O_RDONLY | O_CLOEXEC);   // 失败=-1，读取时回落 fopen
    }
}

int read_valid_zone_raw(int idx) {
    if (idx >= 0 && idx < cpu_zone_valid_count && cpu_zone_valid_fd[idx] >= 0) {
        char rbuf[32];
        if (lseek(cpu_zone_valid_fd[idx], 0, SEEK_SET) != (off_t)-1) {
            ssize_t n = read(cpu_zone_valid_fd[idx], rbuf, sizeof(rbuf) - 1);
            if (n > 0) {
                rbuf[n] = '\0';
                int raw = atoi(rbuf);
                if (raw <= 0 || raw > 150000) return -1;   // 与 read_thermal_zone_raw 同口径
                return raw;
            }
        }
        close(cpu_zone_valid_fd[idx]);
        cpu_zone_valid_fd[idx] = CPU_ZONE_FD_INVALID;
    }
    return read_thermal_zone_raw(cpu_zone_valid[idx]);
}

void rescan_cpu_zones(void) {
    time_t now = mono_now();   // 重扫间隔用单调时钟
    ZoneReading readings[CPU_ZONE_MAX_CACHE];
    int count = 0;

    if (!cpu_zone_scanned || cpu_zone_list_dirty) {
        // 首次/区间变化：全量扫描当前 CPU_ZONE_MIN~MAX，重建有效 zone 候选名单
        for (int i = CPU_ZONE_MIN; i <= CPU_ZONE_MAX; i++) {
            int raw = read_thermal_zone_raw(i);
            if (raw < 0) continue;
            if (count < CPU_ZONE_MAX_CACHE) {
                readings[count].id  = i;
                readings[count].raw = raw;
                count++;
            }
        }
        cpu_zone_valid_count = count;
        for (int i = 0; i < count; i++) cpu_zone_valid[i] = readings[i].id;
        cpu_zone_list_dirty = 0;
        refresh_valid_zone_fds();   // 名单已重建：按新名单开常驻 fd，后续重扫不再逐 zone fopen（R41）
    } else {
        // 后续重扫：只在有效候选名单内读值重排，不扫描区间外、不发现新 zone；
        // 名单中本轮无效（≤0/读失败）的 zone 不入列。无回退全量兜底。
        for (int i = 0; i < cpu_zone_valid_count; i++) {
            int raw = read_valid_zone_raw(i);
            if (raw < 0) continue;
            if (count < CPU_ZONE_MAX_CACHE) {
                readings[count].id  = cpu_zone_valid[i];
                readings[count].raw = raw;
                count++;
            }
        }
    }

    // 按温度降序排列，保留温度最高的 cpu_zone_keep 个
    qsort(readings, count, sizeof(ZoneReading), cmp_zone_desc);
    int keep = count < cpu_zone_keep ? count : cpu_zone_keep;
    // 保留列表与上次相同且 fd 均有效 → 不必关/重开（R41）。失效 fd 会在读取时被置无效，
    // 下一次重扫据此强制重开；列表变化也必然重开。
    int keep_same = cpu_zone_fd_inited && (keep == cpu_zone_count);
    for (int i = 0; keep_same && i < keep; i++) {
        if (readings[i].id != cpu_zone_cache[i] || cpu_zone_fd[i] < 0) keep_same = 0;
    }
    for (int i = 0; i < keep; i++)
        cpu_zone_cache[i] = readings[i].id;
    cpu_zone_count = keep;
    if (!keep_same)
        refresh_cpu_zone_fds();   // 保留列表变了（或首次/有失效 fd）：关旧 fd、按新列表重开
    cpu_zone_scanned = 1;
    cpu_zone_last_scan = now;

    if (keep == 0) {
        debug_log(debug_sensor, "thermal_zone 扫描 无可读 zone（路径 %s），CPU 紧急无法触发",
                  CPU_TEMP_PATH_FMT);
    } else {
        debug_log(debug_sensor, "thermal_zone 扫描 有效 %d 个，保留 %d 个最高温（%d 个控制周期≈%d 秒后重扫）",
                  count, keep, cpu_zone_rescan_cycles, cpu_zone_rescan_cycles * 5);
    }
}

void maybe_rescan_cpu_zones(void) {
    if (cpu_zone_list_dirty) {   // CPU_ZONE 区间变化：不等重扫间隔
        rescan_cpu_zones();
        return;
    }
    if (!cpu_zone_scanned) return;   // 首次扫描由 read_cpu_temp_max 同步完成
    time_t now = mono_now();
    if (now - cpu_zone_last_scan < (time_t)cpu_zone_rescan_cycles * 5) return;
    rescan_cpu_zones();
}

int read_cpu_temp_max(void) {
    // 首次调用：同步全量扫描一次（保证首个读数可用）。
    // 周期重扫已迁至 5s 控制块：全量扫描 ~100 个 zone 阻塞近 1s，不能放 1s 采集热路径。
    if (!cpu_zone_scanned) rescan_cpu_zones();

    // 后续调用 → 只扫描已保留的 zone（走常驻 fd，不再逐个 fopen）
    int max_temp = -1;
    for (int j = 0; j < cpu_zone_count; j++) {
        int raw = read_kept_zone_raw(j);
        if (raw < 0) continue;

        int decic = raw / CPU_TEMP_DIVISOR;
        if (decic > max_temp) max_temp = decic;
    }
    if (max_temp >= 0) {
        debug_log(debug_sensor, "cpu_temp zone=%d max=%d (%.1f°C)",
                  cpu_zone_count, max_temp, max_temp / 10.0);
    }
    return max_temp;
}
