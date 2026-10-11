package com.mengdao.dex2oatboost.core;

/**
 * {@code IPackageManager.performDexOptMode} 的实参构造器（纯 Java，无 Android 依赖，可离线单测）。
 *
 * <p>该隐藏方法的历史签名不止一种，且随版本增删形参。这里按「已核实的两种形态」构造实参：
 *
 * <pre>
 * 签名 A（Android 15/16）：
 *   boolean performDexOptMode(String packageName, boolean checkProfiles,
 *                             String targetCompilerFilter, boolean force,
 *                             boolean bootComplete, String splitName)
 *   证据：LineageOS 镜像分支 lineage-23.0 / lineage-23.1（Android 16，SDK 36 BAKLAVA）
 *        的 core/java/android/content/pm/IPackageManager.aidl 原文（第 607 行）。
 *        —— 镜像滚动分支，非 AOSP 官方 r tag。
 *
 * 签名 B（旧版，多一个 instructionSet 形参）：
 *   boolean performDexOptMode(String packageName, String instructionSet, boolean checkProfiles,
 *                             String targetCompilerFilter, boolean force)
 * </pre>
 *
 * <p>无法识别的签名一律返回 {@code null}（调用方据此走 root 降级），绝不猜测实参顺序。
 * 真机若出现「签名未识别」日志，按实测签名补一条分支。
 */
public final class DexoptArgBuilder {

    private DexoptArgBuilder() {
    }

    /**
     * @return 可直接 {@code Method.invoke} 的实参数组；签名不认识时返回 {@code null}
     */
    public static Object[] build(Class<?>[] p, String pkg, String filter,
                                 boolean checkProfiles, boolean force, boolean bootComplete) {
        if (p == null) {
            return null;
        }
        // 签名 A：String, boolean, String, boolean, boolean, String
        if (p.length == 6
                && p[0] == String.class && p[1] == boolean.class && p[2] == String.class
                && p[3] == boolean.class && p[4] == boolean.class && p[5] == String.class) {
            return new Object[] { pkg, checkProfiles, filter, force, bootComplete, null };
        }
        // 签名 B：String, String, boolean, String, boolean
        if (p.length == 5
                && p[0] == String.class && p[1] == String.class && p[2] == boolean.class
                && p[3] == String.class && p[4] == boolean.class) {
            return new Object[] { pkg, null, checkProfiles, filter, force };
        }
        return null;
    }

    /** 仅用于日志：把形参类型拼成可读签名。 */
    public static String signatureOf(Class<?>[] p) {
        if (p == null) {
            return "(null)";
        }
        StringBuilder sb = new StringBuilder("(");
        for (int i = 0; i < p.length; i++) {
            if (i > 0) {
                sb.append(',');
            }
            sb.append(p[i] == null ? "?" : p[i].getSimpleName());
        }
        return sb.append(')').toString();
    }
}
