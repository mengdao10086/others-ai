package com.mengdao.galleryanalyze;

import com.mengdao.galleryanalyze.hook.GalleryHooks;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

/**
 * 相册内容分析控制 — LSPosed 入口。
 * 作用域仅 com.miui.gallery；未命中立即返回。
 */
public final class GalleryAnalyzeModule implements IXposedHookLoadPackage {

    private static final String TAG = "GalleryAnalyze";
    private static final String TARGET_PACKAGE = "com.miui.gallery";

    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        if (!TARGET_PACKAGE.equals(lpparam.packageName)) {
            return;
        }
        try {
            GalleryHooks.install(lpparam.classLoader);
            XposedBridge.log(TAG + ": hooks installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": group install failed: " + t);
        }
    }
}
