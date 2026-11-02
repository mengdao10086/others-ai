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

        try {
            hookAppCreate(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": GalleryApp.onCreate hook failed: " + t);
        }

        try {
            SettingsHook.install(classLoader);
            XposedBridge.log(TAG + ": SettingsHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": SettingsHook failed: " + t);
        }

        try {
            ExecDirectlyLogHook.install(classLoader);
            XposedBridge.log(TAG + ": ExecDirectlyLogHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": ExecDirectlyLogHook failed: " + t);
        }

        try {
            PowerGateHook.install(classLoader);
            XposedBridge.log(TAG + ": PowerGateHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": PowerGateHook failed: " + t);
        }

        try {
            LegacyNightWorkCleanupHook.install(classLoader);
            XposedBridge.log(TAG + ": LegacyNightWorkCleanupHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": LegacyNightWorkCleanupHook failed: " + t);
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
                    }
                } catch (Throwable t) {
                    XposedBridge.log(TAG + ": aicr state init failed: " + t);
                }
            }
        });
    }
}
