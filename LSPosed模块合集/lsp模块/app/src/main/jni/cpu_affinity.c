/*
 * aicr 分析进程 CPU 亲和性。
 *
 * sched_setaffinity 以线程为单位，这里遍历 /proc/self/task 给每个线程设置，
 * 之后新建的线程会继承创建者的亲和性。只依赖 libc，不引入 libc++_shared。
 */

#define _GNU_SOURCE

#include <jni.h>
#include <sched.h>
#include <unistd.h>
#include <dirent.h>
#include <errno.h>
#include <stdlib.h>

#define MAX_CPUS 32

static int apply_to_all_threads(unsigned int mask) {
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

    int applied = 0;
    int last_error = 0;
    struct dirent *entry;
    while ((entry = readdir(dir)) != NULL) {
        const char *name = entry->d_name;
        if (name[0] < '0' || name[0] > '9') {
            continue;
        }
        pid_t tid = (pid_t) atoi(name);
        if (tid <= 0) {
            continue;
        }
        if (sched_setaffinity(tid, sizeof(set), &set) == 0) {
            applied++;
        } else {
            last_error = errno;
        }
    }
    closedir(dir);

    if (applied == 0) {
        return last_error != 0 ? -last_error : -EINVAL;
    }

    cpu_set_t current;
    CPU_ZERO(&current);
    if (sched_getaffinity(getpid(), sizeof(current), &current) != 0) {
        return -errno;
    }
    unsigned int result = 0;
    for (int i = 0; i < MAX_CPUS; i++) {
        if (CPU_ISSET(i, &current)) {
            result |= (1u << i);
        }
    }
    return (int) result;
}

JNIEXPORT jint JNICALL
Java_com_mengdao_lsposedtoolkit_gallery_aicr_AicrCpuAffinity_nativeBind(
        JNIEnv *env, jclass clazz, jint mask) {
    (void) env;
    (void) clazz;
    return apply_to_all_threads((unsigned int) mask);
}
