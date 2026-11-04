package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.BatteryManager;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 时间窗收尾：自动分析窗口是 20:00 — 次日 06:00。
 *
 * 06:00 之后轮询，直到出现「屏幕亮」或「未充电」时停一次，与用户点停止同一条路径。
 * 每天只处理一次，处理日期落盘，进程重建不会重复停。
 */
final class AicrWindowEndGuard {

    private static final String TAG = "GalleryAnalyze";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String OPERATION_CLASS =
            "com.xiaomi.aicr.searchpro.operation.AISearchOperation";
    private static final String PREFS_NAME = "aicr_window_end_guard";
    private static final String KEY_HANDLED_DATE = "handled_date";

    private static final int WINDOW_START_HOUR = 6;
    private static final int WINDOW_END_HOUR = 20;
    /** 窗口内且 aicr 运行中：3 秒看一次亮屏/充电状态。 */
    private static final long TICK_RUNNING_MS = 3000L;
    /** 窗口内但 aicr 空闲：60 秒看一次，运行结束后最多 60 秒完成收尾。 */
    private static final long TICK_IDLE_IN_WINDOW_MS = 60000L;
    /** 窗口外或当天已处理：5 分钟看一次是否进入下一个窗口。 */
    private static final long TICK_IDLE_MS = 5L * 60L * 1000L;
    private static final int CONTEXT_MISS_LOG_TICKS = 5;

    private static ClassLoader sClassLoader;
    private static Handler sHandler;
    private static boolean sStarted;
    /** install 发生在窗口内时置位：当天只标记、不停止，等 Context 可用后落盘。 */
    private static boolean sSuppressStopToday;
    private static int sContextMissTicks;
    private static boolean sContextMissLogged;
    private static boolean sMarkFailureLogged;

    /** 进程内缓存：Context、系统服务与已查到的类，避免每轮重查/反射。 */
    private static Context sContext;
    private static SharedPreferences sPrefs;
    private static PowerManager sPowerManager;
    private static BatteryManager sBatteryManager;
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

