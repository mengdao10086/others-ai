package com.mengdao.galleryanalyze.hook.aicr;

import com.mengdao.galleryanalyze.hook.AicrProtocol;

import de.robv.android.xposed.XposedBridge;

/**
 * aicr 侧 hook 装配。
 *
 * aicr 有十余个进程，只有 :searchDataService 同时承载 AiCrSearchDataBaseService、
 * AISearchStaticReceiver 和 SearchDataBaseProvider，其余进程直接跳过，避免无意义注入。
 * 每组独立 try/catch，任何失败都不得影响 aicr 自身逻辑。
 */
public final class AicrHooks {

    private static final String TAG = "GalleryAnalyze";
    private static final String SERVICE_PROCESS_SUFFIX = ":searchDataService";

    private AicrHooks() {
    }

    public static void install(String packageName, String processName, ClassLoader classLoader) {
        if (!AicrProtocol.PACKAGE.equals(packageName)
                || processName == null
                || !processName.endsWith(SERVICE_PROCESS_SUFFIX)) {
            return;
        }

        try {
            AiCrSearchDataBaseServiceHook.install(classLoader);
            XposedBridge.log(TAG + ": AiCrSearchDataBaseServiceHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AiCrSearchDataBaseServiceHook failed: " + t);
        }

        try {
            AisearchTriggerReceiverHook.install(classLoader);
            XposedBridge.log(TAG + ": AisearchTriggerReceiverHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AisearchTriggerReceiverHook failed: " + t);
        }

        try {
            AisearchTaskDiagnosticHook.install(classLoader);
            XposedBridge.log(TAG + ": AisearchTaskDiagnosticHook installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AisearchTaskDiagnosticHook failed: " + t);
        }

        try {
            AicrStateReporter.install(classLoader);
            XposedBridge.log(TAG + ": AicrStateReporter installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrStateReporter failed: " + t);
        }

        try {
            AicrProgressDiagnostics.install(classLoader);
            XposedBridge.log(TAG + ": AicrProgressDiagnostics installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrProgressDiagnostics failed: " + t);
        }

        try {
            AicrWindowEndGuard.install(classLoader);
            XposedBridge.log(TAG + ": AicrWindowEndGuard installed");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrWindowEndGuard failed: " + t);
        }

        XposedBridge.log(TAG + ": aicr hooks installed in " + processName);
    }
}
