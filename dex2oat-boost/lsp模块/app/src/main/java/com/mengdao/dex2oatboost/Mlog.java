package com.mengdao.dex2oatboost;

import android.util.Log;

import de.robv.android.xposed.XposedBridge;

/**
 * 统一日志出口，**双通道**输出：
 * <ol>
 *   <li>{@code android.util.Log.println} —— 自带 tag {@link #TAG}，普通 logcat 可见；</li>
 *   <li>{@code XposedBridge.log} —— 被 LSPosed 转到 {@code LSPosedFramework} 流，
 *       与其它模块（HyperCeiler 等）落在同一处，便于「按 LSPosed 日志抓取」时也能看到本模块。</li>
 * </ol>
 * 任一通道失败都被吞掉，绝不影响宿主。
 */
public final class Mlog {

    public static final String TAG = "Dex2OatBoost";

    private static volatile boolean enabled = false;

    private Mlog() {
    }

    public static void setEnabled(boolean v) {
        enabled = v;
    }

    public static void i(String msg) {
        safe(Log.INFO, msg);
    }

    public static void w(String msg) {
        safe(Log.WARN, msg);
    }

    public static void d(String msg) {
        safe(Log.DEBUG, msg);
    }

    /**
     * 无视 {@code enabled} 开关，强制记录。用于「模块是否被注入本进程」这类**必须可见**的启动日志，
     * 使其在作用域判定之前就能被看到。
     */
    public static void always(String msg) {
        emit(Log.INFO, msg);
    }

    private static void safe(int level, String msg) {
        if (!enabled) {
            return;
        }
        emit(level, msg);
    }

    private static void emit(int level, String msg) {
        try {
            Log.println(level, TAG, msg);
        } catch (Throwable ignored) {
            // 通道 1 失败不影响通道 2
        }
        try {
            XposedBridge.log(TAG + ": " + msg);
        } catch (Throwable ignored) {
            // 非 Xposed 环境（如模块自身 app 进程）下该调用不存在，忽略
        }
    }
}
