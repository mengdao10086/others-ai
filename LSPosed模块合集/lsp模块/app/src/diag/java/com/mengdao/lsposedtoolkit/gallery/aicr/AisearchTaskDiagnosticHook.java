package com.mengdao.lsposedtoolkit.gallery.aicr;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 只读诊断：记录 AISearchDataTask.doRemoteWork 的进入/退出与结果。
 *
 * 用来区分「分析真的没启动/被门禁挡住」和「分析在跑但进度没变」。
 * 只记录，不修改参数、返回值或任何 aicr 状态。
 *
 * 注意：doRemoteWork 是 suspend 方法，after 回调拿到的是本次调用的返回值，
 * 可能是 COROUTINE_SUSPENDED（真正的完成在协程恢复之后）；这里只作为心跳证据。
 */
final class AisearchTaskDiagnosticHook {

    private static final String TAG = "GalleryAnalyze";

    /** 诊断开关；false 时不装 hook、不输出任何 task-enter/exit 行。 */
    static final boolean ENABLED = false;
    private static final String TASK_CLASS = "com.xiaomi.aicr.searchpro.worker.AISearchDataTask";
    private static final String CONTINUATION_CLASS = "kotlin.coroutines.Continuation";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final int MAX_RESULT_LENGTH = 120;

    private static ClassLoader sClassLoader;
    private static boolean sFailureLogged;

    private AisearchTaskDiagnosticHook() {
    }

    static void install(ClassLoader classLoader) {
        if (!ENABLED) {
            XposedBridge.log(TAG + ": AisearchTaskDiagnosticHook disabled");
            return;
        }
        sClassLoader = classLoader;
        Class<?> taskClass = XposedHelpers.findClassIfExists(TASK_CLASS, classLoader);
        Class<?> continuationClass = XposedHelpers.findClassIfExists(
                CONTINUATION_CLASS, classLoader);
        if (taskClass == null || continuationClass == null) {
            XposedBridge.log(TAG + ": AISearchDataTask or Continuation not found, skip");
            return;
        }
        XposedHelpers.findAndHookMethod(taskClass, "doRemoteWork", continuationClass,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(XC_MethodHook.MethodHookParam param) {
                        logEvent("enter", param, null);
                    }

                    @Override
                    protected void afterHookedMethod(XC_MethodHook.MethodHookParam param) {
                        logEvent("exit", param, param.getResult());
                    }
                });
    }

    private static void logEvent(String event, XC_MethodHook.MethodHookParam param, Object result) {
        try {
            StringBuilder line = new StringBuilder();
            line.append("task-").append(event)
                    .append(" time=").append(System.currentTimeMillis())
                    .append(" pid=").append(android.os.Process.myPid());
            String state = describeTask(param.thisObject);
            if (state.length() > 0) {
                line.append(' ').append(state);
            }
            if ("exit".equals(event)) {
                line.append(" result=").append(describeResult(param, result));
            }
            AicrProgressDiagnostics.logDiagLine(line.toString());
        } catch (Throwable t) {
            if (!sFailureLogged) {
                sFailureLogged = true;
                XposedBridge.log(TAG + ": AISearchDataTask diagnostic failed: " + t);
            }
        }
    }

    private static String describeTask(Object task) {
        int level = -1;
        int scope = -1;
        int runningStatus = -1;
        boolean canStart = false;
        try {
            level = (Integer) XposedHelpers.callMethod(task, "getLevel");
            scope = (Integer) XposedHelpers.callMethod(task, "getScope");
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass != null) {
                Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
                runningStatus = (Integer) XposedHelpers.callMethod(status, "getRunningStatus");
                canStart = (Boolean) XposedHelpers.callMethod(status, "checkCanStart", level);
            }
        } catch (Throwable ignored) {
        }
        return "level=" + level + " scope=" + scope
                + " runningStatus=" + runningStatus + " checkCanStart=" + canStart;
    }

    private static String describeResult(XC_MethodHook.MethodHookParam param, Object result) {
        if (param.hasThrowable()) {
            Throwable throwable = param.getThrowable();
            return "throw:" + (throwable == null ? "null" : throwable.getClass().getSimpleName());
        }
        if (result == null) {
            return "null";
        }
        String text = String.valueOf(result);
        if (text.length() > MAX_RESULT_LENGTH) {
            text = text.substring(0, MAX_RESULT_LENGTH);
        }
        return text;
    }
}
