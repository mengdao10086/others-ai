package com.mengdao.lsposedtoolkit.gallery.aicr;

import com.mengdao.lsposedtoolkit.Logs;
import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import de.robv.android.xposed.XposedHelpers;

/**
 * aicr 侧 hook 装配。
 *
 * aicr 有十余个进程。默认关闭的诊断探针放在单独的 diag 构建类型里，本类只通过反射
 * 查找 {@code DiagnosticsBootstrap}：release 包中该类不存在，直接跳过，不会把诊断代码
 * 打进去。其余业务 hook 仍只装 :searchDataService（承载 AiCrSearchDataBaseService、
 * AISearchStaticReceiver 和 SearchDataBaseProvider）。每组独立 try/catch，任何失败都
 * 不得影响 aicr 自身逻辑。
 */
public final class AicrHooks {

    private static final String SERVICE_PROCESS_SUFFIX = ":searchDataService";
    private static final String DIAGNOSTICS_BOOTSTRAP =
            "com.mengdao.lsposedtoolkit.gallery.aicr.DiagnosticsBootstrap";

    private static Boolean sDiagBuild;

    private AicrHooks() {
    }

    /** 当前是否 diag 构建：release 包里没有诊断入口类，用于决定诊断日志是否输出。 */
    static boolean isDiagBuild() {
        if (sDiagBuild == null) {
            sDiagBuild = XposedHelpers.findClassIfExists(DIAGNOSTICS_BOOTSTRAP,
                    AicrHooks.class.getClassLoader()) != null;
        }
        return sDiagBuild;
    }

    public static void install(String packageName, String processName, ClassLoader classLoader,
                               String modulePath) {
        if (!AicrProtocol.PACKAGE.equals(packageName) || processName == null) {
            return;
        }

        installDiagnostics(classLoader, processName);

        if (!processName.endsWith(SERVICE_PROCESS_SUFFIX)) {
            return;
        }

        AicrCpuAffinity.init(modulePath);

        // 待处理查询改写：摘掉恒为 -1 的 pet/iaa/crop 条件，缩小每轮候选集。
        try {
            PendingQueryTrimHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:56", "" + "PendingQueryTrimHook failed: " + t);
        }

        try {
            AiCrSearchDataBaseServiceHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:62", "" + "AiCrSearchDataBaseServiceHook failed: " + t);
        }

        try {
            AisearchTriggerReceiverHook.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:68", "" + "AisearchTriggerReceiverHook failed: " + t);
        }

        try {
            AicrStateReporter.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:74", "" + "AicrStateReporter failed: " + t);
        }

        try {
            AicrWindowEndGuard.install(classLoader);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:80", "" + "AicrWindowEndGuard failed: " + t);
        }

        try {
            RecentsLock.recoverOnProcessStart(null);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:86", "" + "RecentsLock failed: " + t);
        }
    }

    /** 诊断类只存在于 diag 构建；release 包里找不到入口类就直接跳过。 */
    private static void installDiagnostics(ClassLoader hostClassLoader, String processName) {
        try {
            Class<?> bootstrap = XposedHelpers.findClassIfExists(DIAGNOSTICS_BOOTSTRAP,
                    AicrHooks.class.getClassLoader());
            if (bootstrap == null) {
                return;
            }
            XposedHelpers.callStaticMethod(bootstrap, "install", hostClassLoader, processName);
        } catch (Throwable t) {
                        Logs.status("AicrHooks:100", "" + "diagnostics bootstrap failed: " + t);
        }
    }
}
