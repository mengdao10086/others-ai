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
    private static boolean sStarted;

    /** 进程内缓存：已查到的类与单例，避免每次收尾都重查/反射。 */
    private static Class<?> sRunningStatusClass;
    private static Object sRunningStatusInstance;
    private static Class<?> sOperationClass;
    private static Object sOperationInstance;

    private AicrWindowEndGuard() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        if (sStarted) {
            return;
        }
        sStarted = true;
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
        int status = runStatus();
        if (status <= 0) {
            XposedBridge.log(TAG + ": window ended, aicr idle, nothing to stop");
            return;
        }
        Class<?> operationClass = operationClass();
        if (operationClass == null) {
            XposedBridge.log(TAG + ": AISearchOperation not found, cannot stop at window end");
            return;
        }
        try {
            XposedHelpers.callMethod(operationInstance(operationClass),
                    "unlimitedStop", AicrProtocol.SCOPE_GALLERY);
            XposedBridge.log(TAG + ": window ended (06:00), stopped once, status was " + status);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": window-end stop failed: " + t);
        }
    }

    /** 进程内实时值；SharedPreferences 里的 getRunningStatus() 开机会带出旧值。 */
    private static int runStatus() {
        try {
            if (sRunningStatusClass == null) {
                sRunningStatusClass = XposedHelpers.findClassIfExists(
                        RUNNING_STATUS_CLASS, sClassLoader);
            }
            if (sRunningStatusClass == null) {
                return -1;
            }
            if (sRunningStatusInstance == null) {
                sRunningStatusInstance =
                        XposedHelpers.getStaticObjectField(sRunningStatusClass, "INSTANCE");
            }
            try {
                return (Integer) XposedHelpers.callMethod(sRunningStatusInstance, "getRunStatus");
            } catch (Throwable ignored) {
                return (Integer) XposedHelpers.callMethod(
                        sRunningStatusInstance, "getRunningStatus");
            }
        } catch (Throwable t) {
            return -1;
        }
    }

    private static Class<?> operationClass() {
        if (sOperationClass == null) {
            sOperationClass = XposedHelpers.findClassIfExists(OPERATION_CLASS, sClassLoader);
        }
        return sOperationClass;
    }

    private static Object operationInstance(Class<?> operationClass) {
        if (sOperationInstance == null) {
            sOperationInstance = XposedHelpers.getStaticObjectField(operationClass, "INSTANCE");
        }
        return sOperationInstance;
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
