// ================================================================
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

static inline const char *status_field_value(const char *line, const char *field) {
    size_t n = strlen(field);
    return strncmp(line, field, n) == 0 ? line + n : NULL;
}

static inline char *trim_line(char *line) {
    char *p = line;
    while (*p == ' ' || *p == '\t') p++;
    size_t n = strlen(p);
    char *end = p + (n ? n - 1 : 0);   // 空串时 end=p（不可写 p-1：指向数组前是 UB）
    while (end > p && (*end == ' ' || *end == '\t')) *end-- = '\0';
    return p;
}

static inline void trim_right(char *s) {
    size_t n = strlen(s);
    char *end = s + (n ? n - 1 : 0);   // 空串时 end=s（同上）
    while (end > s && (*end == ' ' || *end == '\t')) *end-- = '\0';
}

static inline char *trim_value(char *s) {
    char *p = s;
    while (*p == ' ' || *p == '\t') p++;
    size_t n = strlen(p);
    char *end = p + (n ? n - 1 : 0);   // 空串时 end=p（同上）
    while (end > p && (*end == '\n' || *end == '\r' || *end == ' ' || *end == '\t'))
        *end-- = '\0';
    return p;
}

static inline void config_read_path(char *dest, size_t dest_size, char *src) {
    char *v = trim_value(src);
    if (*v) {
        strncpy(dest, v, dest_size - 1);
        dest[dest_size - 1] = '\0';
    }
}

static inline char *config_parse_line(char *line, char **out_key) {
    char *p = trim_line(line);
    if (*p == '#' || *p == '\n' || *p == '\0') return NULL;
    char *eq = strchr(p, '=');
    if (!eq) return NULL;
    *eq = '\0';
    *out_key = p;
    trim_right(p);
    // 值也在此统一裁剪（含 fgets 保留的 '\n'/'\r'）：多值键按逗号切分后，最后一个 token 会带着
    // 行尾换行，被严格整数校验判成"非整数"而整行失效（如 PID_CUT_）。所有键的取值都经过这里，
    // 下游不再各自容忍换行。
    return trim_value(eq + 1);
}

static inline int cpu_set_empty(const cpu_set_t *set) {
    for (int c = 0; c < CPU_SETSIZE; c++)
        if (CPU_ISSET(c, set)) return 0;
    return 1;
}

static inline int cpu_set_covers(const cpu_set_t *super, const cpu_set_t *sub) {
    for (int c = 0; c < CPU_SETSIZE; c++)
        if (CPU_ISSET(c, sub) && !CPU_ISSET(c, super)) return 0;
    return 1;
}

static inline void cpu_set_intersect(cpu_set_t *dst, const cpu_set_t *other) {
    for (int c = 0; c < CPU_SETSIZE; c++)
        if (!CPU_ISSET(c, other)) CPU_CLR(c, dst);
}

static inline void cpu_set_union(cpu_set_t *dst, const cpu_set_t *other) {
    for (int c = 0; c < CPU_SETSIZE; c++)
        if (CPU_ISSET(c, other)) CPU_SET(c, dst);
}

static inline int cpu_set_first(const cpu_set_t *set) {
    for (int c = 0; c < CPU_SETSIZE; c++)
        if (CPU_ISSET(c, set)) return c;
    return CPU_SETSIZE;
}

static inline void cpu_set_format(const cpu_set_t *set, char *out, size_t size) {
    size_t n = 0;
    int c = 0;
    if (size) out[0] = '\0';
    while (c < CPU_SETSIZE && size && n + 1 < size) {
        if (!CPU_ISSET(c, set)) { c++; continue; }
        int lo = c, hi = c;
        while (hi + 1 < CPU_SETSIZE && CPU_ISSET(hi + 1, set)) hi++;
        const char *sep = n ? "," : "";   // 单独取出：三元表达式里的逗号会被 D2 格式串核对当成实参分隔
        int w = snprintf(out + n, size - n, "%s%d", sep, lo);
        if (w < 0 || (size_t)w >= size - n) break;
        n += (size_t)w;
        if (hi > lo) {
            w = snprintf(out + n, size - n, "-%d", hi);
            if (w < 0 || (size_t)w >= size - n) break;
            n += (size_t)w;
        }
        c = hi + 1;
    }
    if (n == 0 && size) snprintf(out, size, "-");
}

static inline int cpu_list_parse(const char *s, cpu_set_t *set) {
    CPU_ZERO(set);
    if (!s) return 0;
    int any = 0;
    const char *p = s;
    while (*p) {
        while (*p == ' ' || *p == '\t' || *p == '\n' || *p == '\r' || *p == ',') p++;
        if (!*p) break;
        const char *tok = p;
        while (*p && *p != ' ' && *p != '\t' && *p != '\n' && *p != '\r' && *p != ',') p++;
        size_t len = (size_t)(p - tok);
        char buf[64];
        if (len == 0 || len >= sizeof(buf)) return 0;
        memcpy(buf, tok, len);
        buf[len] = '\0';

        char *end = NULL;                            // 核号：N 或 N-M
        long a = strtol(buf, &end, 10);
        if (end == buf || a < 0) return 0;
        long b = a;
        if (*end == '-') {
            char *end2 = NULL;
            b = strtol(end + 1, &end2, 10);
            if (end2 == end + 1 || b < a) return 0;
            end = end2;
        }
        if (*end != '\0') return 0;
        for (long c = a; c <= b && c < CPU_SETSIZE; c++) CPU_SET((int)c, set);
        any = 1;
    }
    return any ? 1 : 0;
}

