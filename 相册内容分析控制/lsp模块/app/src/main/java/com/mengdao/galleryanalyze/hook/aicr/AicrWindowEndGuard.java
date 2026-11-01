package com.mengdao.galleryanalyze.hook.aicr;

import android.os.Handler;
import android.os.Looper;

import com.mengdao.galleryanalyze.hook.AicrProtocol;

import java.util.Calendar;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 时间窗收尾：自动分析窗口是 20:00 — 次日 06:00，到 06:00 时若仍在跑就停一次。
 *
 * 每天 06:00 检查一次：正在跑 → AISearchOperation#unlimitedStop(1)，与用户点停止同一条路径；
 * 已经空闲 → 什么都不做。停完就等下一个 06:00，不会重复停。
 */
final class AicrWindowEndGuard {

    private static final String TAG = "GalleryAnalyze";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String OPERATION_CLASS =
            "com.xiaomi.aicr.searchpro.operation.AISearchOperation";
    private static final int WINDOW_END_HOUR = 6;

    private static ClassLoader sClassLoader;
    private static Handler sHandler;

    private AicrWindowEndGuard() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        scheduleNext();
    }

    private static void scheduleNext() {
        long delay = delayToWindowEnd();
        XposedBridge.log(TAG + ": window-end guard armed in " + (delay / 60000L) + " min");
        handler().postDelayed(TASK, delay);
    }

    private static final Runnable TASK = new Runnable() {
        @Override
        public void run() {
            try {
                stopIfRunning();
            } catch (Throwable t) {
                XposedBridge.log(TAG + ": window-end stop failed: " + t);
            } finally {
                scheduleNext();
            }
        }
    };

    private static void stopIfRunning() {
        int status = runningStatus();
        if (status <= 0) {
            XposedBridge.log(TAG + ": window ended, aicr idle, nothing to stop");
            return;
        }
        Class<?> operationClass = XposedHelpers.findClassIfExists(OPERATION_CLASS, sClassLoader);
        if (operationClass == null) {
            XposedBridge.log(TAG + ": AISearchOperation not found, cannot stop at window end");
            return;
        }
        Object operation = XposedHelpers.getStaticObjectField(operationClass, "INSTANCE");
        XposedHelpers.callMethod(operation, "unlimitedStop", AicrProtocol.SCOPE_GALLERY);
        XposedBridge.log(TAG + ": window ended (06:00), stopped once, status was " + status);
    }

    private static int runningStatus() {
        try {
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass == null) {
                return 0;
            }
            Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
            return (Integer) XposedHelpers.callMethod(status, "getRunningStatus");
        } catch (Throwable t) {
            return 0;
        }
    }

    /** 距下一个 06:00 的毫秒数；已经过了今天 06:00 就算到明天。 */
    private static long delayToWindowEnd() {
        Calendar now = Calendar.getInstance();
        Calendar next = Calendar.getInstance();
        next.set(Calendar.HOUR_OF_DAY, WINDOW_END_HOUR);
        next.set(Calendar.MINUTE, 0);
        next.set(Calendar.SECOND, 0);
        next.set(Calendar.MILLISECOND, 0);
        if (!next.after(now)) {
            next.add(Calendar.DAY_OF_YEAR, 1);
        }
        return next.getTimeInMillis() - now.getTimeInMillis();
    }

    private static Handler handler() {
        if (sHandler == null) {
            sHandler = new Handler(Looper.getMainLooper());
        }
        return sHandler;
    }
}
