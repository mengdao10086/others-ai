package com.mengdao.scenemonitor;

import com.mengdao.scenemonitor.hook.SceneHooks;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

/**
 * 单入口：只处理 Scene（com.omarea.vtools）主进程。
 *
 * 未命中的包只做字符串比较就返回，不加载任何 Hook 类；
 * Hook 组内部再对每个功能单独 try/catch。
 */
public final class SceneMonitorModule implements IXposedHookLoadPackage {

    private static final String PKG_SCENE = "com.omarea.vtools";

    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        if (!PKG_SCENE.equals(lpparam.packageName)) {
            return;
        }
        // Scene 的浮窗都在主进程；其它进程不安装，避免重复 hook。
        if (lpparam.processName != null && !PKG_SCENE.equals(lpparam.processName)) {
            return;
        }
        try {
            SceneHooks.install(lpparam.classLoader);
        } catch (Throwable t) {
            Logs.status("scene.group:install", "scene group failed", t);
        }
    }
}
