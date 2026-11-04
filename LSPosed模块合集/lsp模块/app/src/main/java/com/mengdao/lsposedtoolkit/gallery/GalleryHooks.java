package com.mengdao.lsposedtoolkit.gallery;

import android.content.Context;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 相册侧 hook 装配：设置页、电源门禁放宽、execDirectly 观测、遗留任务清理。
 * 每一组单独 try/catch，任一组失败不影响其他组。
 */
public final class GalleryHooks {

    private static final String TAG = "GalleryAnalyze";

    private GalleryHooks() {
    }

    public static void install(ClassLoader classLoader) {
        AnalyzeControl.init(classLoader);
        StringBuilder installed = new StringBuilder();

        try {
            hookAppCreate(classLoader);
            appendInstalled(installed, "GalleryApp.onCreate");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": GalleryApp.onCreate hook failed: " + t);
        }

        try {
            SettingsHook.install(classLoader);
            appendInstalled(installed, "SettingsHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": SettingsHook failed: " + t);
        }

        try {
            SearchProgressPinHook.install(classLoader);
            appendInstalled(installed, "SearchProgressPinHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": SearchProgressPinHook failed: " + t);
        }

        try {
            WriteBackProbe.install(classLoader);
            appendInstalled(installed, "WriteBackProbe");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": WriteBackProbe failed: " + t);
        }

        try {
            ExecDirectlyLogHook.install(classLoader);
            appendInstalled(installed, "ExecDirectlyLogHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": ExecDirectlyLogHook failed: " + t);
        }

        try {
            PowerGateHook.install(classLoader);
            appendInstalled(installed, "PowerGateHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": PowerGateHook failed: " + t);
        }

        try {
            LegacyNightWorkCleanupHook.install(classLoader);
            appendInstalled(installed, "LegacyNightWorkCleanupHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": LegacyNightWorkCleanupHook failed: " + t);
        }

        logInstalled(installed);
    }

    private static void appendInstalled(StringBuilder installed, String name) {
        if (installed.length() > 0) {
            installed.append(", ");
        }
        installed.append(name);
    }

    private static void logInstalled(StringBuilder installed) {
        if (installed.length() > 0) {
            XposedBridge.log(TAG + ": hooks installed: " + installed);
        }
    }

    /** 相册进程一启动就注册状态接收器并恢复落盘状态，避免设置页先显示空闲。 */
    private static void hookAppCreate(ClassLoader classLoader) throws Exception {
        Class<?> appClass = XposedHelpers.findClass("com.miui.gallery.GalleryApp", classLoader);
        XposedBridge.hookMethod(appClass.getMethod("onCreate"), new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                try {
                    if (param.thisObject instanceof Context) {
                        AicrStateReceiver.init((Context) param.thisObject);
                        DozeWhitelist.init((Context) param.thisObject);
                    }
                } catch (Throwable t) {
                    XposedBridge.log(TAG + ": aicr state init failed: " + t);
                }
            }
        });
    }
}
