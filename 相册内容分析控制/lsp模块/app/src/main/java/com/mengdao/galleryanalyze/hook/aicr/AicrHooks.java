package com.mengdao.galleryanalyze.hook.aicr;

import com.mengdao.galleryanalyze.hook.AicrProtocol;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * aicr 侧 hook 装配。
 *
 * aicr 有十余个进程，只有 :searchDataService 同时承载 AiCrSearchDataBaseService、
 * AISearchStaticReceiver 和 SearchDataBaseProvider，其余进程直接跳过，避免无意义注入。
 * 每组独立 try/catch，任何失败都不得影响 aicr 自身逻辑。
 *
 * 诊断探针放在单独的 diag 构建类型（src/diag/java），release 包中不存在
 * {@code DiagnosticsBootstrap}，反射找不到即不加载任何诊断代码。
 */
public final class AicrHooks {

    private static final String TAG = "GalleryAnalyze";
    private static final String SERVICE_PROCESS_SUFFIX = ":searchDataService";
    private static final String DIAGNOSTICS_BOOTSTRAP =
            "com.mengdao.galleryanalyze.hook.aicr.DiagnosticsBootstrap";

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
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AiCrSearchDataBaseServiceHook failed: " + t);
        }

        try {
            AisearchTriggerReceiverHook.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AisearchTriggerReceiverHook failed: " + t);
        }

        try {
            AicrStateReporter.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrStateReporter failed: " + t);
        }

        try {
            AicrWindowEndGuard.install(classLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": AicrWindowEndGuard failed: " + t);
        }

        installDiagnostics(classLoader);
    }

    /** 诊断类只存在于 diag 构建；release 包里找不到入口类就直接跳过。 */
    private static void installDiagnostics(ClassLoader hostClassLoader) {
        try {
            Class<?> bootstrap = XposedHelpers.findClassIfExists(DIAGNOSTICS_BOOTSTRAP,
                    AicrHooks.class.getClassLoader());
            if (bootstrap == null) {
                return;
            }
            XposedHelpers.callStaticMethod(bootstrap, "install", hostClassLoader);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": diagnostics bootstrap failed: " + t);
        }
    }
}
