package com.mengdao.lsposedtoolkit.hook;

import com.mengdao.lsposedtoolkit.Logs;
import com.mengdao.lsposedtoolkit.hook.systemui.BleUnlockToastHook;
import com.mengdao.lsposedtoolkit.hook.systemui.StatusBarClickBlockHook;


/**
 * 系统界面（com.android.systemui）的 Hook 组。
 */
public final class SystemUiHooks {


    private SystemUiHooks() {
    }

    public static void install(ClassLoader classLoader) {
        try {
            StatusBarClickBlockHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("SystemUiHooks:22", "" + "StatusBarClickBlockHook failed: " + t);
        }

        try {
            BleUnlockToastHook.install();
        } catch (Throwable t) {
                        Logs.status("SystemUiHooks:28", "" + "BleUnlockToastHook failed: " + t);
        }
    }
}
