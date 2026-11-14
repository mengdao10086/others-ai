// 变体 B2 实验模块：由 tempctrl.c 原样搬出，仅改链接说明符。
#define _GNU_SOURCE
#include "tempctrl_shared.h"

static volatile sig_atomic_t alarm_fired = 0;   // SIGALRM 已到（仅 wait_child_timeout 使用）

static pid_t  am_pending_pid[AM_PENDING_MAX];
static time_t am_pending_at[AM_PENDING_MAX];
static int    am_pending_n = 0;

static void alarm_handler(int sig) {
    (void)sig;
    alarm_fired = 1;
}

long long mono_ms(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (long long)ts.tv_sec * 1000 + ts.tv_nsec / 1000000;
}

time_t mono_now(void) {
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec;
}

int wait_readable(int fd, long long deadline_ms) {
    long long left = deadline_ms - mono_ms();
    if (left <= 0) return 0;
    struct timeval tv;
    tv.tv_sec  = (time_t)(left / 1000);
    tv.tv_usec = (suseconds_t)((left % 1000) * 1000);
    fd_set rf;
    FD_ZERO(&rf);
    FD_SET(fd, &rf);
    return select(fd + 1, &rf, NULL, NULL, &tv);
}

int wait_child_timeout(pid_t pid, int *out_status, int timeout_sec) {
    struct sigaction sa;
    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = alarm_handler;
    sigemptyset(&sa.sa_mask);
    sa.sa_flags = 0;                     // 关键：不置 SA_RESTART，waitpid 才会被闹钟打断
    sigaction(SIGALRM, &sa, NULL);

    alarm_fired = 0;
    alarm(timeout_sec > 0 ? (unsigned)timeout_sec : 1);
    int r;
    do {   // 闹钟可能在下一次 waitpid 之前就已到（窗口极小），此时不能再阻塞等
        r = alarm_fired ? -1 : waitpid(pid, out_status, 0);
    } while (r == -1 && errno == EINTR && !alarm_fired);   // 被其它信号打断：继续等，不算超时

    int timed_out = (r == -1 && alarm_fired);   // r>0=已回收，即使闹钟同时到也不算超时
    if (timed_out) {
        kill(pid, SIGTERM);
        write_log("子进程超时（%ds）发送 SIGTERM，pid=%d", timeout_sec, (int)pid);
        alarm_fired = 0;
        alarm(CMD_KILL_GRACE_SEC);
        do {
            r = alarm_fired ? -1 : waitpid(pid, out_status, 0);
        } while (r == -1 && errno == EINTR && !alarm_fired);
        alarm(0);                        // 撤闹钟后再轮询，避免 SIGALRM 打断回收循环
        signal(SIGALRM, SIG_DFL);
        if (alarm_fired) {
            kill(pid, SIGKILL);
            write_log("子进程 SIGTERM 后 %ds 未退出，已 SIGKILL，pid=%d",
                      CMD_KILL_GRACE_SEC, (int)pid);
            // 轮询回收（≤1s）：不阻塞等待，D 状态下也不让主循环停摆
            for (int i = 0; i < 10 && waitpid(pid, NULL, WNOHANG) == 0; i++)
                usleep(100000);
        }
        return 0;                        // 超时：*out_status 无意义
    }
    alarm(0);                            // 先撤闹钟：之后不再需要（也不该）被打断
    signal(SIGALRM, SIG_DFL);
    return 1;
}

void reap_am_children(void) {
    time_t now = mono_now();   // 3 秒回收界限用单调时钟
    for (int i = 0; i < am_pending_n; ) {
        int status = 0;
        pid_t r = waitpid(am_pending_pid[i], &status, WNOHANG);
        if (r == 0) {
            if (now - am_pending_at[i] < 3) { i++; continue; }
            kill(am_pending_pid[i], SIGKILL);
            waitpid(am_pending_pid[i], NULL, 0);
            write_log("am broadcast 超时");
        } else if (r > 0) {
            if (WIFEXITED(status) && WEXITSTATUS(status) != 0)
                write_log("am broadcast 失败：退出码 %d（广播未送达）", WEXITSTATUS(status));
            else if (WIFSIGNALED(status))
                write_log("am broadcast 异常终止：信号 %d", WTERMSIG(status));
        }
        am_pending_pid[i] = am_pending_pid[--am_pending_n];
        am_pending_at[i]  = am_pending_at[am_pending_n];
    }
}

