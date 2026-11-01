package com.mengdao.lsposedtoolkit.gallery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;

import de.robv.android.xposed.XposedBridge;

/**
 * 接收 aicr 回传的真实运行状态。
 *
 * 相册自己的 isRunning 在 aicr 接管时永远是 false，设置页会一直显示「空闲」。
 * 这里在相册进程动态注册接收器，把 aicr 的 status / progress 存成静态值，
 * 由状态轮询读取。超过有效期没收到新值就当作已结束，避免卡死在「分析中」。
 */
final class AicrStateReceiver extends BroadcastReceiver {

    private static final String TAG = "GalleryAnalyze";
    private static final long FRESH_MS = 20_000L;

    private static final AicrStateReceiver INSTANCE = new AicrStateReceiver();

    private static volatile int sStatus = 0;
    private static volatile int sProgress = -1;
    private static volatile long sStartedAt;
    private static volatile long sUpdatedAt;
    private static volatile boolean sRegistered;

    private AicrStateReceiver() {
    }

    static void ensureRegistered(Context context) {
        if (sRegistered || context == null) {
            return;
        }
        try {
            IntentFilter filter = new IntentFilter(AicrProtocol.ACTION_STATE);
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
                context.registerReceiver(INSTANCE, filter, Context.RECEIVER_EXPORTED);
            } else {
                context.registerReceiver(INSTANCE, filter);
            }
            sRegistered = true;
            XposedBridge.log(TAG + ": aicr state receiver registered");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": register state receiver failed: " + t);
        }
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !AicrProtocol.ACTION_STATE.equals(intent.getAction())) {
            return;
        }
        sStatus = intent.getIntExtra(AicrProtocol.EXTRA_STATUS, 0);
        sProgress = intent.getIntExtra(AicrProtocol.EXTRA_PROGRESS, -1);
        sStartedAt = intent.getLongExtra(AicrProtocol.EXTRA_STARTED_AT, 0L);
        sUpdatedAt = System.currentTimeMillis();
    }

    static boolean isRunning() {
        return isFresh() && sStatus > 0;
    }

    /** 0~100；拿不到或为 0 都返回 -1（aicr 的进度在迁移后会回落成 0，不能当真实进度显示）。 */
    static int progress() {
        return isFresh() && sProgress > 0 ? sProgress : -1;
    }

    /** 本轮开始时间（epoch ms）；未知返回 0。 */
    static long startedAt() {
        return isFresh() ? sStartedAt : 0L;
    }

    private static boolean isFresh() {
        return sUpdatedAt > 0 && System.currentTimeMillis() - sUpdatedAt < FRESH_MS;
    }
}
