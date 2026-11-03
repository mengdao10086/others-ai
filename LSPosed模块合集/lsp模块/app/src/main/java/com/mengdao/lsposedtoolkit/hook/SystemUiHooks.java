package com.mengdao.lsposedtoolkit.hook;

import com.mengdao.lsposedtoolkit.hook.systemui.BleUnlockToastHook;
import com.mengdao.lsposedtoolkit.hook.systemui.StatusBarClickBlockHook;

import de.robv.android.xposed.XposedBridge;

/**
 * 系统界面（com.android.systemui）的 Hook 组。
 */
public final class SystemUiHooks {

    private static final String TAG = "LSPosedToolkit";

    private SystemUiHooks() {
    }

    public static void install(ClassLoader classLoader) {
        StringBuilder installed = new StringBuilder();

        try {
            StatusBarClickBlockHook.install(classLoader);
            appendInstalled(installed, "StatusBarClickBlockHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": StatusBarClickBlockHook failed: " + t);
        }

        try {
            BleUnlockToastHook.install();
            appendInstalled(installed, "BleUnlockToastHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": BleUnlockToastHook failed: " + t);
        }

        if (installed.length() > 0) {
            XposedBridge.log(TAG + ": hooks installed: " + installed);
        }
    }

    private static void appendInstalled(StringBuilder installed, String name) {
        if (installed.length() > 0) {
            installed.append(", ");
        }
        installed.append(name);
    }
}
