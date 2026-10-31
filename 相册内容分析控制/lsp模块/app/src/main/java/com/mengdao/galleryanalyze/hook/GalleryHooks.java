package com.mengdao.galleryanalyze.hook;

import de.robv.android.xposed.XposedBridge;

/**
 * 三处 hook 的装配入口：夜间调度、时间窗、设置页。
 * 每一组单独 try/catch，任一组失败不影响另外两组。
 */
public final class GalleryHooks {

    private static final String TAG = "GalleryAnalyze";

    private GalleryHooks() {
    }

    public static void install(ClassLoader classLoader) {
        AnalyzeControl.init(classLoader);

        try {
            NightScheduleHook.install(classLoader);
            XposedBridge.log(TAG + ": NightScheduleHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": NightScheduleHook failed: " + t);
        }

        try {
            TimeWindowHook.install(classLoader);
            XposedBridge.log(TAG + ": TimeWindowHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": TimeWindowHook failed: " + t);
        }

        try {
            SettingsHook.install(classLoader);
            XposedBridge.log(TAG + ": SettingsHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": SettingsHook failed: " + t);
        }

        try {
            PowerGateHook.install(classLoader);
            XposedBridge.log(TAG + ": PowerGateHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": PowerGateHook failed: " + t);
        }
    }
}
