package com.mengdao.lsposedtoolkit.gallery;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ComponentInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.SystemClock;

import de.robv.android.xposed.XposedBridge;

/**
 * 相册进程 → aicr 的触发出口。
 *
 * 主通道是启动 aicr 的保活服务 AiCrSearchDataBaseService：它在 :searchDataService，
 * 由 aicr 自己用 startService 拉起过，比跨应用广播可靠。服务起不来（被拦或组件缺失）
 * 再退回显式广播。两条通道都失败只记日志，不影响相册侧流程。
 */
final class AicrTrigger {

    private static final String TAG = "GalleryAnalyze";
    private static final long QUERY_INTERVAL_MS = 3000L;
    private static volatile boolean sEnvironmentLogged;
    private static volatile long sLastQueryAt;

    private AicrTrigger() {
    }

    static void sendStart(Context context) {
        send(context, AicrProtocol.ACTION_START);
    }

    static void sendStop(Context context) {
        send(context, AicrProtocol.ACTION_STOP);
    }

    /** 只读查询，3 秒内最多一次；aicr 收到后立即回报当前状态。 */
    static void sendQuery(Context context) {
        if (context == null) {
            return;
        }
        long now = SystemClock.elapsedRealtime();
        if (now - sLastQueryAt < QUERY_INTERVAL_MS) {
            return;
        }
        sLastQueryAt = now;
        try {
            Intent intent = new Intent(AicrProtocol.ACTION_QUERY);
            intent.setComponent(new ComponentName(
                    AicrProtocol.PACKAGE, AicrProtocol.RECEIVER_CLASS));
            intent.addFlags(Intent.FLAG_RECEIVER_FOREGROUND);
            context.sendBroadcast(intent);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr state query failed: " + t);
        }
    }

    private static void send(Context context, String action) {
        if (context == null) {
            XposedBridge.log(TAG + ": aicr trigger skipped (no context): " + action);
            return;
        }
        logEnvironmentOnce(context);
        if (startService(context, action)) {
            return;
        }
        sendBroadcast(context, action);
    }

    /** 优先 startForegroundService：aicr 的该服务在 onStartCommand 里立刻 startForeground。 */
    private static boolean startService(Context context, String action) {
        Intent intent = new Intent(action);
        intent.setComponent(new ComponentName(AicrProtocol.PACKAGE, AicrProtocol.SERVICE_CLASS));
        try {
            context.startForegroundService(intent);
            XposedBridge.log(TAG + ": aicr service started (foreground): " + action);
            return true;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": startForegroundService failed: " + t);
        }
        try {
            context.startService(intent);
            XposedBridge.log(TAG + ": aicr service started: " + action);
            return true;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": startService failed: " + t);
            return false;
        }
    }

    private static void sendBroadcast(Context context, String action) {
        try {
            Intent intent = new Intent(action);
            intent.setComponent(new ComponentName(
                    AicrProtocol.PACKAGE, AicrProtocol.RECEIVER_CLASS));
            intent.addFlags(Intent.FLAG_RECEIVER_FOREGROUND);
            context.sendBroadcast(intent);
            XposedBridge.log(TAG + ": aicr broadcast sent: " + action);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr broadcast failed (" + action + "): " + t);
        }
    }

    /**
     * 打一次 aicr 的版本与两个入口组件的状态。
     * 触发失败时这一行能直接区分「组件不存在 / 被禁用」和「被系统拦下」。
     */
    private static void logEnvironmentOnce(Context context) {
        if (sEnvironmentLogged) {
            return;
        }
        sEnvironmentLogged = true;
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo info = pm.getPackageInfo(AicrProtocol.PACKAGE, 0);
            String version = info.versionName + "(" + info.getLongVersionCode() + ")";
            String service = componentState(pm, new ComponentName(
                    AicrProtocol.PACKAGE, AicrProtocol.SERVICE_CLASS));
            String receiver = componentState(pm, new ComponentName(
                    AicrProtocol.PACKAGE, AicrProtocol.RECEIVER_CLASS));
            XposedBridge.log(TAG + ": aicr env version=" + version
                    + " service=[" + service + "] receiver=[" + receiver + "]");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr env lookup failed: " + t);
        }
    }

    private static String componentState(PackageManager pm, ComponentName component) {
        try {
            return stateOf(pm.getServiceInfo(component, 0));
        } catch (Throwable ignored) {
            // 不是服务，按接收器再查一次
        }
        try {
            return stateOf(pm.getReceiverInfo(component, 0));
        } catch (Throwable t) {
            return "missing(" + t.getClass().getSimpleName() + ")";
        }
    }

    private static String stateOf(ComponentInfo info) {
        return "enabled=" + info.enabled + " exported=" + info.exported
                + " process=" + info.processName;
    }
}
