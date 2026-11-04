package com.mengdao.galleryanalyze.hook;

import de.robv.android.xposed.XposedBridge;

/**
 * 相册侧 hook 装配：设置页、电源门禁放宽、execDirectly 观测、遗留任务清理。
 * 每一组单独 try/catch，任一组失败不影响其他组。
 */
public final class GalleryHooks {

    private static final String TAG = "GalleryAnalyze";

    private GalleryHooks() {
    }

    public static void install(ClassLoader classLoader) {
        AnalyzeControl.init(classLoader);

        try {
            SettingsHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": SettingsHook failed: " + t);
        }

        try {
            SearchProgressPinHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": SearchProgressPinHook failed: " + t);
        }

        try {
            WriteBackPathAliasHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": WriteBackPathAliasHook failed: " + t);
        }

        try {
            ExecDirectlyLogHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": ExecDirectlyLogHook failed: " + t);
        }

        try {
            PowerGateHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": PowerGateHook failed: " + t);
        }

        try {
            LegacyNightWorkCleanupHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": LegacyNightWorkCleanupHook failed: " + t);
        }
    }
}
