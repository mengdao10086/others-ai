package com.mengdao.dex2oatboost;

import java.lang.reflect.Method;

/**
 * 隐藏 API 豁免（尽力而为）。
 *
 * <p>本模块要反射 {@code PackageInstaller.SessionParams.setDexoptCompilerFilter} 与
 * {@code IPackageManager.performDexOptMode}，二者均 {@code @hide}。LSPosed 注入的进程通常已放行
 * hidden API；若仍受限，用 LSPosed 自带的 {@code org.lsposed.hiddenapibypass.HiddenApiBypass} 兜底。
 * 该库在部分版本可能不存在——故整段用 try-catch 包裹，失败只记日志、不改行为。
 */
public final class HiddenApi {

    private static volatile boolean attempted = false;

    private HiddenApi() {
    }

    public static synchronized void tryExempt() {
        if (attempted) {
            return;
        }
        attempted = true;
        try {
            Class<?> c = Class.forName("org.lsposed.hiddenapibypass.HiddenApiBypass");
            Method m = c.getMethod("addHiddenApiExemptions", String[].class);
            m.invoke(null, (Object) new String[] { "L" });
            Mlog.i("HiddenApiBypass 豁免已生效");
        } catch (Throwable t) {
            Mlog.w("HiddenApiBypass 不可用（依赖 LSPosed 默认放行）: " + t.getClass().getSimpleName());
        }
    }
}
