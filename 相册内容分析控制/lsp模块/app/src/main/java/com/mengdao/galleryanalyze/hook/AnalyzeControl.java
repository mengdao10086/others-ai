package com.mengdao.galleryanalyze.hook;

import android.content.Context;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 分析控制：启动 / 停止 / 状态。
 *
 * 相册侧通过反射调用进程内的 Companion；同时用显式广播通知 aicr，
 * 让 aicr 在自己的 :searchDataService 进程里发起计算。两条链路互不阻塞。
 */
final class AnalyzeControl {

    private static final String TAG = "GalleryAnalyze";
    private static final String WORKER_CLASS =
            "com.miui.gallery.job.workers.CardUpdateWorkerProvider$CardUpdateWorker";

    private static ClassLoader sClassLoader;
    private static ExecutorService sStartExecutor;

    private AnalyzeControl() {
    }

    static void init(ClassLoader classLoader) {
        sClassLoader = classLoader;
    }

    static boolean isRunning() {
        AicrStateReceiver.ensureRegistered(appContext());
        return AicrStateReceiver.isRunning() || galleryRunning();
    }

    /** 相册自己进程里的 isRunning；aicr 接管时它恒为 false。 */
    private static boolean galleryRunning() {
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
        if (AicrStateReceiver.isRunning()) {
            return false;
        }
        try {
            Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, sClassLoader);
            return XposedHelpers.getStaticBooleanField(workerClass, "mCanceled");
        } catch (Throwable t) {
            return false;
        }
    }

    static String statusText() {
        AicrStateReceiver.ensureRegistered(appContext());
        if (AicrStateReceiver.isRunning()) {
            int progress = AicrStateReceiver.progress();
            if (progress > 0) {
                return "分析中 " + progress + "%";
            }
            long startedAt = AicrStateReceiver.startedAt();
            if (startedAt > 0) {
                long seconds = Math.max(0L, (System.currentTimeMillis() - startedAt) / 1000L);
                return "分析中 " + (seconds / 60) + "分" + (seconds % 60) + "秒";
            }
            return "分析中（AI 引擎）";
        }
        if (!galleryRunning()) {
            return "空闲";
        }
        return isCanceled() ? "正在停止" : "分析中";
    }

    static void start() {
        AicrStateReceiver.ensureRegistered(appContext());
        startExecDirectly();
        AicrTrigger.sendStart(appContext());
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
        AicrTrigger.sendStop(appContext());
    }

    private static void startExecDirectly() {
        try {
            startExecutor().execute(new Runnable() {
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
            });
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": start enqueue failed: " + t);
        }
    }

    private static synchronized ExecutorService startExecutor() {
        if (sStartExecutor == null) {
            sStartExecutor = Executors.newSingleThreadExecutor(runnable -> {
                Thread thread = new Thread(runnable, "mengdao-gallery-analyze-start");
                thread.setDaemon(true);
                return thread;
            });
        }
        return sStartExecutor;
    }

    private static Object getCompanion() throws Exception {
        Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, sClassLoader);
        return XposedHelpers.getStaticObjectField(workerClass, "Companion");
    }

    private static Context appContext() {
        try {
            Class<?> appClass = XposedHelpers.findClass("com.miui.gallery.GalleryApp", sClassLoader);
            return (Context) XposedHelpers.callStaticMethod(appClass, "sGetAndroidContext");
        } catch (Throwable t) {
            return null;
        }
    }
}
