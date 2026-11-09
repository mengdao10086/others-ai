package com.mengdao.lsposedtoolkit.gallery;

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
        Context context = appContext();
        AicrStateReceiver.ensureRegistered(context);
        // 设置页首次渲染时主动问一次 aicr，避免等下一次周期广播
        AicrTrigger.sendQuery(context);
        if (AicrStateReceiver.isRunning()) {
            int status = AicrStateReceiver.status();
            if (status == AicrProtocol.RUNNING_LEVEL_OVERLOAD) {
                return "分析暂停（设备负载过高）";
            }
            if (status == AicrProtocol.RUNNING_LEVEL_OVERLOAD_WAIT_RECOVER) {
                return "分析暂停（等待恢复）";
            }
            String detail = AicrStateReceiver.detail();
            if (detail.length() > 0) {
                String statusLine = statusFromDetail(detail, "分析中 ");
                if (statusLine != null) {
                    return statusLine;
                }
            }
            int progress = AicrStateReceiver.progress();
            if (progress > 0) {
                return "分析中 " + String.format(java.util.Locale.US, "%.1f", (float) progress) + "%";
            }
            long startedAt = AicrStateReceiver.startedAt();
            if (startedAt > 0) {
                long seconds = Math.max(0L, (System.currentTimeMillis() - startedAt) / 1000L);
                return "分析中 " + (seconds / 60) + "分" + (seconds % 60) + "秒";
            }
            return "分析中（AI 引擎）";
        }
        if (!galleryRunning()) {
            String lastLine = statusFromDetail(AicrStateReceiver.lastDetail(), "");
            return lastLine != null ? lastLine : "空闲";
        }
        return isCanceled() ? "正在停止" : "分析中";
    }

    /**
     * 明细格式（由 AicrStateReporter 产生）：
     * 5 段「已完成|总数|最慢阶段|待处理|失败」；3 段为旧格式「已处理|总数|阶段」。
     * prefix 为空时是空闲态摘要，运行时传「分析中 」。
     */
    private static String statusFromDetail(String detail, String prefix) {
        if (detail == null || detail.length() == 0) {
            return null;
        }
        String[] parts = detail.split("\\|");
        if (parts.length == 5) {
            return prefix + "已完成 " + parts[0] + " · 待处理 " + parts[3]
                    + " · 失败 " + parts[4];
        }
        if (parts.length == 3) {
            return prefix + "已处理 " + parts[0] + " / " + parts[1]
                    + " 张 · 阶段：" + parts[2];
        }
        return null;
    }

    static void start() {
        Context context = appContext();
        AicrStateReceiver.ensureRegistered(context);
        if (isRunning()) {
            // 分析已经（自动）跑起来：不重启，只把分析线程绑到 4-6
            AicrTrigger.sendBindBig(context);
            return;
        }
        startExecDirectly();
        AicrTrigger.sendStart(context);
    }

    /** 分析线程当前是否已绑大核；未运行或状态过期返回 false。 */
    static boolean isBigBound() {
        AicrStateReceiver.ensureRegistered(appContext());
        return AicrStateReceiver.bigBound();
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
