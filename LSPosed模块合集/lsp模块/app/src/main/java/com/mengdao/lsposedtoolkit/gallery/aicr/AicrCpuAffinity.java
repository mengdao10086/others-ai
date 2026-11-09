package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;

import java.io.File;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * aicr 分析线程的 CPU 亲和性控制。
 *
 * 只作用于 aicr 自己命名的 AISearchWork* 线程（comm 截断到 15 字符，按前缀匹配）。
 * 手动启动后绑大核 4-6，并每 3 秒重绑一次：aicr 自己会调 shieldCPU(tid, 4) 把该线程绑回低核。
 * 其它分析与停止后绑小核 0-3。原生库加载失败只记日志，不影响分析。
 */
final class AicrCpuAffinity {

    private static final String TAG = "GalleryAnalyze";
    private static final String MODULE_PACKAGE = "com.mengdao.lsposedtoolkit";
    private static final String LIB_NAME = "libmengdao_cpuaff.so";
    private static final String ABI = "arm64-v8a";
    private static final String TARGET_THREAD = "AISearchWorkThr";
    private static final String AFFINITY_THREAD_NAME = "mengdao-aicr-affinity";
    private static final long MANUAL_WINDOW_MS = 5000L;
    private static final long MANUAL_REBIND_MS = 3000L;
    private static final int ENOENT = 2;
    private static final int EINVAL = 22;

    static final int MASK_BIG = 0x70;   // cpu 4-6
    static final int MASK_SMALL = 0x0F; // cpu 0-3

    private static volatile String sModulePath;
    private static boolean sLoadTried;
    private static boolean sAvailable;
    private static volatile long sManualAt;
    private static volatile boolean sManualActive;
    private static HandlerThread sThread;
    private static Handler sHandler;
    private static boolean sThreadInitialized;
    private static int sLastResult = Integer.MIN_VALUE;
    /** -2 = 还没见过目标线程，-1 = 已消失，>=0 = 当前 tid。 */
    private static int sLastTid = -2;

    private AicrCpuAffinity() {
    }

    static void init(String modulePath) {
        sModulePath = modulePath;
    }

    /** 标记这一次「空闲 → 运行」是手动启动，5 秒内有效。 */
    static void markManualStart() {
        sManualAt = SystemClock.elapsedRealtime();
    }

    /** 取走手动启动标记；过期的标记按自动启动处理。 */
    static boolean consumeManualStart() {
        long at = sManualAt;
        sManualAt = 0L;
        return at > 0L && SystemClock.elapsedRealtime() - at <= MANUAL_WINDOW_MS;
    }

    /** 当前是否处于手动大核绑定状态；分析停止时由 stopManual 复位。 */
    static boolean isManualBound() {
        return sManualActive;
    }

    /** 手动模式：立即绑 4-6，并每 3 秒检查/重绑一次，抵消 aicr 的 shieldCPU 或 cpuset 变化。 */
    static void startManual() {
        sManualActive = true;
        sLastTid = -2;
        Handler handler = handler();
        if (handler != null) {
            handler.removeCallbacks(REBIND);
            handler.post(REBIND);
        } else {
            monitorAndRebind();
        }
    }

    /** 退出手动模式并绑回 0-3。 */
    static void stopManual() {
        sManualActive = false;
        sLastTid = -2;
        Handler handler = sHandler;
        if (handler != null) {
            handler.removeCallbacks(REBIND);
        }
        postBind(MASK_SMALL);
    }

    static void bindSmall() {
        postBind(MASK_SMALL);
    }

    private static final Runnable REBIND = new Runnable() {
        @Override
        public void run() {
            if (!sManualActive) {
                return;
            }
            monitorAndRebind();
            Handler handler = sHandler;
            if (handler != null && sManualActive) {
                handler.postDelayed(this, MANUAL_REBIND_MS);
            }
        }
    };

