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
        try {
            TaplusSaveFormatHook.install(classLoader);
            XposedBridge.log(TAG + ": TaplusSaveFormatHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": TaplusSaveFormatHook failed: " + t);
        }

        try {
            TaplusRaceFixHook.install(classLoader);
            XposedBridge.log(TAG + ": TaplusRaceFixHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": TaplusRaceFixHook failed: " + t);
        }
    }
}
