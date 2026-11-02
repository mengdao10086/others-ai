package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把 aicr 的自动分析间隔从 15 分钟改成 30 分钟。
 *
 * aicr 3.4.14 里这个间隔是硬编码的 900000 毫秒，出现在三处：
 * - VectorAnalysisTasks 未完成时的重试延迟；
 * - VectorAnalysisTasks.mStartTime（下次可启动的时间点）；
 * - PhoneStateMonitor.run_time（充电/息屏触发建库的冷却时间）。
 * 只改这三处，按类名与方法名精确 hook，缺失时只记日志。
 */
final class AicrIntervalHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String WORK_MANAGER_CLASS =
            "com.xiaomi.aicr.aisearch.regularTask.WorkManagerController";
    private static final String VECTOR_TASK_CLASS =
            "com.xiaomi.aicr.aisearch.regularTask.VectorAnalysisTasks";
    private static final String PHONE_MONITOR_CLASS =
            "com.xiaomi.aicr.aisearch.utils.PhoneStateMonitor";
    private static final String PHONE_MONITOR_RUNNABLE_CLASS =
            "com.xiaomi.aicr.aisearch.utils.PhoneStateMonitor$3";
    private static final long OLD_INTERVAL_MS = 900_000L;
    private static final long NEW_INTERVAL_MS = 1_800_000L;
    private static final long TOLERANCE_MS = 120_000L;

    private AicrIntervalHook() {
    }

    static void install(ClassLoader classLoader) {
        hookRetryDelay(classLoader);
        hookTaskStartTime(classLoader);
        hookPhoneMonitorCooldown(classLoader);
    }

    /** VectorAnalysisTasks 未跑完时的重试延迟：900000L -> 1800000L。 */
    private static void hookRetryDelay(ClassLoader classLoader) {
        try {
            Class<?> controller = XposedHelpers.findClassIfExists(
                    WORK_MANAGER_CLASS, classLoader);
            if (controller == null) {
                return;
            }
            XposedHelpers.findAndHookMethod(controller, "enqueueOneTimeWorkDelay",
                    Context.class, Class.class, String.class, String.class, long.class,
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            Object delay = param.args[4];
                            if (delay instanceof Long
                                    && ((Long) delay).longValue() == OLD_INTERVAL_MS) {
                                param.args[4] = NEW_INTERVAL_MS;
                                XposedBridge.log(TAG + ": auto analysis retry 15m -> 30m");
                            }
                        }
                    });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": interval retry hook failed: " + t);
        }
    }

    /** VectorAnalysisTasks.mStartTime：跑完后把下一次可启动时间推后到 30 分钟。 */
    private static void hookTaskStartTime(ClassLoader classLoader) {
        try {
            final Class<?> taskClass = XposedHelpers.findClassIfExists(
                    VECTOR_TASK_CLASS, classLoader);
            Class<?> continuationClass = XposedHelpers.findClassIfExists(
                    "kotlin.coroutines.Continuation", classLoader);
            if (taskClass == null || continuationClass == null) {
                return;
            }
            XposedHelpers.findAndHookMethod(taskClass, "doRemoteWork",
                    continuationClass, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                long start = XposedHelpers.getStaticLongField(
                                        taskClass, "mStartTime");
                                long now = System.currentTimeMillis();
                                long delta = start - now;
                                if (delta > 0 && Math.abs(delta - OLD_INTERVAL_MS) <= TOLERANCE_MS) {
                                    XposedHelpers.setStaticLongField(
                                            taskClass, "mStartTime", now + NEW_INTERVAL_MS);
                                    XposedBridge.log(TAG + ": auto analysis start time 15m -> 30m");
                                }
                            } catch (Throwable t) {
                                XposedBridge.log(TAG + ": interval start-time hook failed: " + t);
                            }
                        }
                    });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": interval start-time install failed: " + t);
        }
    }

    /** PhoneStateMonitor.run_time：充电/息屏触发建库的冷却时间同样改成 30 分钟。 */
    private static void hookPhoneMonitorCooldown(ClassLoader classLoader) {
        try {
            final Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    PHONE_MONITOR_CLASS, classLoader);
            Class<?> runnableClass = XposedHelpers.findClassIfExists(
                    PHONE_MONITOR_RUNNABLE_CLASS, classLoader);
            if (monitorClass == null || runnableClass == null) {
                return;
            }
            XposedBridge.hookMethod(runnableClass.getMethod("run"), new XC_MethodHook() {
                @Override
                protected void afterHookedMethod(MethodHookParam param) {
                    try {
                        long runTime = XposedHelpers.getStaticLongField(
                                monitorClass, "run_time");
                        long now = System.currentTimeMillis();
                        long delta = runTime - now;
                        if (delta > 0 && Math.abs(delta - OLD_INTERVAL_MS) <= TOLERANCE_MS) {
                            XposedHelpers.setStaticLongField(
                                    monitorClass, "run_time", now + NEW_INTERVAL_MS);
                            XposedBridge.log(TAG + ": auto analysis cooldown 15m -> 30m");
                        }
                    } catch (Throwable t) {
                        XposedBridge.log(TAG + ": interval cooldown hook failed: " + t);
                    }
                }
            });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": interval cooldown install failed: " + t);
        }
    }
}
