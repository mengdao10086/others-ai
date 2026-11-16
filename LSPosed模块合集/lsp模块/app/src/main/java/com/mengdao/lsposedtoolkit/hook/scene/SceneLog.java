package com.mengdao.lsposedtoolkit.hook.scene;

import de.robv.android.xposed.XposedBridge;

/**
 * Scene Hook 日志开关。
 *
 * ENABLED 是编译期常量：release 构建下 R8 会把常量为 false 的分支连同日志字符串
 * 一并折叠删除；排查时改为 true 重新编译即可在 LSPosed 日志中看到输出。
 */
final class SceneLog {

    static final boolean ENABLED = false;

    private static final String TAG = "LSPosedToolkit";

    private SceneLog() {
    }

    static void d(String msg) {
        if (ENABLED) {
            XposedBridge.log(TAG + ": " + msg);
        }
    }

    static void d(String msg, Throwable t) {
        if (ENABLED) {
            XposedBridge.log(TAG + ": " + msg + ": " + t);
        }
    }
}
