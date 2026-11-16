package com.mengdao.lsposedtoolkit.hook;

import com.mengdao.lsposedtoolkit.Logs;
import com.mengdao.lsposedtoolkit.hook.taplus.TaplusRaceFixHook;
import com.mengdao.lsposedtoolkit.hook.taplus.TaplusSaveFormatHook;


/**
 * 小米传送门（com.miui.contentextension）的 Hook 组。
 * 每个功能独立 try/catch，一个功能装配失败不阻断另一个。
 */
public final class ContentExtensionHooks {


    private ContentExtensionHooks() {
    }

    public static void install(ClassLoader classLoader) {
        try {
            TaplusSaveFormatHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("ContentExtensionHooks:23", "" + "TaplusSaveFormatHook failed: " + t);
        }

        try {
            TaplusRaceFixHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("ContentExtensionHooks:29", "" + "TaplusRaceFixHook failed: " + t);
        }
    }
}
