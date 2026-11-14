// 变体 B 实验模块：由 tempctrl.c 原样搬出，仅改链接说明符。
#define _GNU_SOURCE
#include "tempctrl_shared.h"

static char cpu_aff_last_group[256] = "";

static char cpu_aff_reason[512] = "";

int cpu_list_read(const char *path, cpu_set_t *set) {
    FILE *f = fopen(path, "r");
    if (!f) return 0;
    char buf[256] = "";
    size_t n = fread(buf, 1, sizeof(buf) - 1, f);
    buf[n] = '\0';
    fclose(f);
    return cpu_list_parse(buf, set);
}

int read_dir_cpus(const char *dir, cpu_set_t *set) {
    char path[320];
    snprintf(path, sizeof(path), "%s/cpus", dir);
    return cpu_list_read(path, set);
}

int read_self_cpuset_group(char *out, size_t size) {
    FILE *f = fopen("/proc/self/cgroup", "r");
    if (!f) return 0;
    char line[256];
    int found = 0;
    while (fgets(line, sizeof(line), f)) {
        // 行格式 <层级>:<控制器>:<组路径>；cgroup v2 的控制器是空段（0::/），与 cpuset 不相等
        char *ctrl = strchr(line, ':');
        if (!ctrl) continue;
        char *sep = strchr(ctrl + 1, ':');
        if (!sep) continue;
        *sep = '\0';
        if (strcmp(ctrl + 1, "cpuset") != 0) continue;
        strncpy(out, trim_value(sep + 1), size - 1);
        out[size - 1] = '\0';
        found = 1;
        break;
    }
    fclose(f);
    return found;
}

int cpuset_join(const char *dir) {
    char path[320];
    snprintf(path, sizeof(path), "%s/cgroup.procs", dir);
    int fd = open(path, O_WRONLY);
    if (fd < 0) return 0;
    char pid[32];
    int n = snprintf(pid, sizeof(pid), "%d", (int)getpid());
    ssize_t wr = write(fd, pid, (size_t)n);
    close(fd);
    return wr == n;
}

int clusters_probe_policy(cpu_set_t *clusters, const cpu_set_t *present) {
    DIR *d = opendir("/sys/devices/system/cpu/cpufreq");
    if (!d) return 0;
    struct dirent *ent;
    int n = 0;
    while (n < CPU_CLUSTER_MAX && (ent = readdir(d)) != NULL) {
        if (strncmp(ent->d_name, "policy", 6) != 0) continue;
        char path[320];
        snprintf(path, sizeof(path), "/sys/devices/system/cpu/cpufreq/%s/related_cpus",
                 ent->d_name);
        if (!cpu_list_read(path, &clusters[n])) {
            snprintf(path, sizeof(path), "/sys/devices/system/cpu/cpufreq/%s/affected_cpus",
                     ent->d_name);
            if (!cpu_list_read(path, &clusters[n])) continue;   // 两个都读不到：弃用本源
        }
        n++;
    }
    closedir(d);
    return clusters_accept(clusters, n, present) ? n : 0;
}

int clusters_probe(cpu_set_t *clusters, const char **src) {
    cpu_set_t present;
    if (!cpu_list_read("/sys/devices/system/cpu/present", &present)) return 0;
    int n = clusters_probe_policy(clusters, &present);
    if (n > 0) { *src = CLUSTER_SRC_POLICY; return n; }
    clusters[0] = present;
    *src = CLUSTER_SRC_SINGLE;
    return 1;
}

int read_status_field(const char *field, char *out, size_t size) {
    FILE *f = fopen("/proc/self/status", "r");
    if (!f) return 0;
    char line[256];
    size_t flen = strlen(field);
    int found = 0;
    while (fgets(line, sizeof(line), f)) {
        if (strncmp(line, field, flen) != 0) continue;
        strncpy(out, trim_value(line + flen), size - 1);
        out[size - 1] = '\0';
        found = 1;
        break;
    }
    fclose(f);
    return found;
}

void cpu_aff_note(char *reason, size_t size, const char *fmt, ...) {
    size_t used = strlen(reason);
    if (used + 1 >= size) return;                       // 已满：丢弃后续（原因串只作诊断用）
    if (used > 0) {
        int w = snprintf(reason + used, size - used, "；且 ");
        if (w < 0 || (size_t)w >= size - used) { reason[size - 1] = '\0'; return; }
        used += (size_t)w;
    }
    va_list ap;
    va_start(ap, fmt);
    vsnprintf(reason + used, size - used, fmt, ap);
    va_end(ap);
    reason[size - 1] = '\0';
}

