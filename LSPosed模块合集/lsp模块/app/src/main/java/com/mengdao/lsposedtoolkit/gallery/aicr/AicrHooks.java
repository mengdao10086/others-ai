package com.mengdao.lsposedtoolkit.gallery.aicr;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import de.robv.android.xposed.XposedBridge;

/**
 * aicr 侧 hook 装配。
 *
 * aicr 有十余个进程。心跳、落点探针和进度采样装到所有进程，用于确认分析实际在哪个
 * 进程执行；其余业务 hook 仍只装 :searchDataService（承载 AiCrSearchDataBaseService、
 * AISearchStaticReceiver 和 SearchDataBaseProvider）。每组独立 try/catch，任何失败都
 * 不得影响 aicr 自身逻辑。
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

        // doRemoteWork 心跳只证明启动任务跑过，不证明分析在跑；它装在 aicr 所有进程。
        // 实测诊断包在 :searchDataService 装上了探针却全 never/0，说明分析可能落在别的
        // 进程，因此 StageWriteProbe 与进度采样也改为装到所有 aicr 进程。
        try {
            AisearchTaskDiagnosticHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AisearchTaskDiagnosticHook failed: " + t);
        }

        try {
            StageWriteProbe.install(classLoader, processName);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": StageWriteProbe failed: " + t);
        }

        // 人脸初始化预检：只读记录，不改变 aicr 行为；装到所有进程以覆盖分析落点。
        try {
            FaceInitProbe.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": FaceInitProbe failed: " + t);
        }

        // 采样器跟随 RunningStatus 变化，哪个进程真正跑分析就由哪个进程出 DIAG 行。
        try {
            AicrProgressDiagnostics.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrProgressDiagnostics failed: " + t);
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
