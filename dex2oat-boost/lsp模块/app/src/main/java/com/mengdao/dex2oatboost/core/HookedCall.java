package com.mengdao.dex2oatboost.core;

import java.lang.reflect.Method;

/**
 * 反射调用 {@code PackageInstaller.SessionParams.setDexoptCompilerFilter(String)}
 * （纯 Java，无 Android 依赖，可离线单测）。
 *
 * <p>该方法 {@code @hide}，**仅 Android 15+ 存在**。这里把「方法缺失」与「调用失败」统一折叠为
 * 返回值 {@code false}，**绝不抛异常**——调用方据此记录并跳过降档，保证安装流程不受影响。
 */
public final class HookedCall {

    public static final String SET_DEXOPT_FILTER = "setDexoptCompilerFilter";

    private HookedCall() {
    }

    /**
     * @return true=已成功写入 filter；false=方法不存在或调用失败（需降级），任何异常均被吞掉
     */
    public static boolean trySetDexoptCompilerFilter(Object sessionParams, String filter) {
        if (sessionParams == null) {
            return false;
        }
        try {
            Method m = sessionParams.getClass().getMethod(SET_DEXOPT_FILTER, String.class);
            m.invoke(sessionParams, filter);
            return true;
        } catch (Throwable t) {
            // NoSuchMethodException（<Android 15）/ IllegalAccess / InvocationTarget 全部归为降级
            return false;
        }
    }
}
