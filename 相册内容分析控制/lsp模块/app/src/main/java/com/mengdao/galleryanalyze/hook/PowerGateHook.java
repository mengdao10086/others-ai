package com.mengdao.galleryanalyze.hook;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.BatteryManager;
import android.os.PowerManager;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把相册的「必须充电才能分析」放宽为「充电 或 电量 > 92%，满足其一即可」。
 *
 * 相册 execDirectly 的入口门禁是：startState==0 且 !getIsPlugged() → 直接返回。
 * 这里只在 execDirectly 执行期间用 ThreadLocal 让 getIsPlugged() 返回 true，
 * 不去改偏好本身——云同步、下载等同样读这个开关的逻辑不受影响。
 *
 * 充电广播那条路径另外补一次触发：原来只有插电时才判断电量/温度/息屏，
 * 不插电时永不计入；改为不插电但电量 >92%、温度 <43℃、屏幕熄灭时也触发一次。
 */
final class PowerGateHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String WORKER_CLASS =
            "com.miui.gallery.job.workers.CardUpdateWorkerProvider$CardUpdateWorker";
    private static final String SYNC_PREFS_CLASS = "com.miui.gallery.preference.GalleryPreferences$Sync";
    private static final String BATTERY_MONITOR_CLASS = "com.miui.gallery.base.control.BatteryMonitor";
    private static final String[] BATTERY_RECEIVER_CLASSES = {
            "com.miui.gallery.base.control.BatteryMonitor$2",
            "com.miui.gallery.base.control.BatteryMonitor$AnonymousClass2"
    };

    private static final int HIGH_BATTERY_PERCENT = 92;
    private static final int MAX_TEMP = 43000;

    private static final ThreadLocal<Boolean> FORCE_PLUGGED = new ThreadLocal<>();

    private static ClassLoader sClassLoader;

    private PowerGateHook() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        hookExecDirectly(classLoader);
        hookGetIsPlugged(classLoader);
        hookBatteryReceiver(classLoader);
        logAicrSnapshot(classLoader);
    }

    /** 装载时先打一条当前 aicr 状态，不用等到下次触发才看得到。 */
    private static void logAicrSnapshot(ClassLoader classLoader) {
        try {
            Class<?> manager = XposedHelpers.findClass(
                    "com.miui.gallery.assistant.manager.AlgoProgressManager", classLoader);
            boolean aiClip = (Boolean) XposedHelpers.callStaticMethod(manager, "isAIClipSupport");
            boolean miAiRunning = (Boolean) XposedHelpers.callStaticMethod(
                    manager, "isMIAISupportProgress");
            XposedBridge.log(TAG + ": aicr snapshot isAIClipSupport=" + aiClip
                    + " isMIAISupportProgress=" + miAiRunning
                    + " 自动分析" + (aiClip && miAiRunning ? "由 aicr 接管" : "由相册侧执行"));
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr snapshot failed: " + t);
        }
    }

    // ------------------------------------------------------------------
    // 1. execDirectly 期间放行充电门禁
    // ------------------------------------------------------------------

    private static void hookExecDirectly(ClassLoader classLoader) {
        Class<?> workerClass = XposedHelpers.findClass(WORKER_CLASS, classLoader);
        Object companion = XposedHelpers.getStaticObjectField(workerClass, "Companion");
        XposedHelpers.findAndHookMethod(companion.getClass(), "execDirectly",
                boolean.class, boolean.class, int.class, new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        if (Boolean.TRUE.equals(FORCE_PLUGGED.get())) {
                            return;
                        }
                        try {
                            int startState = (Integer) param.args[2];
                            boolean charging = isCharging();
                            int battery = currentBatteryPercent();
                            boolean force = startState == 0 && !charging
                                    && battery > HIGH_BATTERY_PERCENT;
                            if (force) {
                                FORCE_PLUGGED.set(true);
                            }
                            logDecision(classLoader, startState, charging, battery, force);
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + ": power gate before failed: " + t);
                        }
                    }

                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        FORCE_PLUGGED.remove();
                    }
                });
    }

    private static void hookGetIsPlugged(ClassLoader classLoader) {
        XposedHelpers.findAndHookMethod(SYNC_PREFS_CLASS, classLoader, "getIsPlugged",
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        if (Boolean.TRUE.equals(FORCE_PLUGGED.get())) {
                            param.setResult(true);
                        }
                    }
                });
    }

    // ------------------------------------------------------------------
    // 2. 充电广播：不插电但高电量也触发一次
    // ------------------------------------------------------------------

    private static void hookBatteryReceiver(ClassLoader classLoader) {
        Class<?> receiverClass = null;
        for (String name : BATTERY_RECEIVER_CLASSES) {
            receiverClass = XposedHelpers.findClassIfExists(name, classLoader);
            if (receiverClass != null) {
                break;
            }
        }
        if (receiverClass == null) {
            XposedBridge.log(TAG + ": battery receiver class not found, skip");
            return;
        }
        XposedHelpers.findAndHookMethod(receiverClass, "onReceive",
                Context.class, Intent.class, new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            Context context = (Context) param.args[0];
                            Intent intent = (Intent) param.args[1];
                            if (context == null || intent == null
                                    || !Intent.ACTION_BATTERY_CHANGED.equals(intent.getAction())) {
                                return;
                            }
                            if (intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1)
                                    == BatteryManager.BATTERY_STATUS_CHARGING
                                    || intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1)
                                    == BatteryManager.BATTERY_STATUS_FULL) {
                                return;   // 插电时相册自己会判断，不重复触发
                            }
                            if (batteryPercent(intent) <= HIGH_BATTERY_PERCENT) {
                                return;
                            }
                            if (currentTemp(classLoader) >= MAX_TEMP) {
                                return;
                            }
                            if (isScreenOn(context)) {
                                return;
                            }
                            Class<?> monitorClass = XposedHelpers.findClass(BATTERY_MONITOR_CLASS, classLoader);
                            XposedHelpers.callStaticMethod(monitorClass, "tryTriggerCalc", false);
                            XposedBridge.log(TAG + ": unplugged high battery, trigger analysis");
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + ": battery trigger failed: " + t);
                        }
                    }
                });
    }

    // ------------------------------------------------------------------
    // 工具
    // ------------------------------------------------------------------

    private static boolean isCharging() {
        Context context = appContext();
        if (context == null) {
            return true;   // 取不到就当已充电，保持原行为
        }
        Intent intent = context.registerReceiver(null,
                new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        if (intent == null) {
            return true;
        }
        int status = intent.getIntExtra(BatteryManager.EXTRA_STATUS, -1);
        return status == BatteryManager.BATTERY_STATUS_CHARGING
                || status == BatteryManager.BATTERY_STATUS_FULL;
    }

    private static int currentBatteryPercent() {
        Context context = appContext();
        if (context == null) {
            return -1;
        }
        Intent intent = context.registerReceiver(null,
                new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
        return intent == null ? -1 : batteryPercent(intent);
    }

    /**
     * 每次 execDirectly 打一行决策日志，用来回答「夜间任务为什么没跑」：
     * 电源门禁是否放行、aicr 是否已接管（接管时相册侧本身就不跑）。
     */
    private static void logDecision(ClassLoader classLoader, int startState,
                                    boolean charging, int battery, boolean force) {
        String aicr;
        boolean aiClip;
        boolean miAiRunning;
        try {
            Class<?> manager = XposedHelpers.findClass(
                    "com.miui.gallery.assistant.manager.AlgoProgressManager", classLoader);
            aiClip = (Boolean) XposedHelpers.callStaticMethod(manager, "isAIClipSupport");
            miAiRunning = (Boolean) XposedHelpers.callStaticMethod(manager, "isMIAISupportProgress");
            boolean takeover = startState == 0 && aiClip && miAiRunning;
            aicr = "isAIClipSupport=" + aiClip + " isMIAISupportProgress=" + miAiRunning
                    + " aicr接管=" + takeover + (takeover ? "(相册侧跳过)" : "(相册侧执行)");
        } catch (Throwable t) {
            aicr = "aicr检测失败(" + t.getClass().getSimpleName() + ")";
        }
        XposedBridge.log(TAG + ": execDirectly startState=" + startState
                + " 充电=" + charging + " 电量=" + battery + "%"
                + " 电源门禁放行=" + force + " " + aicr);
    }

    private static int batteryPercent(Intent intent) {
        int level = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, -1);
        int scale = intent.getIntExtra(BatteryManager.EXTRA_SCALE, 100);
        return scale > 0 ? level * 100 / scale : -1;
    }

    private static boolean isScreenOn(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
        return powerManager != null && powerManager.isScreenOn();
    }

    private static int currentTemp(ClassLoader classLoader) {
        try {
            Class<?> monitorClass = XposedHelpers.findClass(
                    "com.miui.gallery.util.TemperatureMonitor", classLoader);
            Object instance = XposedHelpers.callStaticMethod(monitorClass, "getInstance");
            return (Integer) XposedHelpers.callMethod(instance, "getCurrentTemp");
        } catch (Throwable t) {
            return Integer.MAX_VALUE;   // 取不到温度就不触发，宁可不跑
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
