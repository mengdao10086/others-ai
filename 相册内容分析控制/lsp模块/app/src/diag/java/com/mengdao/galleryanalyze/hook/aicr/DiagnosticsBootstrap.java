package com.mengdao.galleryanalyze.hook.aicr;

import de.robv.android.xposed.XposedBridge;

/**
 * 诊断探针入口，仅存在于 diag 构建类型。
 *
 * release 包里没有这个类，{@link AicrHooks} 通过反射查找，找不到即不加载任何诊断代码。
 * diag 构建由 {@code ./gradlew :app:assembleDiag} 产出，用于排查分析进度与写回问题。
 */
public final class DiagnosticsBootstrap {

    private static final String TAG = "GalleryAnalyze";

    private DiagnosticsBootstrap() {
    }

    public static void install(ClassLoader classLoader) {
        try {
            AisearchTaskDiagnosticHook.install(classLoader);
        } catch (Throwable t) {
            logFailure("AisearchTaskDiagnosticHook", t);
        }
        try {
            AicrProgressDiagnostics.install(classLoader);
        } catch (Throwable t) {
            logFailure("AicrProgressDiagnostics", t);
        }
    }

    private static void logFailure(String name, Throwable t) {
        XposedBridge.log(TAG + ": " + name + " failed: " + t);
    }
}
