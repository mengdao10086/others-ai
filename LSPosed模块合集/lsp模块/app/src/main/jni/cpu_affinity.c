/*
 * aicr 分析线程 CPU 亲和性。
 *
 * 只绑定线程名为 AISearchWork* 的线程（comm 最多 15 字符，按前缀匹配）。
 * aicr 自己会调用 shieldCPU(tid, 4) 把该线程绑到低核，这里负责按需覆盖。
 * 只依赖 libc，不引入 libc++_shared。
 */

#define _GNU_SOURCE

#include <jni.h>
#include <sched.h>
#include <unistd.h>
#include <dirent.h>
#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define MAX_CPUS 32
#define COMM_LEN 15

static int comm_matches(pid_t tid, const char *prefix) {
    char path[64];
    snprintf(path, sizeof(path), "/proc/self/task/%d/comm", tid);
    FILE *file = fopen(path, "r");
    if (file == NULL) {
        return 0;
    }
    char comm[COMM_LEN + 1];
    size_t len = fread(comm, 1, COMM_LEN, file);
    fclose(file);
    comm[len] = '\0';
    while (len > 0 && (comm[len - 1] == '\n' || comm[len - 1] == '\r')) {
        comm[--len] = '\0';
    }
    return strncmp(comm, prefix, strlen(prefix)) == 0;
}

static int bind_named_threads(unsigned int mask, const char *prefix) {
    cpu_set_t set;
    CPU_ZERO(&set);
    for (int i = 0; i < MAX_CPUS; i++) {
        if (mask & (1u << i)) {
            CPU_SET(i, &set);
        }
    }

    DIR *dir = opendir("/proc/self/task");
    if (dir == NULL) {
        return -errno;
    }

    int matched = 0;
    int applied = 0;
    int last_error = 0;
    unsigned int result = 0;
    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL) {
        const char *name = entry->d_name;
        if (name[0] < '0' || name[0] > '9') {
            continue;
        }
        pid_t tid = (pid_t) atoi(name);
        if (tid <= 0 || !comm_matches(tid, prefix)) {
            continue;
        }
        matched++;
        if (sched_setaffinity(tid, sizeof(set), &set) != 0) {
            last_error = errno;
            continue;
        }
        applied++;
        cpu_set_t current;
        CPU_ZERO(&current);
        if (sched_getaffinity(tid, sizeof(current), &current) == 0) {
            for (int i = 0; i < MAX_CPUS; i++) {
                if (CPU_ISSET(i, &current)) {
                    result |= (1u << i);
                }
            }
        }
    }
    closedir(dir);

    if (matched == 0) {
        return -ENOENT;
    }
    if (applied == 0) {
        return last_error != 0 ? -last_error : -EINVAL;
    }
    return (int) result;
}

JNIEXPORT jint JNICALL
Java_com_mengdao_lsposedtoolkit_gallery_aicr_AicrCpuAffinity_nativeBindThread(
        JNIEnv *env, jclass clazz, jint mask, jstring prefix) {
    (void) clazz;
    if (prefix == NULL) {
        return -EINVAL;
    }
    const char *chars = (*env)->GetStringUTFChars(env, prefix, NULL);
    if (chars == NULL) {
        return -ENOMEM;
    }
    int result = bind_named_threads((unsigned int) mask, chars);
    (*env)->ReleaseStringUTFChars(env, prefix, chars);
    return result;
}
