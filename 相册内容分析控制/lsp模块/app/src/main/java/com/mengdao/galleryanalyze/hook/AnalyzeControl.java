package com.mengdao.galleryanalyze.hook;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 分析控制：启动 / 停止 / 状态。
 * 全部通过反射调用相册进程内的 Companion，避免模块 ClassLoader 直接引用相册类。
 */
final class AnalyzeControl {

    private static final String TAG = "GalleryAnalyze";
    private static final String WORKER_CLASS =
            "com.miui.gallery.job.workers.CardUpdateWorkerProvider$CardUpdateWorker";

    private static ClassLoader sClassLoader;

    private AnalyzeControl() {
    }

    static void init(ClassLoader classLoader) {
        sClassLoader = classLoader;
    }

    static boolean isRunning() {
        try {
            Object companion = getCompanion();
            Object result = XposedHelpers.findMethodExact(companion.getClass(), "isRunning")
                    .invoke(companion);
            return result instanceof Boolean && (Boolean) result;
        } catch (Throwable t) {
            return false;
        }
    }

    static boolean isCanceled() {
        try {
            Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, sClassLoader);
            return XposedHelpers.getStaticBooleanField(workerClass, "mCanceled");
        } catch (Throwable t) {
            return false;
        }
    }

    static String statusText() {
        if (!isRunning()) {
            return "空闲";
        }
        return isCanceled() ? "正在停止" : "分析中";
    }

    static void start() {
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Object companion = getCompanion();
                    XposedHelpers.findMethodExact(companion.getClass(), "execDirectly",
                                    boolean.class, boolean.class, int.class)
                            .invoke(companion, false, false, 4);
                    XposedBridge.log(TAG + ": start requested (execDirectly false,false,4)");
                } catch (Throwable t) {
                    XposedBridge.log(TAG + ": start failed: " + t);
                }
            }
        }, "mengdao-gallery-analyze-start").start();
    }

    static void stop() {
        try {
            Object companion = getCompanion();
            XposedHelpers.findMethodExact(companion.getClass(), "cancel", String.class)
                    .invoke(companion, "user_stop");
            XposedBridge.log(TAG + ": stop requested (cancel user_stop)");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": stop failed: " + t);
        }
    }

    private static Object getCompanion() throws Exception {
        Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, sClassLoader);
        return XposedHelpers.getStaticObjectField(workerClass, "Companion");
    }
}
