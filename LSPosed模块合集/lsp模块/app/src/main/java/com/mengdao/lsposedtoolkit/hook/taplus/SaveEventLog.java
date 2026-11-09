package com.mengdao.lsposedtoolkit.hook.taplus;

import android.os.Handler;
import android.os.Looper;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import de.robv.android.xposed.XposedBridge;

/**
 * 传送门保存事件的合并计数日志。
 *
 * 每张图保存都会依次命中 compress / mime_type / setBitmap(null) 三个 hook，
 * 逐次打印会让日志被同一事实刷满。这里把三类事件合并成一批：最后一次事件后
 * 静默 {@link #QUIET_MS} 输出一次，累计满 {@link #FLUSH_COUNT} 次提前输出。
 * 每批仍保留各类次数与最近一次事件时间。
 */
final class SaveEventLog {

    private static final String TAG = "TaplusFix";
    /** 静默期：最后一次事件后超过该时长即输出当前批次。 */
    private static final long QUIET_MS = 60_000L;
    /** 突发上界：一批累计到该次数提前输出，避免连续保存时迟迟没有日志。 */
    private static final int FLUSH_COUNT = 32;

    private static final int COMPRESS = 0;
    private static final int MIME = 1;
    private static final int BITMAP_NULL = 2;
    private static final String[] LABELS = {
            "PNG→JPEG", "mime_type png→jpeg", "拦截 setBitmap(null)"
    };

    private static final Object LOCK = new Object();
    private static final int[] sCounts = new int[LABELS.length];
    private static int sPending;
    private static long sLastEventAt;
    private static boolean sFlushScheduled;
    private static Handler sHandler;

    private SaveEventLog() {
    }

    static void compressPngToJpeg() {
        record(COMPRESS);
    }

    static void mimePngToJpeg() {
        record(MIME);
    }

    static void blockedSetBitmapNull() {
        record(BITMAP_NULL);
    }

    private static void record(int kind) {
        String batch = null;
        synchronized (LOCK) {
            long now = System.currentTimeMillis();
            // 定时回调可能被系统延迟；下次事件到来时按静默时长兜底输出。
            boolean flushed = false;
            if (sPending > 0 && now - sLastEventAt >= QUIET_MS) {
                batch = takeBatchLocked();
                flushed = true;
            }
            sCounts[kind]++;
            sPending++;
            sLastEventAt = now;
            if (!flushed && sPending >= FLUSH_COUNT) {
                batch = takeBatchLocked();
            } else {
                scheduleFlushLocked();
            }
        }
        log(batch);
    }

    private static void scheduleFlushLocked() {
        if (sFlushScheduled) {
            return;
        }
        Handler handler = handler();
        if (handler == null) {
            return;
        }
        sFlushScheduled = true;
        handler.postDelayed(FLUSH, QUIET_MS);
    }

    private static final Runnable FLUSH = new Runnable() {
        @Override
        public void run() {
            String batch;
            synchronized (LOCK) {
                sFlushScheduled = false;
                batch = takeBatchLocked();
            }
            log(batch);
        }
    };

    /** 取走当前批次并重置计数；无待输出事件时返回 null。调用方需持有 {@link #LOCK}。 */
    private static String takeBatchLocked() {
        if (sPending == 0) {
            return null;
        }
        if (sFlushScheduled) {
            Handler handler = handler();
            if (handler != null) {
                handler.removeCallbacks(FLUSH);
            }
            sFlushScheduled = false;
        }
        StringBuilder sb = new StringBuilder(TAG).append(": 传送门保存");
        for (int i = 0; i < sCounts.length; i++) {
            if (sCounts[i] == 0) {
                continue;
            }
            sb.append(" · ").append(LABELS[i]).append(" ×").append(sCounts[i]);
            sCounts[i] = 0;
        }
        sb.append("（最近一次 ").append(timeOf(sLastEventAt)).append("）");
        sPending = 0;
        return sb.toString();
    }

    private static void log(String batch) {
        if (batch != null) {
            XposedBridge.log(batch);
        }
    }

    private static Handler handler() {
        if (sHandler == null) {
            Looper looper = Looper.getMainLooper();
            if (looper == null) {
                return null;
            }
            sHandler = new Handler(looper);
        }
        return sHandler;
    }

    private static String timeOf(long epochMs) {
        return new SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(new Date(epochMs));
    }
}