    /**
     * 读目标线程的真实亲和性，和 4-6 不一致就重绑。
     * 只有重绑失败才记日志，成功路径静默：aicr 会周期性把线程改回低核，
     * 每次成功重绑都记会让日志被同一事实刷满。
     */
    private static void monitorAndRebind() {
        if (!load()) {
            return;
        }
        int[] state = new int[2];
        int rc;
        try {
            rc = nativeThreadState(TARGET_THREAD, state);
        } catch (Throwable t) {
            logOnce("thread state failed: " + t);
            return;
        }
        if (rc == -ENOENT) {
            if (sLastTid >= 0) {
                XposedBridge.log(TAG + ": affinity target thread gone");
                sLastTid = -1;
            } else if (sLastTid == -2) {
                logOnce("cpu affinity waiting for " + TARGET_THREAD + " thread");
                sLastTid = -1;
            }
            return;
        }
        if (rc < 0) {
            logOnce("thread state failed (errno=" + (-rc) + ")");
            return;
        }
        int tid = state[0];
        int mask = state[1];
        sLastTid = tid;
        if (mask == MASK_BIG) {
            return;
        }

        int applied = nativeBindThread(MASK_BIG, TARGET_THREAD);
        int after = -1;
        if (nativeThreadState(TARGET_THREAD, state) == 0) {
            after = state[1];
        }
        if (after != MASK_BIG) {
            int errno = applied < 0 ? -applied : EINVAL;
            logOnce(errno == EINVAL
                    ? "cpu affinity blocked by cpuset (errno=22)"
                    : "cpu affinity rebind failed (errno=" + errno + ")");
        }
    }

    private static void postBind(final int mask) {
        Handler handler = handler();
        if (handler != null) {
            handler.post(new Runnable() {
                @Override
                public void run() {
                    bindNow(mask);
                }
            });
        } else {
            bindNow(mask);
        }
    }

    private static void bindNow(int mask) {
        if (!load()) {
            return;
        }
        try {
            int result = nativeBindThread(mask, TARGET_THREAD);
            if (result == -ENOENT) {
                logOnce("cpu affinity waiting for " + TARGET_THREAD + " thread");
                return;
            }
            if (result < 0) {
                logOnce("cpu affinity mask=0x" + Integer.toHexString(mask)
                        + " skipped (errno=" + (-result) + ")");
                return;
            }
            logOnce("cpu affinity applied mask=0x" + Integer.toHexString(result));
        } catch (Throwable t) {
            logOnce("cpu affinity failed: " + t);
        }
    }

    /** 同样的结果只写一次日志，避免 3 秒循环刷屏。 */
    private static void logOnce(String message) {
        int hash = message.hashCode();
        if (hash == sLastResult) {
            return;
        }
        sLastResult = hash;
        XposedBridge.log(TAG + ": " + message);
    }

    private static synchronized Handler handler() {
        if (sThreadInitialized) {
            return sHandler;
        }
        sThreadInitialized = true;
        try {
            HandlerThread thread = new HandlerThread(AFFINITY_THREAD_NAME);
            thread.setDaemon(true);
            thread.start();
            sThread = thread;
            sHandler = new Handler(thread.getLooper());
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": affinity thread start failed: " + t);
            sThread = null;
            sHandler = null;
        }
        return sHandler;
    }

    private static boolean load() {
        if (sLoadTried) {
            return sAvailable;
        }
        sLoadTried = true;
        String apk = sModulePath;
        if (apk == null) {
            apk = resolveModuleApk();
        }
        if (apk == null) {
            XposedBridge.log(TAG + ": cpu affinity skipped, module apk unknown");
            return false;
        }
        String zipPath = apk + "!/lib/" + ABI + "/" + LIB_NAME;
        try {
            System.load(zipPath);
            sAvailable = true;
            return true;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": cpu affinity lib load from apk failed: " + t);
        }
        try {
            File lib = new File(new File(apk).getParentFile(), "lib/" + ABI + "/" + LIB_NAME);
            System.load(lib.getAbsolutePath());
            sAvailable = true;
            return true;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": cpu affinity lib unavailable: " + t);
        }
        return false;
    }

    /** 兜底：通过 PackageManager 找模块自己的 APK（zygote 路径拿不到时使用）。 */
    private static String resolveModuleApk() {
        try {
            Context context = appContext();
            if (context == null) {
                return null;
            }
            ApplicationInfo info = context.getPackageManager()
                    .getApplicationInfo(MODULE_PACKAGE, 0);
            return info == null ? null : info.sourceDir;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": module apk lookup failed: " + t);
            return null;
        }
    }

    private static Context appContext() {
        try {
            Class<?> activityThread = Class.forName("android.app.ActivityThread");
            Object application = XposedHelpers.callStaticMethod(activityThread, "currentApplication");
            return application instanceof Context ? (Context) application : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static native int nativeBindThread(int mask, String namePrefix);

    private static native int nativeThreadState(String namePrefix, int[] out);
}
