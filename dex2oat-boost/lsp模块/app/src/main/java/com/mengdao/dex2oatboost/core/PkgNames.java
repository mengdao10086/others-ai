package com.mengdao.dex2oatboost.core;

/**
 * 包名工具（纯 Java，无 Android 依赖，可离线单测）。
 *
 * <p>作用域判定与「su 命令行参数」的安全校验都在这里，避免把不可信字符串拼进 shell 命令。
 */
public final class PkgNames {

    /** 模块作用域：只覆盖 MIUI 安装器。 */
    public static final String TARGET = "com.miui.packageinstaller";

    private PkgNames() {
    }

    /** 只有运行在目标包进程里才生效。 */
    public static boolean matchesTarget(String pkg) {
        return TARGET.equals(pkg);
    }

    /**
     * 合法 Android 包名：至少两段、每段以字母开头、段内只含字母/数字/下划线、总长 ≤ 255。
     * 用于拼进 su 命令前做白名单校验，杜绝命令注入。
     */
    public static boolean isValidPackageName(String pkg) {
        if (pkg == null) {
            return false;
        }
        int len = pkg.length();
        if (len < 3 || len > 255) {
            return false;
        }
        boolean hasDot = false;
        boolean segStart = true; // 是否处于某段的开头
        for (int i = 0; i < len; i++) {
            char c = pkg.charAt(i);
            if (c == '.') {
                if (segStart) {
                    return false; // 空段（连续点 / 首点是点）
                }
                hasDot = true;
                segStart = true;
            } else if (isLetter(c)) {
                segStart = false;
            } else if (isDigit(c) || c == '_') {
                if (segStart) {
                    return false; // 段首只能是字母
                }
                segStart = false;
            } else {
                return false;
            }
        }
        return hasDot && !segStart;
    }

    private static boolean isLetter(char c) {
        return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
    }

    private static boolean isDigit(char c) {
        return c >= '0' && c <= '9';
    }
}
