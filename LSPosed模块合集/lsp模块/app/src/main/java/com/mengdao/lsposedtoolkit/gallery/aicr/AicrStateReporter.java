package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把 aicr 的真实运行状态回传给相册。
 *
 * 相册设置页原先只读自己进程里的 isRunning，aicr 在 :searchDataService 里算多久都显示「空闲」。
 * 这里 hook RunningStatus.setRunningStatus：状态变化立即广播；非空闲期间每秒检查一次进度，
 * 最多每 5 秒广播一次。只读，不改变任何状态。
 *
 * 进度读取必须离开主线程：ManagerDataBase 未开 allowMainThreadQueries，主线程访问 QueryDao
 * 会抛 IllegalStateException，被 getRealProgressFromAI 吞掉后返回 0，再把 0 写回
 * migrate_gallery_progress，相册搜索页就显示 0。这里改用独立 HandlerThread 读取。
 * 后台线程启动失败时降级为「只报状态、不读进度」，绝不回退到主线程读取。
 */
final class AicrStateReporter {

    private static final String TAG = "GalleryAnalyze";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.ProgressMonitor";
    private static final String PROGRESS_THREAD_NAME = "mengdao-aicr-progress";
    private static final long POLL_INTERVAL_MS = 1000L;
    private static final long BROADCAST_INTERVAL_MS = 5000L;
    private static final int STATUS_IDLE = 0;

    private static ClassLoader sClassLoader;
    private static HandlerThread sThread;
    private static Handler sHandler;
    private static boolean sHandlerInitialized;
    private static volatile int sStatus = STATUS_IDLE;
    private static volatile boolean sLooping;
    private static volatile long sLastProgressBroadcastAt;