void send_am_broadcast(int mode, int target, int windOC, int coldOC, int windLevel) {
    // 取值顺序必须与 BROADCAST_EXTRAS 一致（前 5 项来自形参，后 2 项固定 0）
    const int vals[BROADCAST_EXTRAS_N] = { mode, target, windOC, coldOC, windLevel, 0, 0 };
    char v_s[BROADCAST_EXTRAS_N][BROADCAST_VAL_MAX];
    for (int i = 0; i < BROADCAST_EXTRAS_N; i++)
        snprintf(v_s[i], sizeof(v_s[i]), "%d", vals[i]);

    pid_t pid = fork();
    if (pid < 0) {
        write_log("fork 失败，跳过下发");
        return;
    }
    if (pid == 0) {
        int fd = open("/dev/null", O_WRONLY);
        if (fd >= 0) {
            dup2(fd, STDOUT_FILENO);
            dup2(fd, STDERR_FILENO);
            close(fd);
        }
        // 根据当前控制的设备选择广播 Action
        const char *action = (active_device == DEVICE_B7X)
            ? BROADCAST_ACTION_B7X
            : BROADCAST_ACTION_B6X;
        // 用绝对路径 execv（不依赖 PATH；execlp 会静默失败）；argv 由 extra 名单驱动，避免形参序与 --ei 序错位。
        char *argv[6 + 3 * BROADCAST_EXTRAS_N + 1];
        int ai = 0;
        argv[ai++] = (char *)"am";
        argv[ai++] = (char *)"broadcast";
        argv[ai++] = (char *)"--user";
        argv[ai++] = (char *)"0";
        argv[ai++] = (char *)"-a";
        argv[ai++] = (char *)action;
        for (int i = 0; i < BROADCAST_EXTRAS_N; i++) {
            argv[ai++] = (char *)"--ei";
            argv[ai++] = (char *)BROADCAST_EXTRAS[i];
            argv[ai++] = v_s[i];
        }
        argv[ai] = NULL;
        execv(AM_BIN, argv);
        _exit(127);
    }
    // 父进程：不等待，登记后立即返回；退出状态由 reap_am_children 在主循环每拍回收。
    reap_am_children();
    if (am_pending_n >= AM_PENDING_MAX) {   // 池满：强杀最旧一条，避免无限堆积
        kill(am_pending_pid[0], SIGKILL);
        waitpid(am_pending_pid[0], NULL, 0);
        am_pending_pid[0] = am_pending_pid[--am_pending_n];
        am_pending_at[0]  = am_pending_at[am_pending_n];
    }
    am_pending_pid[am_pending_n] = pid;
    am_pending_at[am_pending_n]  = mono_now();
    am_pending_n++;
    debug_log(debug_exec, "am broadcast 已派发 mode=%d target=%d windOC=%d coldOC=%d windLevel=%d",
              mode, target, windOC, coldOC, windLevel);
}

