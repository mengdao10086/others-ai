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
        try {
            StatusBarClickBlockHook.install(classLoader);
            XposedBridge.log(TAG + ": StatusBarClickBlockHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": StatusBarClickBlockHook failed: " + t);
        }

        try {
            BleUnlockToastHook.install();
            XposedBridge.log(TAG + ": BleUnlockToastHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": BleUnlockToastHook failed: " + t);
        }
    }
}
