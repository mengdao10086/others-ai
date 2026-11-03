package com.mengdao.lsposedtoolkit.gallery.aicr;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

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

    public static void install(String packageName, String processName, ClassLoader classLoader,
                               String modulePath) {
        if (!AicrProtocol.PACKAGE.equals(packageName) || processName == null) {
            return;
        }

        // doWork 心跳只在「实际执行 AISearchDataTask 的进程」可见；该进程不一定是
        // :searchDataService，所以这条只读 hook 装到 aicr 所有进程，其余 hook 仍只装服务进程。
        try {
            AisearchTaskDiagnosticHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AisearchTaskDiagnosticHook failed: " + t);
        }

        if (!processName.endsWith(SERVICE_PROCESS_SUFFIX)) {
            return;
        }

        AicrCpuAffinity.init(modulePath);
        StringBuilder installed = new StringBuilder();

        try {
            AiCrSearchDataBaseServiceHook.install(classLoader);
            appendInstalled(installed, "AiCrSearchDataBaseServiceHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AiCrSearchDataBaseServiceHook failed: " + t);
        }

        try {
            AisearchTriggerReceiverHook.install(classLoader);
            appendInstalled(installed, "AisearchTriggerReceiverHook");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AisearchTriggerReceiverHook failed: " + t);
        }

        try {
            AicrStateReporter.install(classLoader);
            appendInstalled(installed, "AicrStateReporter");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrStateReporter failed: " + t);
        }

        try {
            AicrProgressDiagnostics.install(classLoader);
            appendInstalled(installed, "AicrProgressDiagnostics");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrProgressDiagnostics failed: " + t);
        }

        try {
            AicrWindowEndGuard.install(classLoader);
            appendInstalled(installed, "AicrWindowEndGuard");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrWindowEndGuard failed: " + t);
        }

        try {
            RecentsLock.recoverOnProcessStart(null);
            appendInstalled(installed, "RecentsLock");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": RecentsLock failed: " + t);
        }

        if (installed.length() > 0) {
            XposedBridge.log(TAG + ": hooks installed in " + processName + ": " + installed);
        }
    }

    private static void appendInstalled(StringBuilder installed, String name) {
        if (installed.length() > 0) {
            installed.append(", ");
        }
        installed.append(name);
    }
}