        Calendar now = Calendar.getInstance();
        if (isWindowHour(now)) {
            sSuppressStopToday = true;
            String today = dateKey(now);
            Context context = context();
            if (context != null) {
                if (markHandled(context, today)) {
                    XposedBridge.log(TAG + ": window-end: installed inside window, marked "
                            + today + " handled at install, stop suppressed");
                } else {
                    logMarkFailure(today);
                }
            }
        }
        handler().post(TICK);
    }

    private static final Runnable TICK = new Runnable() {
        @Override
        public void run() {
            long delay = TICK_IDLE_MS;
            try {
                delay = tickOnce();
            } catch (Throwable t) {
                XposedBridge.log(TAG + ": window-end tick failed: " + t);
            } finally {
                handler().postDelayed(TICK, delay);
            }
        }
    };

    /** 执行一轮检查，返回下一轮的间隔。 */
    private static long tickOnce() {
        Calendar now = Calendar.getInstance();
        boolean inWindow = isWindowHour(now);
        if (!inWindow) {
            sSuppressStopToday = false;
        }

        Context context = context();
        if (context == null) {
            noteContextMissing();
            return inWindow ? TICK_IDLE_IN_WINDOW_MS : TICK_IDLE_MS;
        }
        noteContextAvailable();

        String today = dateKey(now);
        if (alreadyHandled(context, today)) {
            sSuppressStopToday = false;
            return TICK_IDLE_MS;
        }
        if (!inWindow) {
            return TICK_IDLE_MS;
        }
        if (sSuppressStopToday) {
            if (markHandled(context, today)) {
                sSuppressStopToday = false;
                XposedBridge.log(TAG + ": window-end: marked " + today
                        + " handled after install, stop suppressed");
                return TICK_IDLE_MS;
            }
            logMarkFailure(today);
            return activeDelay();
        }

        String reason = stopTrigger(context);
        if (reason == null) {
            return activeDelay();
        }
        if (!markHandled(context, today)) {
            logMarkFailure(today);
            return activeDelay();
        }
        XposedBridge.log(TAG + ": window-end: marked " + today + " handled");
        stopIfRunning(reason);
        return TICK_IDLE_MS;
    }

    /** aicr 运行中保持 3 秒，空闲时退到 60 秒。 */
    private static long activeDelay() {
        return runStatus() > 0 ? TICK_RUNNING_MS : TICK_IDLE_IN_WINDOW_MS;
    }

    /** 命中「屏幕亮」或「未充电」时返回原因，否则返回 null。 */
    private static String stopTrigger(Context context) {
        boolean interactive = false;
        boolean notCharging = false;
        if (sPowerManager == null) {
            sPowerManager = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        }
        if (sPowerManager != null) {
            interactive = sPowerManager.isInteractive();
        }
        if (sBatteryManager == null) {
            sBatteryManager = (BatteryManager) context.getSystemService(Context.BATTERY_SERVICE);
        }
        if (sBatteryManager != null) {
            notCharging = !sBatteryManager.isCharging();
        }
        if (!interactive && !notCharging) {
            return null;
        }
        if (interactive && notCharging) {
            return "screen on, not charging";
        }
        return interactive ? "screen on" : "not charging";
    }

    private static void stopIfRunning(String reason) {
        int status = runStatus();
        if (status < 0) {
            XposedBridge.log(TAG + ": window-end: RunningStatus unavailable, stop skipped, reason="
                    + reason);
            return;
        }
        if (status == 0) {
            XposedBridge.log(TAG + ": window-end: aicr already idle, nothing to stop, reason="
                    + reason);
            return;
        }
        Class<?> operationClass = operationClass();
        if (operationClass == null) {
            XposedBridge.log(TAG + ": window-end: AISearchOperation not found, stop skipped, reason="
                    + reason);
            return;
        }
        Object operation = operationInstance(operationClass);
        XposedHelpers.callMethod(operation, "unlimitedStop", AicrProtocol.SCOPE_GALLERY);
        XposedBridge.log(TAG + ": window-end: stopped aicr, reason=" + reason
                + ", status=" + status);
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
            return (Integer) XposedHelpers.callMethod(sRunningStatusInstance, "getRunStatus");
        } catch (Throwable t) {
            return -1;
        }
    }

    private static boolean isWindowHour(Calendar calendar) {
        int hour = calendar.get(Calendar.HOUR_OF_DAY);
        return hour >= WINDOW_START_HOUR && hour < WINDOW_END_HOUR;
    }

    private static String dateKey(Calendar calendar) {
        return new SimpleDateFormat("yyyy-MM-dd", Locale.US)
                .format(new Date(calendar.getTimeInMillis()));
    }

    private static boolean alreadyHandled(Context context, String today) {
        try {
            String handled = prefs(context).getString(KEY_HANDLED_DATE, "");
            return today.equals(handled);
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean markHandled(Context context, String today) {
        try {
            boolean ok = prefs(context).edit()
                    .putString(KEY_HANDLED_DATE, today)
                    .commit();
            if (ok) {
                sMarkFailureLogged = false;
            }
            return ok;
        } catch (Throwable t) {
            return false;
        }
    }

    private static void logMarkFailure(String today) {
        if (sMarkFailureLogged) {
            return;
        }
        sMarkFailureLogged = true;
        XposedBridge.log(TAG + ": window-end: cannot persist handled date " + today
                + ", stop deferred");
    }

    private static void noteContextMissing() {
        sContextMissTicks++;
        if (sContextMissLogged || sContextMissTicks < CONTEXT_MISS_LOG_TICKS) {
            return;
        }
        sContextMissLogged = true;
        XposedBridge.log(TAG + ": window-end: context unavailable for "
                + sContextMissTicks + " consecutive ticks, will retry");
    }

    private static void noteContextAvailable() {
        sContextMissTicks = 0;
        sContextMissLogged = false;
    }

    private static SharedPreferences prefs(Context context) {
        if (sPrefs == null) {
            sPrefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
        }
        return sPrefs;
    }

    private static Context context() {
        if (sContext != null) {
            return sContext;
        }
        try {
            Class<?> util = XposedHelpers.findClassIfExists(
                    "com.xiaomi.aicr.common.ContextUtil", sClassLoader);
            if (util != null) {
                Object context = XposedHelpers.callStaticMethod(util, "getApplicationContext");
                if (context instanceof Context) {
                    sContext = (Context) context;
                    return sContext;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Object application =
                    XposedHelpers.callStaticMethod(activityThread, "currentApplication");
            if (application instanceof Context) {
                sContext = (Context) application;
            }
        } catch (Throwable ignored) {
        }
        return sContext;
    }

    private static Handler handler() {
        if (sHandler == null) {
            sHandler = new Handler(Looper.getMainLooper());
        }
        return sHandler;
    }
}
