package com.mengdao.scenemonitor.hook;

import com.mengdao.scenemonitor.Logs;

/**
 * Scene（com.omarea.vtools）的 Hook 组。
 *
 * 两项功能各自独立 try/catch：任一功能安装失败不影响另一项，也不向外抛异常。
 */
public final class SceneHooks {

    private SceneHooks() {
    }

    public static void install(ClassLoader classLoader) {
        try {
            MiniMonitorRefreshDelayHook.install();
        } catch (Throwable t) {
            Logs.status("scene.group:refresh-install", "MiniMonitorRefreshDelayHook failed", t);
        }

        try {
            MiniMonitorScreenshotSkipHook.install(classLoader);
        } catch (Throwable t) {
            Logs.status("scene.group:screenshot-install", "MiniMonitorScreenshotSkipHook failed", t);
        }
    }
}