    private AicrStateReporter() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        Class<?> statusClass = XposedHelpers.findClassIfExists(RUNNING_STATUS_CLASS, classLoader);
        if (statusClass == null) {
            XposedBridge.log(TAG + ": RunningStatus not found, skip state reporting");
            return;
        }
        if (handler() == null) {
            XposedBridge.log(TAG + ": progress thread unavailable, status-only mode");
        }
        XposedHelpers.findAndHookMethod(statusClass, "setRunningStatus", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        onStatusChanged((Integer) param.args[0]);
                    }
                });
    }

    private static void onStatusChanged(int status) {
        try {
            int previous = sStatus;
            int normalized = status > 0 ? status : STATUS_IDLE;
            sStatus = normalized;
            XposedBridge.log(TAG + ": aicr runningStatus=" + status);
            Handler handler = handler();
            if (normalized == STATUS_IDLE) {
                stopLoop();
                // 分析停止：退出大核模式并绑回 0-3
                AicrCpuAffinity.stopManual();
                report(STATUS_IDLE, -1);
                return;
            }
            if (previous == STATUS_IDLE) {
                // 空闲 → 运行：只有手动启动走大核，其余分析走小核
                if (AicrCpuAffinity.consumeManualStart()) {
                    AicrCpuAffinity.startManual();
                } else {
                    AicrCpuAffinity.bindSmall();
                }
            }
            sLastProgressBroadcastAt = 0L;
            if (handler == null) {
                report(normalized, -1);
                return;
            }
            handler.post(IMMEDIATE_BROADCAST);
            startLoop(handler);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state report failed: " + t);
        }
    }

    /** 相册主动查询：立即回报一次当前状态与进度（进度仍在后台线程读）。 */
    static void reportNow() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Handler handler = handler();
            if (handler != null) {
                handler.post(QUERY_REPORT);
            } else {
                // 没有后台线程时绝不读进度：主线程读 Room 会抛异常并被 aicr 吞成 0
                report(sStatus, -1);
            }
            return;
        }
        QUERY_REPORT.run();
    }

    private static final Runnable QUERY_REPORT = new Runnable() {
        @Override
        public void run() {
            // sStatus 来自本进程的 setRunningStatus hook，是实时值；
            // 不能用 getRunningStatus()，它读 SharedPreferences，开机会带出上次运行的旧值。
            int status = sStatus;
            if (status == STATUS_IDLE) {
                stopLoop();
                report(status, -1);
                return;
            }
            Handler handler = sHandler;
            if (handler != null) {
                startLoop(handler);
            }
            report(status, currentProgress());
            sLastProgressBroadcastAt = SystemClock.elapsedRealtime();
        }
    };

    private static final Runnable IMMEDIATE_BROADCAST = new Runnable() {
        @Override
        public void run() {
            int status = sStatus;
            if (status == STATUS_IDLE) {
                return;
            }
            report(status, currentProgress());
            sLastProgressBroadcastAt = SystemClock.elapsedRealtime();
        }
    };

    private static void startLoop(Handler handler) {
        if (sLooping) {
            return;
        }
        sLooping = true;
        handler.postDelayed(LOOP, POLL_INTERVAL_MS);
    }

    private static void stopLoop() {
        sLooping = false;
        Handler handler = sHandler;
        if (handler != null) {
            handler.removeCallbacks(LOOP);
        }
    }

    private static final Runnable LOOP = new Runnable() {
        @Override
        public void run() {
            if (!sLooping) {
                return;
            }
            try {
                int status = sStatus;
                if (status == STATUS_IDLE) {
                    stopLoop();
                    return;
                }
                long now = SystemClock.elapsedRealtime();
                if (now - sLastProgressBroadcastAt >= BROADCAST_INTERVAL_MS) {
                    report(status, currentProgress());
                    sLastProgressBroadcastAt = now;
                }
            } catch (Throwable t) {
                XposedBridge.log(TAG + ": progress report failed: " + t);
            }
            Handler handler = sHandler;
            if (sLooping && handler != null) {
                handler.postDelayed(this, POLL_INTERVAL_MS);
            }
        }
    };

    private static synchronized Handler handler() {
        if (sHandlerInitialized) {
            return sHandler;
        }
        sHandlerInitialized = true;
        try {
            HandlerThread thread = new HandlerThread(PROGRESS_THREAD_NAME);
            thread.setDaemon(true);
            thread.start();
            sThread = thread;
            sHandler = new Handler(thread.getLooper());
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": progress thread start failed: " + t);
            sThread = null;
            sHandler = null;
        }
        return sHandler;
    }

    private static void report(int status, int progress) {
        try {
            Context context = context();
            if (context == null) {
                return;
            }
            Intent intent = new Intent(AicrProtocol.ACTION_STATE);
            intent.setPackage(AicrProtocol.GALLERY_PACKAGE);
            intent.putExtra(AicrProtocol.EXTRA_STATUS, status);
            intent.putExtra(AicrProtocol.EXTRA_PROGRESS, progress);
            intent.putExtra(AicrProtocol.EXTRA_STARTED_AT, runningStartTime());
            context.sendBroadcast(intent);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state broadcast failed: " + t);
        }
    }

    /** 本轮开始时间；相册侧据此显示「已运行多久」，进度拿不到时也有东西可看。 */
    private static long runningStartTime() {
        try {
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass == null) {
                return 0L;
            }
            Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
            return (Long) XposedHelpers.callMethod(status, "getRunningStartTime");
        } catch (Throwable t) {
            return 0L;
        }
    }

    /**
     * 读相册建的索引进度（0~100）。取不到就返回 -1，相册侧按「只显示分析中」处理。
     * getIndexProgress 是带默认参数的 Kotlin 方法，走 $default 合成方法调用。
     * 必须在后台线程调用：内部会访问 Room，主线程会抛 IllegalStateException。
     */
    private static int currentProgress() {
        try {
            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                return -1;
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            Object bundle = XposedHelpers.callStaticMethod(monitorClass, "getIndexProgress$default",
                    monitor, AicrProtocol.SCOPE_GALLERY, false, null, 6, null);
            if (bundle instanceof android.os.Bundle) {
                return ((android.os.Bundle) bundle).getInt("analyse_progress", -1);
            }
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": progress lookup failed: " + t);
        }
        return -1;
    }

    private static Context context() {
        try {
            Class<?> util = XposedHelpers.findClassIfExists(
                    "com.xiaomi.aicr.common.ContextUtil", sClassLoader);
            if (util != null) {
                Object context = XposedHelpers.callStaticMethod(util, "getApplicationContext");
                if (context instanceof Context) {
                    return (Context) context;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }
}