int is_screen_awake(void) {
    int fds[2];
    if (pipe(fds) != 0) return -1;

    pid_t pid = fork();
    if (pid < 0) {
        close(fds[0]);
        close(fds[1]);
        return -1;
    }
    if (pid == 0) {
        close(fds[0]);
        dup2(fds[1], STDOUT_FILENO);   // 子进程 stdout → 管道写端
        close(fds[1]);
        int devnull = open("/dev/null", O_WRONLY);   // 等价旧写法的 2>/dev/null
        if (devnull >= 0) {
            dup2(devnull, STDERR_FILENO);
            close(devnull);
        }
        char *argv[] = { (char *)"dumpsys", (char *)"power", NULL };
        execv(DUMPSYS_BIN, argv);   // 绝对路径，不依赖 PATH（同 am 广播那条的做法）
        _exit(127);
    }

    close(fds[1]);
    char val[32] = {0};
    char line[512];
    size_t lineLen = 0;
    int matched = 0;
    char buf[4096];
    long long deadline = mono_ms() + (long long)CMD_TIMEOUT_SEC * 1000;
    while (!matched) {
        int sr = wait_readable(fds[0], deadline);   // dumpsys 挂死时不再永久阻塞
        if (sr < 0) { if (errno == EINTR) continue; break; }
        if (sr == 0) break;                         // 超时：按"没匹配到"处理，下面限时回收子进程
        ssize_t n = read(fds[0], buf, sizeof(buf));
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) break;   // 0=EOF、<0=读失败 → 都按"没匹配到"处理
        for (ssize_t i = 0; i < n; i++) {
            if (buf[i] != '\n') {
                if (lineLen < sizeof(line) - 1) line[lineLen++] = buf[i];
                continue;
            }
            line[lineLen] = '\0';
            matched = wakefulness_value(line, val, sizeof(val));
            if (matched) break;
            lineLen = 0;   // 本行不含目标：丢掉，接着拼下一行
        }
    }
    if (!matched && lineLen > 0) {   // 末尾无换行的残行也判一次
        line[lineLen] = '\0';
        matched = wakefulness_value(line, val, sizeof(val));
    }
    close(fds[0]);   // 必须先关：否则子进程可能卡在写端，下面 waitpid 就永不返回
    // 限时回收：走到超时分支时子进程已确认挂死，宽限只需 CMD_KILL_GRACE_SEC
    if (!wait_child_timeout(pid, NULL, CMD_KILL_GRACE_SEC))
        write_log("dumpsys power 超时（>%ds）已按 SIGTERM→SIGKILL 回收", CMD_TIMEOUT_SEC);

    if (!matched) return -1;                    // 没读到目标行 → 失败，调用方按兜底处理
    if (strcmp(val, "Awake") == 0) return 1;
    if (strcmp(val, "Dozing") == 0) return 2;
    if (strlen(val) == 0) return -1;            // 解析到空 → 失败
    return 0;                                   // Asleep / 其余 → 灭屏
}

int is_foreground_pkg(const char *pkg) {
    // 优先窗口焦点 mCurrentFocus（最准确），退化为 topResumedActivity/mResumedActivity
    // grep -m1 截断管道，dumpsys 收到 SIGPIPE 提前退出，实际开销远低于完整 dumpsys
    char cmd[1024];
    snprintf(cmd, sizeof(cmd),
             DUMPSYS_BIN " window 2>/dev/null | grep -m1 'mCurrentFocus='; "
             DUMPSYS_BIN " activity activities 2>/dev/null | grep -m1 -E 'topResumedActivity|mResumedActivity'");

    // 不用 popen：它拿不到子进程 pid，命令挂死时 pclose 会无限阻塞。改为 fork+exec+限时读。
    int fds[2];
    if (pipe(fds) != 0) return 0;
    pid_t pid = fork();
    if (pid < 0) {
        close(fds[0]);
        close(fds[1]);
        return 0;
    }
    if (pid == 0) {
        close(fds[0]);
        dup2(fds[1], STDOUT_FILENO);
        close(fds[1]);
        int devnull = open("/dev/null", O_WRONLY);
        if (devnull >= 0) {
            dup2(devnull, STDERR_FILENO);
            close(devnull);
        }
        char *argv[] = { (char *)"sh", (char *)"-c", cmd, NULL };
        execv(SH_BIN, argv);
        _exit(127);
    }
    close(fds[1]);

    char line[1024];
    size_t lineLen = 0;
    int fg = 0;
    char buf[4096];
    long long deadline = mono_ms() + (long long)CMD_TIMEOUT_SEC * 1000;
    while (!fg) {
        int sr = wait_readable(fds[0], deadline);
        if (sr < 0) { if (errno == EINTR) continue; break; }
        if (sr == 0) break;                         // 超时：按"未在前台"处理，下面限时回收
        ssize_t n = read(fds[0], buf, sizeof(buf));
        if (n < 0 && errno == EINTR) continue;
        if (n <= 0) break;
        for (ssize_t i = 0; i < n && !fg; i++) {
            if (buf[i] != '\n') {
                if (lineLen < sizeof(line) - 1) line[lineLen++] = buf[i];
                continue;
            }
            line[lineLen] = '\0';
            if (strstr(line, pkg)) fg = 1;
            lineLen = 0;
        }
    }
    if (!fg && lineLen > 0) {   // 末尾无换行的残行也判一次
        line[lineLen] = '\0';
        if (strstr(line, pkg)) fg = 1;
    }
    close(fds[0]);   // 先关读端：子进程若仍在写会收到 SIGPIPE 而退出
    if (!wait_child_timeout(pid, NULL, CMD_KILL_GRACE_SEC))
        write_log("dumpsys 前台检测超时（>%ds）已按 SIGTERM→SIGKILL 回收", CMD_TIMEOUT_SEC);
    return fg;
}

