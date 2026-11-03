package com.mengdao.lsposedtoolkit.hook;

import com.mengdao.lsposedtoolkit.hook.taplus.TaplusRaceFixHook;
import com.mengdao.lsposedtoolkit.hook.taplus.TaplusSaveFormatHook;

import de.robv.android.xposed.XposedBridge;

/**
 * 小米传送门（com.miui.contentextension）的 Hook 组。
 * 每个功能独立 try/catch，一个功能装配失败不阻断另一个。
 */
public final class ContentExtensionHooks {

    private static final String TAG = "LSPosedToolkit";

    private ContentExtensionHooks() {
    }

    public static void install(ClassLoader classLoader) {
        StringBuilder installed = new StringBuilder();

        try {
            TaplusSaveFormatHook.install(classLoader);
            appendInstalled(installed, "TaplusSaveFormatHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": TaplusSaveFormatHook failed: " + t);
        }

        try {
            TaplusRaceFixHook.install(classLoader);
            appendInstalled(installed, "TaplusRaceFixHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": TaplusRaceFixHook failed: " + t);
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
