package com.mengdao.galleryanalyze.hook;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 只记录 execDirectly 的决策与耗时，不改任何判断或返回值。
 *
 * 日志回答两个问题：夜间任务为什么没跑（startState / 充电 / 电量 / aicr 是否接管），
 * 以及这次调用是跑完还是被取消（耗时 / mCanceled）。
 * v2.0 起相册侧不再放宽充电门禁、不再补触发充电广播，本组 hook 只剩观测职责。
 */
final class ExecDirectlyLogHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String WORKER_CLASS =
            "com.miui.gallery.job.workers.CardUpdateWorkerProvider$CardUpdateWorker";

    private static final ThreadLocal<Long> START_AT = new ThreadLocal<>();

    private static ClassLoader sClassLoader;

    private ExecDirectlyLogHook() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, classLoader);
        Object companion = XposedHelpers.getStaticObjectField(workerClass, "Companion");
        XposedHelpers.findAndHookMethod(companion.getClass(), "execDirectly",
                boolean.class, boolean.class, int.class, new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        START_AT.set(System.currentTimeMillis());
                        try {
                            logStart((Integer) param.args[2]);
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + ": execDirectly log before failed: " + t);
                        }
                    }

                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            logFinish((Integer) param.args[2]);
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + ": execDirectly log after failed: " + t);
                        }
                    }
                });
    }

    /**
     * before 只记录入口参数与电源状态，不触碰 AlgoProgressManager：
     * 目标方法在「未充电 / 亮屏」等早退分支根本不会初始化它，日志不能抢在目标之前触发类初始化。
     */
    private static void logStart(int startState) {
        XposedBridge.log(TAG + ": execDirectly startState=" + startState + " "
                + powerText(appContext()));
    }

    /**
     * execDirectly 返回时打一行：耗时 + mCanceled + aicr 两个能力位。
     * 此时目标方法已经执行完，AlgoProgressManager 的初始化时机不会再被日志提前。
     * 用来区分「真的跑完了」和「被取消」——aicr 接管的设备上本地算法大多被跳过，几秒结束属正常。
     */
    private static void logFinish(int startState) {
        Long start = START_AT.get();
        START_AT.remove();
        if (start == null) {
            return;
        }
        long seconds = (System.currentTimeMillis() - start) / 1000;
        boolean canceled = false;
        try {
            Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, sClassLoader);
            canceled = XposedHelpers.getStaticBooleanField(workerClass, "mCanceled");
        } catch (Throwable ignored) {
        }
        XposedBridge.log(TAG + ": execDirectly done in " + seconds + "s canceled=" + canceled
                + " " + branchText(startState));
    }

    /**
     * 判定本次走的是哪条分支。z7 = (startState != 0)，非 0 一律进相册本地分支，
     * 而 aicr 支持的算力在本地分支里只调 queryDataFromMiAI 拉取结果、不计算；
     * startState == 0 且两个能力位都为真时相册什么都不做，直接返回等 aicr 写数据。
     * 两种情况相册侧都会很快结束，真正的计算在 aicr。
     */
    private static String branchText(int startState) {
        try {
            Class<?> manager = XposedHelpers.findClass(
                    "com.miui.gallery.assistant.manager.AlgoProgressManager", sClassLoader);
            boolean aiClip = (Boolean) XposedHelpers.callStaticMethod(manager, "isAIClipSupport");
            boolean miAiRunning = (Boolean) XposedHelpers.callStaticMethod(
                    manager, "isMIAISupportProgress");
            String branch;
            if (startState != 0) {
                branch = "相册本地分支(startState≠0，aicr 算力仅拉取)";
            } else if (aiClip && miAiRunning) {
                branch = "aicr接管(相册直接返回)";
            } else {
                branch = "相册本地分支(未接管)";
            }
            return "isAIClipSupport=" + aiClip + " isMIAISupportProgress=" + miAiRunning
                    + " 分支=" + branch;
        } catch (Throwable t) {
            return "aicr检测失败(" + t.getClass().getSimpleName() + ")";
        }
    }

    private static String powerText(Context context) {
        if (context == null) {
            return "充电=? 电量=?%";
        }
        try {
            Intent intent = context.registerReceiver(null,
                    new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
            if (intent == null) {
                return "充电=? 电量=?%";
            }
            int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
            boolean charging = status == BatteryManager.BATTERY_STATUS_CHARGING
                    || status == BatteryManager.BATTERY_STATUS_FULL;
            int level = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
            int scale = intent.getIntExtra(BatteryManager.EXTRA_SCALE, 100);
            int percent = scale > 0 ? level * 100 / scale : -1;
            return "充电=" + charging + " 电量=" + percent + "%";
        } catch (Throwable t) {
            return "充电=? 电量=?%";
        }
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
