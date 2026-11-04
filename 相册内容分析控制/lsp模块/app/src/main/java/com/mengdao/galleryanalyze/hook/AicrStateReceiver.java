package com.mengdao.galleryanalyze.hook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
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
    /** 状态无变化时的最小落盘间隔。 */
    private static final long PERSIST_INTERVAL_MS = 30_000L;
    private static final String PREFS = "mengdao_gallery_analyze_state";
    private static final String KEY_STATUS = "status";
    private static final String KEY_PROGRESS = "progress";
    private static final String KEY_DETAIL = "detail";
    private static final String KEY_STARTED_AT = "started_at";
    private static final String KEY_SAVED_AT = "saved_at";

    private static final AicrStateReceiver INSTANCE = new AicrStateReceiver();

    private static volatile int sStatus = 0;
    private static volatile int sProgress = -1;
    private static volatile String sDetail = "";
    private static volatile long sStartedAt;
    private static volatile long sUpdatedAt;
    private static volatile boolean sRegistered;
    private static volatile boolean sRestored;
    private static long sLastPersistAt;
    private static int sPersistedStatus;
    private static int sPersistedProgress = Integer.MIN_VALUE;
    private static String sPersistedDetail = "";
    private static long sPersistedStartedAt;

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
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": register state receiver failed: " + t);
        }
        restore(context);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !AicrProtocol.ACTION_STATE.equals(intent.getAction())) {
            return;
        }
        sStatus = intent.getIntExtra(AicrProtocol.EXTRA_STATUS, 0);
        sProgress = intent.getIntExtra(AicrProtocol.EXTRA_PROGRESS, -1);
        sDetail = intent.getStringExtra(AicrProtocol.EXTRA_DETAIL);
        if (sDetail == null) {
            sDetail = "";
        }
        sStartedAt = intent.getLongExtra(AicrProtocol.EXTRA_STARTED_AT, 0L);
        sUpdatedAt = System.currentTimeMillis();
        persist(context);
    }

    /** 把最新状态落盘，供相册进程下次启动时立即恢复；无变化时最多每 30 秒写一次。 */
    private static void persist(Context context) {
        if (context == null) {
            return;
        }
        try {
            long now = System.currentTimeMillis();
            String detail = sDetail == null ? "" : sDetail;
            boolean changed = sStatus != sPersistedStatus
                    || sProgress != sPersistedProgress
                    || sStartedAt != sPersistedStartedAt
                    || !detail.equals(sPersistedDetail);
            if (!changed && sLastPersistAt > 0
                    && now - sLastPersistAt < PERSIST_INTERVAL_MS) {
                return;
            }
            context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit()
                    .putInt(KEY_STATUS, sStatus)
                    .putInt(KEY_PROGRESS, sProgress)
                    .putString(KEY_DETAIL, detail)
                    .putLong(KEY_STARTED_AT, sStartedAt)
                    .putLong(KEY_SAVED_AT, sUpdatedAt)
                    .apply();
            sLastPersistAt = now;
            sPersistedStatus = sStatus;
            sPersistedProgress = sProgress;
            sPersistedDetail = detail;
            sPersistedStartedAt = sStartedAt;
        } catch (Throwable ignored) {
        }
    }

    /** 恢复 20 秒内的落盘状态；已有实时值时不覆盖。 */
    private static void restore(Context context) {
        if (sRestored || sUpdatedAt > 0 || context == null) {
            return;
        }
        sRestored = true;
        try {
            SharedPreferences preferences =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            long savedAt = preferences.getLong(KEY_SAVED_AT, 0L);
            if (savedAt <= 0L || System.currentTimeMillis() - savedAt >= FRESH_MS) {
                return;
            }
            sStatus = preferences.getInt(KEY_STATUS, 0);
            sProgress = preferences.getInt(KEY_PROGRESS, -1);
            sDetail = preferences.getString(KEY_DETAIL, "");
            if (sDetail == null) {
                sDetail = "";
            }
            sStartedAt = preferences.getLong(KEY_STARTED_AT, 0L);
            sUpdatedAt = savedAt;
        } catch (Throwable ignored) {
        }
    }

    static boolean isRunning() {
        return isFresh() && sStatus > 0;
    }

    /** 0~100；拿不到或为 0 都返回 -1（aicr 的进度在迁移后会回落成 0，不能当真实进度显示）。 */
    static int progress() {
        return isFresh() && sProgress > 0 ? sProgress : -1;
    }

    /** 进度明细「已完成|总数|最慢阶段|待处理|失败」；拿不到或过期返回空串。 */
    static String detail() {
        return isFresh() && sDetail != null ? sDetail : "";
    }

    /** 本轮开始时间（epoch ms）；未知返回 0。 */
    static long startedAt() {
        return isFresh() ? sStartedAt : 0L;
    }

    private static boolean isFresh() {
        return sUpdatedAt > 0 && System.currentTimeMillis() - sUpdatedAt < FRESH_MS;
    }
}