static inline int clusters_accept(cpu_set_t *clusters, int n, const cpu_set_t *present) {
    if (n <= 0 || n > CPU_CLUSTER_MAX) return 0;
    cpu_set_t all;
    CPU_ZERO(&all);
    for (int i = 0; i < n; i++) {
        if (cpu_set_empty(&clusters[i])) return 0;              // 空簇：形态不可信
        for (int j = 0; j < i; j++) {
            cpu_set_t overlap = clusters[i];
            cpu_set_intersect(&overlap, &clusters[j]);
            if (!cpu_set_empty(&overlap)) return 0;             // 两簇有交：形态不可信
        }
        cpu_set_union(&all, &clusters[i]);
    }
    if (!cpu_set_covers(&all, present) || !cpu_set_covers(present, &all)) return 0;  // 并集 ≠ present
    int zero = -1;
    for (int i = 0; i < n; i++)
        if (CPU_ISSET(0, &clusters[i])) { zero = i; break; }
    if (zero < 0) return 0;                                     // 没有簇含 cpu0：形态不可信
    if (zero != 0) {
        cpu_set_t tmp = clusters[0];
        clusters[0] = clusters[zero];
        clusters[zero] = tmp;
    }
    for (int i = 1; i < n; i++) {                               // 其余按首核号升序（簇数很小，选择排序足够）
        int best = i;
        for (int j = i + 1; j < n; j++)
            if (cpu_set_first(&clusters[j]) < cpu_set_first(&clusters[best])) best = j;
        if (best != i) {
            cpu_set_t tmp = clusters[i];
            clusters[i] = clusters[best];
            clusters[best] = tmp;
        }
    }
    return 1;
}

static inline int affinity_expand(const char *spec, const cpu_set_t *clusters, int nclusters,
                           cpu_set_t *out) {
    CPU_ZERO(out);
    if (!spec || !*spec) return 0;
    if (spec[0] == 'c') {
        if (!spec[1]) return 0;                      // "c" 后没有数字
        for (const char *p = spec + 1; *p; p++) {
            if (*p < '0' || *p > '9') return 0;      // 非数字（含 c0,3 这类混写）→ 整串非法
            int idx = *p - '0';
            if (idx >= nclusters) return 0;          // 簇号超出本机簇数
            cpu_set_union(out, &clusters[idx]);
        }
        return 1;
    }
    return cpu_list_parse(spec, out);                // 单值 0 / 区间 0-1 / 列表 0,2-3
}

static inline int clamp(int val, int lo, int hi) {
    if (val < lo) return lo;
    if (val > hi) return hi;
    return val;
}

static inline void rate_limit(int *actual, int desired, int up_limit, int down_limit) {
    int diff = desired - *actual;
    int step = (diff > 0) ? up_limit : down_limit;
    if (abs(diff) > step)
        *actual += (diff > 0) ? step : -step;
    else
        *actual = desired;
}

static inline int cmp_zone_desc(const void *a, const void *b) {
    int da = ((const ZoneReading*)a)->raw;
    int db = ((const ZoneReading*)b)->raw;
    return (da < db) - (da > db);
}

static inline int deadzone_band(int deadzone) {
    return (deadzone * 3 + 1) / 2;
}

static inline int within_deadzone(int diff, int deadzone, int room) {
    return abs(diff) < deadzone && room >= deadzone_band(deadzone);
}

static inline int wakefulness_value(const char *line, char *out, size_t outSize) {
    if (outSize == 0) return 0;   // 防下面 outSize-1 下溢（当前调用点不会传 0，留着免以后踩）
    const char *hit = strstr(line, "mWakefulness=");
    if (hit == NULL || strstr(line, "Override") != NULL) return 0;
    hit += strlen("mWakefulness=");
    size_t n = 0;
    while (hit[n] != '\0' && hit[n] != '=' && n < outSize - 1) {
        out[n] = hit[n];
        n++;
    }
    out[n] = '\0';
    size_t s = 0;
    while (s < n && (out[s] == ' ' || out[s] == '\t' || out[s] == '\r')) s++;
    while (n > s && (out[n-1] == ' ' || out[n-1] == '\t' || out[n-1] == '\r')) n--;
    memmove(out, out + s, n - s);
    out[n - s] = '\0';
    return 1;
}

static inline int ki_cut_tok_int(const char *p, size_t len, int *out) {
    if (len == 0 || len >= 24) return 0;
    char buf[24];
    memcpy(buf, p, len);
    buf[len] = '\0';
    char *e = NULL;
    long v = strtol(buf, &e, 10);
    if (e == buf || *e != '\0') return 0;
    *out = (int)v;
    return 1;
}

#endif /* TEMPCTRL_UTIL_H */
