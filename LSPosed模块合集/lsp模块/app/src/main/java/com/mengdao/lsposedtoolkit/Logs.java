package com.mengdao.lsposedtoolkit;

import android.os.SystemClock;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import de.robv.android.xposed.XposedBridge;

/**
 * 模块日志出口。
 *
 * <ul>
 *   <li>{@link #d}：debug 类日志，{@link #ENABLED} 为 false 时由 javac 在调用点
 *       把整段日志代码与字符串删除；排查时改为 true 重编。</li>
 *   <li>{@link #status}：状态/触发提示，正常输出；同一固定 key 5 分钟内最多一次。</li>
 * </ul>
 */
public final class Logs {

    public static final boolean ENABLED = false;

    /** 状态日志同一 key 的最小输出间隔。 */
    private static final long STATUS_INTERVAL_MS = 300_000L;

    /** key 全部为源码中的固定字符串；上限仅作兜底。 */
    private static final int STATUS_KEY_LIMIT = 256;

    private static final String TAG = "LSPosedToolkit";

    private static final Map<String, Long> sLastStatus = new ConcurrentHashMap<>();

    private Logs() {
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

    /** 状态提示直出；同一 key 5 分钟内最多一次。 */
    public static void status(String key, String msg) {
        if (allowStatus(key)) {
            XposedBridge.log(TAG + ": " + msg);
        }
    }

    public static void status(String key, String msg, Throwable t) {
        if (allowStatus(key)) {
            XposedBridge.log(TAG + ": " + msg + ": " + t);
        }
    }

    private static synchronized boolean allowStatus(String key) {
        long now = SystemClock.elapsedRealtime();
        Long last = sLastStatus.get(key);
        if (last != null && now - last < STATUS_INTERVAL_MS) {
            return false;
        }
        if (sLastStatus.size() >= STATUS_KEY_LIMIT && !sLastStatus.containsKey(key)) {
            sLastStatus.entrySet().removeIf(e -> now - e.getValue() >= STATUS_INTERVAL_MS);
            if (sLastStatus.size() >= STATUS_KEY_LIMIT) {
                sLastStatus.clear();
            }
        }
        sLastStatus.put(key, now);
        return true;
    }
}
