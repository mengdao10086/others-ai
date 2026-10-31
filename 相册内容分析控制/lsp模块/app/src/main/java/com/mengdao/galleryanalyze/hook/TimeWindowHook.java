package com.mengdao.galleryanalyze.hook;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * hook CardUpdateWorker.doWork() 的 before：
 * 只拦带 mengdao_night_analyze tag 的任务；不在 20:00-06:00 窗口内直接返回成功。
 * 其他任务（包括相册原有每日任务）原样放行；任何异常都放行。
 */
final class TimeWindowHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String WORKER_CLASS =
            "com.miui.gallery.job.workers.CardUpdateWorkerProvider$CardUpdateWorker";

    private TimeWindowHook() {
    }

    static void install(ClassLoader classLoader) {
        Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, classLoader);
        XposedHelpers.findAndHookMethod(workerClass, "doWork", new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                try {
                    Object workerParams = readWorkerParams(param.thisObject);
                    if (workerParams == null) {
                        return;
                    }
                    Object tags = readTags(workerParams);
                    if (NightWorkScheduler.isNightTag(tags) && !NightWorkScheduler.inWindow()) {
                        Class<?> resultClass = XposedHelpers.findClass(
                                "androidx.work.ListenableWorker$Result", classLoader);
                        Object success = XposedHelpers.callStaticMethod(resultClass, "success");
                        param.setResult(success);
                        XposedBridge.log(TAG + ": outside 20:00-06:00, skip night work");
                    }
                } catch (Throwable t) {
                    // 异常一律放行，不能把相册自己的任务搞挂
                    XposedBridge.log(TAG + ": time window gate failed (allow): " + t);
                }
            }
        });
    }

    /** 新版 androidx.work 有 getParameters()，本机 4.3.1.16 暴露的是 mWorkerParams 字段。 */
    private static Object readWorkerParams(Object worker) {
        try {
            Object params = XposedHelpers.callMethod(worker, "getParameters");
            if (params != null) {
                return params;
            }
        } catch (Throwable ignored) {
        }
        try {
            return XposedHelpers.getObjectField(worker, "mWorkerParams");
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** 新版有 getTags()，本机 WorkerParameters 暴露的是 mTags 字段。 */
    private static Object readTags(Object workerParams) {
        try {
            Object tags = XposedHelpers.callMethod(workerParams, "getTags");
            if (tags != null) {
                return tags;
            }
        } catch (Throwable ignored) {
        }
        try {
            return XposedHelpers.getObjectField(workerParams, "mTags");
        } catch (Throwable ignored) {
            return null;
        }
    }
}