void apply_cpu_affinity(void) {
    char reason[512] = "";   // 本次"没做到 / 回落了"的原因摘要；空 = 全部按请求做到
    // 簇划分：含 cpu0 的簇 = c0，其余按首核号升序（探测失败 = 单簇，见 clusters_probe）
    cpu_set_t clusters[CPU_CLUSTER_MAX];
    const char *cluster_src = CLUSTER_SRC_SINGLE;
    int nclusters = clusters_probe(clusters, &cluster_src);
    if (nclusters <= 0) {
        // 连本机核集合都读不到：按"全部核"单簇处理（不至于因探测不出而把进程限死）
        CPU_ZERO(&clusters[0]);
        for (int c = 0; c < CPU_SETSIZE; c++) CPU_SET(c, &clusters[0]);
        nclusters = 1;
    }
    // 簇划分写进日志，供真机核对（探测源与每个簇的核集合都如实报出）。
    // 合并为**一条**，且与上次一致时**不重复打印**——否则每次配置热重载（5s 周期）都会刷屏。
    static char cpu_aff_clusters[256];
    {
        char line[256];
        int off = snprintf(line, sizeof(line), "簇划分 %d 个（来源 %s）", nclusters, cluster_src);
        for (int i = 0; i < nclusters; i++) {
            if (off < 0 || (size_t)off >= sizeof(line)) break;
            char one[64];
            cpu_set_format(&clusters[i], one, sizeof(one));
            int w = snprintf(line + off, sizeof(line) - (size_t)off, " c%d=%s", i, one);
            if (w < 0) break;
            off += w;
        }
        if (strcmp(cpu_aff_clusters, line) != 0) {
            write_log("CPU 亲和 %s", line);
            strncpy(cpu_aff_clusters, line, sizeof(cpu_aff_clusters) - 1);
            cpu_aff_clusters[sizeof(cpu_aff_clusters) - 1] = '\0';
        }
    }

    // 展开配置值：非法 → 回落代码默认（不静默沿用旧值，否则用户改错一个字符看不出没生效）
    cpu_set_t want;
    if (!affinity_expand(affinity_spec, clusters, nclusters, &want)) {
        cpu_aff_note(reason, sizeof(reason), "配置值非法(%s) → 回落默认 %s",
                     affinity_spec, CFG_DEFAULT_CPU_AFFINITY);
        reset_cpu_affinity_defaults();
        if (!affinity_expand(affinity_spec, clusters, nclusters, &want)) {
            cpu_aff_note(reason, sizeof(reason), "默认值 %s 也展开失败 → 按 0 号簇处理",
                         CFG_DEFAULT_CPU_AFFINITY);
            want = clusters[0];
        }
    }

    // 与本机核集合取交集：机型核数不同，写死的核号可能越界（如 6 核机上 0-7）
    cpu_set_t present;
    if (!cpu_list_read("/sys/devices/system/cpu/present", &present)) {
        char w_str[128];
        cpu_set_format(&want, w_str, sizeof(w_str));
        cpu_aff_note(reason, sizeof(reason), "读不到本机核编号 → 按配置核集合 %s 直接设置", w_str);
    } else {
        cpu_set_intersect(&want, &present);
        if (cpu_set_empty(&want)) {
            char p_str[128];
            cpu_set_format(&present, p_str, sizeof(p_str));
            cpu_aff_note(reason, sizeof(reason), "配置核集合与本机核 %s 无交集 → 回落默认 %s",
                         p_str, CFG_DEFAULT_CPU_AFFINITY);
            reset_cpu_affinity_defaults();
            if (!affinity_expand(affinity_spec, clusters, nclusters, &want))
                want = clusters[0];
            cpu_set_intersect(&want, &present);
            if (cpu_set_empty(&want)) {
                cpu_aff_note(reason, sizeof(reason), "默认核集合与本机核也无交集 → 仍按默认设置，结果以读回为准");
                want = clusters[0];
            }
        }
    }

    char want_str[128];
    cpu_set_format(&want, want_str, sizeof(want_str));

    // 先迁组：固定迁到 cpuset 根组（根组 cpus 恒为全部在线核、组名与 ROM 无关 → 不探测、不扫组）。
    // 当前组 cpus 已覆盖目标核集合时无需迁组（组已是上限，直接设亲和即可）。
    char group[256] = "/";
    char cur_dir[320];
    if (read_self_cpuset_group(group, sizeof(group)))
        snprintf(cur_dir, sizeof(cur_dir), "%s%s", CPUSET_DIR, group);
    else
        snprintf(cur_dir, sizeof(cur_dir), "%s", CPUSET_DIR);
    char mig[400] = "";   // 本次迁组结果（未迁组则空）
    cpu_set_t cur_set;
    if (!read_dir_cpus(cur_dir, &cur_set) || !cpu_set_covers(&cur_set, &want)) {
        if (cpuset_join(CPUSET_DIR))
            snprintf(mig, sizeof(mig), "迁组 %s → %s", cur_dir, CPUSET_DIR);
        else
            // 只记原因、不当场打日志：与其余异常共用同一个降级状态机（见函数末），
            // 否则 300s 重试会让 SELinux 拒写的机型每 5 分钟刷一条（约 288 行/天）。
            cpu_aff_note(reason, sizeof(reason),
                         "迁组失败（当前组 %s 不覆盖 %s，写 %s/cgroup.procs 未成功）",
                         cur_dir, want_str, CPUSET_DIR);
    }

    // 设亲和：被 cpuset 夹取时调用会成功但结果被收窄，故后面必须读回
    if (sched_setaffinity(0, sizeof(cpu_set_t), &want) != 0)
        cpu_aff_note(reason, sizeof(reason), "设亲和失败 errno=%d(%s)", errno, strerror(errno));

    // 读回：实际可运行的核 = cpuset 组 cpus ∩ 自身亲和，只有读回的值才是事实
    char allowed[64] = "读取失败";
    char now_group[256] = "";
    int has_group = read_self_cpuset_group(now_group, sizeof(now_group));
    read_status_field("Cpus_allowed_list:", allowed, sizeof(allowed));

    // 结果合并为**一条**（迁组 + 读回 + 请求），与本机上次一致则不重复打印（同上，防热重载刷屏）
    static char cpu_aff_result[512];
    char line[512];
    int off = 0;
    if (mig[0]) off += snprintf(line + off, sizeof(line) - (size_t)off, "%s ", mig);
    if (has_group)
        snprintf(line + off, sizeof(line) - (size_t)off,
                 "读回 Cpus_allowed_list=%s cpuset=%s（本次请求 %s）", allowed, now_group, want_str);
    else
        snprintf(line + off, sizeof(line) - (size_t)off,
                 "读回 Cpus_allowed_list=%s（本次请求 %s）", allowed, want_str);
    if (strcmp(cpu_aff_result, line) != 0) {
        write_log("CPU 亲和 %s", line);
        strncpy(cpu_aff_result, line, sizeof(cpu_aff_result) - 1);
        cpu_aff_result[sizeof(cpu_aff_result) - 1] = '\0';
    }

    // 记下本次读回的组路径，供低频重申判断"是否被 ROM 改回去了"（见 cpu_affinity_reassert）。
    // 读不到组路径时置空 = 不看"变没变"；重试不受影响（由 cpu_aff_reason 驱动）。
    if (has_group) {
        strncpy(cpu_aff_last_group, now_group, sizeof(cpu_aff_last_group) - 1);
        cpu_aff_last_group[sizeof(cpu_aff_last_group) - 1] = '\0';
    } else {
        cpu_aff_last_group[0] = '\0';
    }

    // 目标是否真的拿到：**读回的核集合 ⊇ 请求集合**才算拿到（cpuset 的 cpus 是硬上限，
    // 被组夹住时读回必然小于请求；/proc/self/status 读不到时解析失败，同样按"没拿到"处理）。
    // 与前面的异常并进同一个 reason（谁先记谁在前，多条用"；且"连接）。
    cpu_set_t got;
    if (!(cpu_list_parse(allowed, &got) && cpu_set_covers(&got, &want)))
        cpu_aff_note(reason, sizeof(reason), "读回 %s 未覆盖请求 %s", allowed, want_str);

    // 降级状态机（**唯一**的降级状态位 = cpu_aff_reason）：只在**状态变化**时记日志——
    // 进入降级打一条、原因变了再打一条、恢复打一条；"持续同一原因"不再重复打。
    // reason 里带着**具体是哪种错**（配置值非法 / 无交集 / 迁组失败 / 设亲和失败 / 读回不覆盖），
    // 不笼统化成一句"未达目标"。不做这一步，300s 的定期重试会让同一条原因每 5 分钟刷一行。
    if (reason[0]) {
        if (strcmp(reason, cpu_aff_reason) != 0) {
            write_log("CPU 亲和 异常：%s（cpuset 组 %s）→ 每 %d 秒重试",
                      reason, has_group ? now_group : "?", CPU_AFF_REASSERT_SEC);
            strncpy(cpu_aff_reason, reason, sizeof(cpu_aff_reason) - 1);
            cpu_aff_reason[sizeof(cpu_aff_reason) - 1] = '\0';
        }
    } else if (cpu_aff_reason[0]) {
        write_log("CPU 亲和 已恢复：读回 %s（请求 %s）", allowed, want_str);
        cpu_aff_reason[0] = '\0';
    }
}

int cpu_affinity_reassert(void) {
    static time_t last = 0;
    time_t now = mono_now();   // 重申间隔用单调时钟
    if (last == 0) { last = now; return 0; }        // 首次只记时刻：启动那次已由 main() 应用过
    if (now - last < CPU_AFF_REASSERT_SEC) return 0;
    last = now;

    int need = 0;
    if (cpu_aff_last_group[0] != '\0') {            // 有上次读回的组路径才谈得上"变没变"
        char group[256] = "";
        if (read_self_cpuset_group(group, sizeof(group)) && strcmp(group, cpu_aff_last_group) != 0) {
            write_log("CPU 亲和 组由 %s 变为 %s → 重做一次", cpu_aff_last_group, group);
            need = 1;
        }
    }
    if (cpu_aff_reason[0]) need = 1;                // 上次没达目标（reason 非空）：定期重试；日志由 apply 侧按状态变化打
    if (!need) return 0;
    apply_cpu_affinity();
    return 1;
}
