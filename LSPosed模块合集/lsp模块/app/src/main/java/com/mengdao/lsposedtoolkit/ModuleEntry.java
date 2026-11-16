package com.mengdao.lsposedtoolkit;

import com.mengdao.lsposedtoolkit.gallery.GalleryHooks;
import com.mengdao.lsposedtoolkit.gallery.aicr.AicrHooks;
import com.mengdao.lsposedtoolkit.hook.ContentExtensionHooks;
import com.mengdao.lsposedtoolkit.hook.SystemUiHooks;
import com.mengdao.lsposedtoolkit.hook.scene.SceneHooks;
import com.mengdao.lsposedtoolkit.hook.systemserver.NoSwipeToKillHook;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.IXposedHookZygoteInit;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

/**
 * 单入口：按包名分发到各自的 Hook 组。
 *
 * 未命中的包只做几次字符串比较就返回，不加载任何 Hook 类；
 * 每组内部再对每个功能单独 try/catch，单功能失败不影响同包其他功能。
 */
public final class ModuleEntry implements IXposedHookLoadPackage, IXposedHookZygoteInit {


    /** 模块 APK 绝对路径；用于在宿主进程里加载模块自带的原生库。 */
    private static volatile String sModulePath;

    @Override
    public void initZygote(StartupParam startupParam) {
        if (startupParam != null) {
            sModulePath = startupParam.modulePath;
        }
    }
    static final String PKG_CONTENT_EXTENSION = "com.miui.contentextension";
    static final String PKG_SYSTEM_UI = "com.android.systemui";
    static final String PKG_GALLERY = "com.miui.gallery";
    static final String PKG_AICR = "com.xiaomi.aicr";
    static final String PKG_SCENE = "com.omarea.vtools";
    static final String PKG_ANDROID = "android";

    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        String pkg = lpparam.packageName;
        if (PKG_CONTENT_EXTENSION.equals(pkg)) {
            try {
                ContentExtensionHooks.install(lpparam.classLoader);
            } catch (Throwable t) {
                                Logs.status("ModuleEntry:48", "" + "contentextension group failed: " + t);
            }
        } else if (PKG_SYSTEM_UI.equals(pkg)) {
            try {
                SystemUiHooks.install(lpparam.classLoader);
            } catch (Throwable t) {
                                Logs.status("ModuleEntry:54", "" + "systemui group failed: " + t);
            }
        } else if (PKG_GALLERY.equals(pkg)) {
            // 只在相册主进程安装：其它进程不承载设置页、WorkManager 任务或前台广播
            if (lpparam.processName == null || PKG_GALLERY.equals(lpparam.processName)) {
                try {
                    GalleryHooks.install(lpparam.classLoader);
                } catch (Throwable t) {
                                        Logs.status("ModuleEntry:62", "" + "gallery group failed: " + t);
                }
            }
        } else if (PKG_AICR.equals(pkg)) {
            try {
                AicrHooks.install(lpparam.packageName, lpparam.processName,
                        lpparam.classLoader, sModulePath);
            } catch (Throwable t) {
                                Logs.status("ModuleEntry:70", "" + "aicr group failed: " + t);
            }
        } else if (PKG_SCENE.equals(pkg)) {
            // Scene 的浮窗都在主进程；其它进程不安装，避免重复 hook。
            if (lpparam.processName == null || PKG_SCENE.equals(lpparam.processName)) {
                try {
                    SceneHooks.install(lpparam.classLoader);
                } catch (Throwable t) {
                                        Logs.status("ModuleEntry:78", "" + "scene group failed: " + t);
                }
            }
        } else if (PKG_ANDROID.equals(pkg)) {
            try {
                NoSwipeToKillHook.install(lpparam.classLoader);
            } catch (Throwable t) {
                                Logs.status("ModuleEntry:85", "" + "noswipetokill group failed: " + t);
            }
        }
    }
}
