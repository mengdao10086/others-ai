package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把 aicr 的真实运行状态回传给相册。
 *
 * 相册设置页原先只读自己进程里的 isRunning，aicr 在 :searchDataService 里算多久都显示「空闲」。
 * 这里 hook RunningStatus.setRunningStatus：每次状态变化立刻广播一次；非空闲期间每 3 秒
 * 补一次进度，让相册那边的进度能走动。只读，不改变任何状态。
 */
final class AicrStateReporter {

    private static final String TAG = "GalleryAnalyze";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.ProgressMonitor";
    private static final long PROGRESS_INTERVAL_MS = 3000L;
    private static final int STATUS_IDLE = 0;

    private static ClassLoader sClassLoader;
    private static Handler sHandler;
    private static volatile int sStatus = STATUS_IDLE;
    private static volatile boolean sLooping;

    private AicrStateReporter() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        Class<?> statusClass = XposedHelpers.findClassIfExists(RUNNING_STATUS_CLASS, classLoader);
        if (statusClass == null) {
            XposedBridge.log(TAG + ": RunningStatus not found, skip state reporting");
            return;
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
            sStatus = status;
            XposedBridge.log(TAG + ": aicr runningStatus=" + status);
            report(status, currentProgress());
            if (status == STATUS_IDLE) {
                stopLoop();
            } else {
                startLoop();
            }
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state report failed: " + t);
        }
    }

    private static void startLoop() {
        if (sLooping) {
            return;
        }
        sLooping = true;
        handler().postDelayed(LOOP, PROGRESS_INTERVAL_MS);
    }

    private static void stopLoop() {
        sLooping = false;
        if (sHandler != null) {
            sHandler.removeCallbacks(LOOP);
        }
    }

    private static final Runnable LOOP = new Runnable() {
        @Override
        public void run() {
            if (!sLooping) {
                return;
            }
            try {
                report(sStatus, currentProgress());
            } catch (Throwable t) {
                XposedBridge.log(TAG + ": progress report failed: " + t);
            }
            if (sLooping) {
                handler().postDelayed(this, PROGRESS_INTERVAL_MS);
            }
        }
    };

    private static Handler handler() {
        if (sHandler == null) {
            sHandler = new Handler(Looper.getMainLooper());
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
