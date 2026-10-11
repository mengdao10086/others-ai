package com.mengdao.dex2oatboost;

import android.content.Context;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageManager;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * ②③ 装后重编译的调度器：串行（单线程）执行，避免并发 dexopt 争抢 CPU/IO。
 *
 * <p>流程：先走零 root 主路径（{@link IpmBridge}）；抛 {@code SecurityException}、返回 false 或
 * 任何异常 → 自动改走 root 通道（{@link RootShell}）；再失败则仅记日志，由系统 bg-dexopt 兜底。
 * 全程 try-catch，任何异常都不外逃。
 */
public final class DexoptTrigger {

    /** 目标档位（固定 speed，改档位只需改这一处常量）。 */
    public static final String TARGET_FILTER = "speed";

    /** 去重窗口：同一包在此毫秒内只触发一次重编译（两个完成信号可能先后到）。 */
    private static final long DEDUP_WINDOW_MS = 120_000L;

    /** ② 异常堆栈只记前若干行，控制日志长度。 */
    private static final int STACK_LINES = 8;
    private static final int DEDUP_MAX = 128;
    private static final Map<String, Long> RECENT = new LinkedHashMap<>();

    private static final ExecutorService POOL = Executors.newSingleThreadExecutor(r -> {
        Thread t = new Thread(r, "dexopt-trigger");
        t.setDaemon(true);
        return t;
    });

    private DexoptTrigger() {
    }

    /**
     * 幂等触发：安装完成广播（覆盖安装时 ADDED/REPLACED 可能先后到达）可能重复，同一包在
     * {@link #DEDUP_WINDOW_MS} 内只受理一次，避免重复重编译。
     *
     * @return true=本次受理并已提交重编译；false=窗口内重复，已忽略
     */
    public static boolean triggerOnce(String pkg) {
        if (pkg == null || pkg.isEmpty()) {
            return false;
        }
        long now = System.currentTimeMillis();
        synchronized (RECENT) {
            Long last = RECENT.get(pkg);
            if (last != null && now - last < DEDUP_WINDOW_MS) {
                Mlog.d("去重：窗口内已触发过，忽略 " + pkg);
                return false;
            }
            RECENT.put(pkg, now);
            while (RECENT.size() > DEDUP_MAX) {
                Iterator<String> it = RECENT.keySet().iterator();
                it.next();
                it.remove();
            }
        }
        schedule(pkg);
        return true;
    }

    /** 后台异步触发，立即返回，绝不阻塞调用方（安装器 UI 线程）。 */
    public static void schedule(final String pkg) {
        if (pkg == null || pkg.isEmpty()) {
            return;
        }
        try {
            POOL.execute(() -> recompile(pkg));
        } catch (Throwable t) {
            Mlog.w("提交重编译任务失败: " + t);
        }
    }

    private static void recompile(String pkg) {
        // ② 决定性对照数据：调用方 uid / 目标包 / 安装来源（判「安装者例外本应成立却没过」还是「本就无此例外」）
        logCallerContext(pkg);

        // ② 零 root 主路径
        try {
            boolean ok = IpmBridge.performDexOptMode(
                    pkg, /*checkProfiles*/ false, TARGET_FILTER, /*force*/ true, /*bootComplete*/ true);
            if (ok) {
                Mlog.i("② 零 root 重编译成功: " + pkg + " -> " + TARGET_FILTER);
                return;
            }
            Mlog.w("② performDexOptMode 返回 false，转 root 降级: " + pkg);
        } catch (SecurityException se) {
            // 打真实异常原文（类名 + message + 前若干行堆栈），替代原先自贴的「安装者例外不成立」标签
            Mlog.w("② SecurityException，转 root 降级: " + pkg + " | " + describeThrowable(se));
        } catch (Throwable t) {
            Mlog.w("② 零 root 路径异常，转 root 降级: " + pkg + " | " + describeThrowable(t));
        }

        // ③ root 降级通道
        try {
            if (RootShell.compile(pkg, TARGET_FILTER)) {
                Mlog.i("③ root 降级重编译成功: " + pkg);
            } else {
                Mlog.w("③ root 降级失败/无 root，交由系统 bg-dexopt 兜底: " + pkg);
            }
        } catch (Throwable t) {
            Mlog.w("③ root 通道异常（" + describeThrowable(t) + "），交由系统 bg-dexopt 兜底: " + pkg);
        }
    }

    /** ② 前采集的调用方对照数据：本进程 uid、binder 调用 uid、目标包、安装来源与其 uid、SDK 版本。 */
    private static void logCallerContext(String pkg) {
        try {
            int myUid = android.os.Process.myUid();
            int callingUid = android.os.Binder.getCallingUid();
            int sdk = android.os.Build.VERSION.SDK_INT;
            Mlog.i("② 调用方对照: sdk=" + sdk
                    + " myUid=" + myUid
                    + " callingUid=" + callingUid
                    + " pkg=" + pkg
                    + " " + describeInstallSource(pkg));
        } catch (Throwable t) {
            Mlog.w("② 调用方对照采集异常（已忽略）: " + t);
        }
    }

    /** 目标包的安装来源：installing/initiating 包名与其 uid；取不到记 null 及原因。 */
    private static String describeInstallSource(String pkg) {
        Context ctx = InstallCompleteReceiver.app();
        if (ctx == null) {
            return "installingPkg=(无应用上下文) initiatingPkg=(无应用上下文) installerUid=-1";
        }
        try {
            PackageManager pm = ctx.getPackageManager();
            if (android.os.Build.VERSION.SDK_INT < 30) {
                return "installingPkg=(SDK<30) initiatingPkg=(SDK<30) installerUid=-1";
            }
            InstallSourceInfo info = pm.getInstallSourceInfo(pkg);
            String installing = info == null ? null : info.getInstallingPackageName();
            String initiating = info == null ? null : info.getInitiatingPackageName();
            int installerUid = -1;
            if (installing != null) {
                try {
                    installerUid = pm.getApplicationInfo(installing, 0).uid;
                } catch (Throwable t) {
                    installerUid = -1;
                }
            }
            return "installingPkg=" + installing
                    + " initiatingPkg=" + initiating
                    + " installerUid=" + installerUid;
        } catch (Throwable t) {
            return "installingPkg=(异常:" + t.getClass().getSimpleName() + ") initiatingPkg=(异常) installerUid=-1";
        }
    }

    /** 异常原文：类名 + message + 前 {@link #STACK_LINES} 行堆栈（控制长度）。 */
    private static String describeThrowable(Throwable t) {
        if (t == null) {
            return "(null)";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(t.getClass().getName());
        String msg = t.getMessage();
        sb.append(": ").append(msg == null ? "(无 message)" : msg);
        StackTraceElement[] st = t.getStackTrace();
        int n = Math.min(STACK_LINES, st.length);
        for (int i = 0; i < n; i++) {
            sb.append("\n    at ").append(st[i]);
        }
        if (st.length > n) {
            sb.append("\n    ...(省略 ").append(st.length - n).append(" 行)");
        }
        return sb.toString();
    }
}
