package com.mengdao.lsposedtoolkit.gallery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.os.Build;

import com.mengdao.lsposedtoolkit.gallery.aicr.RecentsLock;

import de.robv.android.xposed.XposedBridge;

/**
 * 接收 aicr 回传的真实运行状态。
 *
 * 相册自己的 isRunning 在 aicr 接管时永远是 false，设置页会一直显示「空闲」。
 * 这里在相册进程动态注册接收器，把 aicr 的 status / progress 存成静态值，
 * 由状态轮询读取。超过有效期没收到新值就当作已结束，避免卡死在「分析中」；
 * 明细与进度额外保留最后一轮有效值，空闲态与进程重启后仍可显示。
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
    private static final String KEY_BIG_BOUND = "big_bound";
    private static final String KEY_SAVED_AT = "saved_at";

    private static final AicrStateReceiver INSTANCE = new AicrStateReceiver();

    private static volatile int sStatus = 0;
    private static volatile int sProgress = -1;
    private static volatile String sDetail = "";
    private static volatile long sStartedAt;
    private static volatile boolean sBigBound;
    private static volatile long sUpdatedAt;
    private static volatile boolean sRegistered;
    private static volatile boolean sWhitelistFailed;
    private static long sLastPersistAt;
    private static int sPersistedStatus;
    private static int sPersistedProgress = Integer.MIN_VALUE;
    private static String sPersistedDetail = "";
    private static long sPersistedStartedAt;
    private static boolean sPersistedBigBound;

    private AicrStateReceiver() {
    }

    /**
     * 相册进程启动时调用：注册接收器，并把上一次落盘的状态恢复回来，
     * 让设置页首次渲染就有值，而不是先显示「空闲」。
     */
    static void init(Context context) {
        if (context == null) {
            return;
        }
        ensureRegistered(context);
        restore(context);
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
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        if (intent == null || !AicrProtocol.ACTION_STATE.equals(intent.getAction())) {
            return;
        }
        sStatus = intent.getIntExtra(AicrProtocol.EXTRA_STATUS, 0);
        // 缺少 extra 或值为空/-1 时保留上一次的有效值：空闲心跳不应冲掉最后一轮结果。
        if (intent.hasExtra(AicrProtocol.EXTRA_PROGRESS)) {
            int progress = intent.getIntExtra(AicrProtocol.EXTRA_PROGRESS, -1);
            if (progress > 0) {
                sProgress = progress;
            }
        }
        if (intent.hasExtra(AicrProtocol.EXTRA_DETAIL)) {
            String detail = intent.getStringExtra(AicrProtocol.EXTRA_DETAIL);
            if (detail != null && detail.length() > 0) {
                sDetail = detail;
            }
        }
        sStartedAt = intent.getLongExtra(AicrProtocol.EXTRA_STARTED_AT, 0L);
        // 字段缺失或已停止时按未绑核处理（向前兼容旧版 aicr 侧广播）
        sBigBound = sStatus > 0
                && intent.getIntExtra(AicrProtocol.EXTRA_BIG_BOUND, 0) == 1;
        sWhitelistFailed = intent.getIntExtra(RecentsLock.EXTRA_WHITELIST_FAILED, 0) == 1;
        sUpdatedAt = System.currentTimeMillis();
        persist(context);
        if (sStatus > 0 && DozeWhitelist.manualStartRecent()) {
            DozeWhitelist.acquire(context);
        } else if (sStatus == 0) {
            DozeWhitelist.release(context, "aicr_idle");
        }
    }

    static boolean whitelistFailed() {
        return sWhitelistFailed;
    }

    /** 把最新状态落盘，供相册进程下次启动时立即恢复；无变化时最多每 30 秒写一次。 */
    private static void persist(Context context) {
        try {
            long now = System.currentTimeMillis();
            String detail = sDetail == null ? "" : sDetail;
            boolean changed = sStatus != sPersistedStatus
                    || sProgress != sPersistedProgress
                    || sStartedAt != sPersistedStartedAt
                    || sBigBound != sPersistedBigBound
                    || !detail.equals(sPersistedDetail);
            if (!changed && sLastPersistAt > 0
                    && now - sLastPersistAt < PERSIST_INTERVAL_MS) {
                return;
            }
            SharedPreferences preferences =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            SharedPreferences.Editor editor = preferences.edit()
                    .putInt(KEY_STATUS, sStatus)
                    .putLong(KEY_STARTED_AT, sStartedAt)
                    .putBoolean(KEY_BIG_BOUND, sBigBound)
                    .putLong(KEY_SAVED_AT, sUpdatedAt);
            // 明细与进度保留最后一轮有效值；空串/-1 不覆盖磁盘上已有的值。
            if (detail.length() > 0) {
                editor.putString(KEY_DETAIL, detail);
            }
            if (sProgress > 0) {
                editor.putInt(KEY_PROGRESS, sProgress);
            }
            editor.apply();
            sLastPersistAt = now;
            sPersistedStatus = sStatus;
            sPersistedProgress = sProgress;
            sPersistedDetail = detail;
            sPersistedStartedAt = sStartedAt;
            sPersistedBigBound = sBigBound;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state persist failed: " + t);
        }
    }

    /**
     * 恢复落盘状态：明细与进度不受 20 秒新鲜度限制，进程重启后仍可显示最后一轮结果；
     * status / started_at / big_bound 只在 20 秒内有效，避免误显示「分析中」。
     * 已有实时值时不覆盖。
     */
    private static void restore(Context context) {
        if (sUpdatedAt > 0) {
            return;
        }
        try {
            SharedPreferences preferences =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (sProgress <= 0) {
                int progress = preferences.getInt(KEY_PROGRESS, -1);
                if (progress > 0) {
                    sProgress = progress;
                }
            }
            if (sDetail == null || sDetail.length() == 0) {
                String detail = preferences.getString(KEY_DETAIL, "");
                if (detail != null && detail.length() > 0) {
                    sDetail = detail;
                }
            }
            long savedAt = preferences.getLong(KEY_SAVED_AT, 0L);
            if (savedAt <= 0L || System.currentTimeMillis() - savedAt >= FRESH_MS) {
                return;
            }
            sStatus = preferences.getInt(KEY_STATUS, 0);
            sStartedAt = preferences.getLong(KEY_STARTED_AT, 0L);
            sBigBound = sStatus > 0 && preferences.getBoolean(KEY_BIG_BOUND, false);
            sUpdatedAt = savedAt;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state restore failed: " + t);
        }
    }

    static boolean isRunning() {
        return isFresh() && sStatus > 0;
    }

    /** 原始运行状态（1/2/3/4 运行，5/6 重载暂停）；过期返回 0。 */
    static int status() {
        return isFresh() ? sStatus : 0;
    }

    /** 进度明细「已处理张数|总张数|最慢阶段」；拿不到或过期返回空串。 */
    static String detail() {
        return isFresh() && sDetail != null ? sDetail : "";
    }

    /** 0~100；拿不到或为 0 都返回 -1（aicr 的进度在迁移后会回落成 0，不能当真实进度显示）。 */
    static int progress() {
        return isFresh() && sProgress > 0 ? sProgress : -1;
    }

    /** 最后一次读到的明细，忽略 20 秒新鲜度；没有返回空串。 */
    static String lastDetail() {
        return sDetail != null ? sDetail : "";
    }

    /** 最后一次读到的进度，忽略 20 秒新鲜度；没有返回 -1。 */
    static int lastProgress() {
        return sProgress > 0 ? sProgress : -1;
    }

    /** 本轮开始时间（epoch ms）；未知返回 0。 */
    static long startedAt() {
        return isFresh() ? sStartedAt : 0L;
    }

    /** 分析线程当前是否已绑大核；未运行或状态过期返回 false。 */
    static boolean bigBound() {
        return isFresh() && sStatus > 0 && sBigBound;
    }

    private static boolean isFresh() {
        return sUpdatedAt > 0 && System.currentTimeMillis() - sUpdatedAt < FRESH_MS;
    }
}
