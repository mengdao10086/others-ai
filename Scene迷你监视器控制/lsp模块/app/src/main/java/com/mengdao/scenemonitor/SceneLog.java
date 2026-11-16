package com.mengdao.scenemonitor;

import de.robv.android.xposed.XposedBridge;

/**
 * 本模块日志开关。
 *
 * ENABLED 是编译期常量：release 构建下编译器与 R8 会删除常量为 false 的日志分支
 * 与日志字符串；排查时改为 true 重新编译即可在 LSPosed 日志中看到输出。
 */
public final class SceneLog {

    public static final boolean ENABLED = false;

    private static final String TAG = "SceneMonitor";

    private SceneLog() {
    }

    public static void d(String msg) {
        if (ENABLED) {
            XposedBridge.log(TAG + ": " + msg);
        }
    }

    public static void d(String msg, Throwable t) {
        if (ENABLED) {
            XposedBridge.log(TAG + ": " + msg + ": " + t);
        }
    }
}