int run_shell_timeout(const char *cmd) {
    pid_t pid = fork();
    if (pid < 0) {
        write_log("fork 失败，跳过外部命令");
        return -1;
    }
    if (pid == 0) {
        int devnull = open("/dev/null", O_RDWR);
        if (devnull >= 0) {
            dup2(devnull, STDIN_FILENO);
            dup2(devnull, STDOUT_FILENO);
            dup2(devnull, STDERR_FILENO);
            close(devnull);
        }
        char *argv[] = { (char *)"sh", (char *)"-c", (char *)cmd, NULL };
        execv(SH_BIN, argv);
        _exit(127);
    }
    int status = 0;
    if (!wait_child_timeout(pid, &status, CMD_TIMEOUT_SEC)) {
        write_log("外部命令超时（>%ds）已按 SIGTERM→SIGKILL 回收：%.80s", CMD_TIMEOUT_SEC, cmd);
        return CMD_RESULT_TIMEOUT;
    }
    return status;
}

int run_cmd_silent(const char *fmt, const char *arg) {
    char cmd[256];
    snprintf(cmd, sizeof(cmd), fmt, arg);
    return run_shell_timeout(cmd);
}

int app_installed_probe(const char *pkg) {
    int st = run_cmd_silent(PM_BIN " path %s > /dev/null 2>&1", pkg);
    if (st == 0) return 1;
    if (st == CMD_RESULT_TIMEOUT) return CMD_RESULT_TIMEOUT;   // pm 挂死：未知，绝不可当「未安装」
    // 返回的是 wait 状态而不是退出码：-1=fork/exec 失败；WIFEXITED 假=进程被信号杀死（pm 没跑完）。
    if (st == -1 || !WIFEXITED(st)) return -1;
    // 只有退出码 1（pm 自己报"包未找到"）才算「确实不存在」，其余非 0（命令跑不起来 / 服务未就绪等）
    // 一律「无法判定」——误判成"不存在"会在开机早期触发不可逆的卸载自清。各退出码含义与后果见
    // 逻辑说明.md「三方 app 存活仲裁」的「包安装探测的退出码口径」。
    if (WEXITSTATUS(st) == 1) return 0;
    return -1;
}

int am_start_app(const char *pkg) {
    // 优先显式组件 -n（这些 app 的 launcher 未导出/非标准 filter，隐式启动解析不到）；未知 launcher 回退 -p
    const char *act = NULL;
    if (strcmp(pkg, APP_PKG_B6X_OLD) == 0 || strcmp(pkg, APP_PKG_B6X_NEW) == 0)
        act = "com.example.extool.MainActivity";
    else if (strcmp(pkg, APP_PKG_B7X) == 0)
        act = "com.game.motionelf.activity.ActivityStart";
    char cmd[320];
    if (act)
        snprintf(cmd, sizeof(cmd),
                 AM_BIN " start -n %s/%s --es b6x_auto_launch 1 > /dev/null 2>&1", pkg, act);
    else
        snprintf(cmd, sizeof(cmd),
                 AM_BIN " start -a android.intent.action.MAIN -c android.intent.category.LAUNCHER "
                 "-p %s --es b6x_auto_launch 1 > /dev/null 2>&1", pkg);
    return run_shell_timeout(cmd);
}

void force_kill_and_relaunch(void) {
    const char *pkg = resolve_launch_pkg(NULL);
    write_log("锁死自动重启 强制停止 %s 并重新拉起", pkg);
    run_cmd_silent(AM_BIN " force-stop %s > /dev/null 2>&1", pkg);
    // 等进程退出（最多 2s）
    for (int i = 0; i < 20; i++) {
        int alive = 0;
        app_process_scan(&pkg, &alive, 1);
        if (!alive) break;
        usleep(100000);
    }
    // 复用自动拉起的显式组件逻辑（b6x_auto_launch 后台化）
    int rc = am_start_app(pkg);
    write_log("锁死自动重启 重新拉起 %s rc=%d", pkg, rc);
}

void evict_app_if_eligible(int alive, const char *keep, const char *pkg) {
    if (alive && keep != pkg && !is_foreground_pkg(pkg)) {
        write_log("app 仲裁 强制停止 %s（保留 %s）", pkg, keep);
        run_cmd_silent(AM_BIN " force-stop %s > /dev/null 2>&1", pkg);
    }
}
