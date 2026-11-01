package com.mengdao.lsposedtoolkit.gallery.aicr;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 只读诊断：记录 AISearchDataTask 启动时的档位、范围、运行态与 checkCanStart 结果。
 * 不修改任何参数或返回值，用来回答「手动触发后为什么没跑」。
 */
final class AisearchTaskDiagnosticHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String TASK_CLASS = "com.xiaomi.aicr.searchpro.worker.AISearchDataTask";
    private static final String CONTINUATION_CLASS = "kotlin.coroutines.Continuation";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";

    private static ClassLoader sClassLoader;

    private AisearchTaskDiagnosticHook() {
    }

    static void install(ClassLoader classLoader) {
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
                    protected void beforeHookedMethod(MethodHookParam param) {
                        logState(param.thisObject);
                    }
                });
    }

    private static void logState(Object task) {
        try {
            int level = (Integer) XposedHelpers.callMethod(task, "getLevel");
            int scope = (Integer) XposedHelpers.callMethod(task, "getScope");
            int runningStatus = -1;
            boolean canStart = false;
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass != null) {
                Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
                runningStatus = (Integer) XposedHelpers.callMethod(status, "getRunningStatus");
                canStart = (Boolean) XposedHelpers.callMethod(status, "checkCanStart", level);
            }
            XposedBridge.log(TAG + ": AISearchDataTask level=" + level + " scope=" + scope
                    + " runningStatus=" + runningStatus + " checkCanStart=" + canStart);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AISearchDataTask diagnostic failed: " + t);
        }
    }
}
