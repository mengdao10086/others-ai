package com.mengdao.galleryanalyze;

import com.mengdao.galleryanalyze.hook.GalleryHooks;
import com.mengdao.galleryanalyze.hook.aicr.AicrHooks;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

/**
 * 相册内容分析控制 — LSPosed 入口。
 * 按包名分发：相册装相册侧 hook，aicr 只由 AicrHooks 自己筛选进程。
 */
public final class GalleryAnalyzeModule implements IXposedHookLoadPackage {

    private static final String TAG = "GalleryAnalyze";
    private static final String GALLERY_PACKAGE = "com.miui.gallery";
    private static final String AICR_PACKAGE = "com.xiaomi.aicr";

    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        if (GALLERY_PACKAGE.equals(lpparam.packageName)) {
            // 只在相册主进程安装：其它进程不承载设置页、WorkManager 任务或前台广播
            if (lpparam.processName == null || GALLERY_PACKAGE.equals(lpparam.processName)) {
                installGalleryHooks(lpparam);
            }
        } else if (AICR_PACKAGE.equals(lpparam.packageName)) {
            installAicrHooks(lpparam);
        }
    }

    private static void installGalleryHooks(LoadPackageParam lpparam) {
        try {
            GalleryHooks.install(lpparam.classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": gallery hook install failed: " + t);
        }
    }

    private static void installAicrHooks(LoadPackageParam lpparam) {
        try {
            AicrHooks.install(lpparam.packageName, lpparam.processName, lpparam.classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr hook install failed: " + t);
        }
    }
}
