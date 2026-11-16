package com.mengdao.lsposedtoolkit.gallery;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.Context;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 相册侧 hook 装配：设置页、电源门禁放宽、execDirectly 观测、遗留任务清理。
 * 每一组单独 try/catch，任一组失败不影响其他组。
 */
public final class GalleryHooks {


    private GalleryHooks() {
    }

    public static void install(ClassLoader classLoader) {
        AnalyzeControl.init(classLoader);

        try {
            hookAppCreate(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:26", "" + "GalleryApp.onCreate hook failed: " + t);
        }

        try {
            SettingsHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:32", "" + "SettingsHook failed: " + t);
        }

        try {
            SearchProgressPinHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:38", "" + "SearchProgressPinHook failed: " + t);
        }

        try {
            WriteBackProbe.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:44", "" + "WriteBackProbe failed: " + t);
        }

        // 必须在 WriteBackProbe 之后注册：Xposed 的 after hook 后注册先执行，
        // 这样 alias 先改写返回值，探针能直接看到修复后的 map。
        try {
            WriteBackPathAliasHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:52", "" + "WriteBackPathAliasHook failed: " + t);
        }

        try {
            ExecDirectlyLogHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:58", "" + "ExecDirectlyLogHook failed: " + t);
        }

        try {
            PowerGateHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:64", "" + "PowerGateHook failed: " + t);
        }

        try {
            LegacyNightWorkCleanupHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("GalleryHooks:70", "" + "LegacyNightWorkCleanupHook failed: " + t);
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
                                        Logs.status("GalleryHooks:86", "" + "aicr state init failed: " + t);
                }
            }
        });
    }
}
