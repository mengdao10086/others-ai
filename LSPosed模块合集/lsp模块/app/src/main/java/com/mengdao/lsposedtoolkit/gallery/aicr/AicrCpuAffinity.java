package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.SystemClock;

import java.io.File;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * aicr 分析进程的 CPU 亲和性控制。
 *
 * 只在 :searchDataService 进程内使用。手动启动绑大核 4-6，其它分析与停止后绑小核 0-3。
 * 原生库从模块 APK 里直接加载，失败只记日志，绝不影响分析。
 */
final class AicrCpuAffinity {

    private static final String TAG = "GalleryAnalyze";
    private static final String MODULE_PACKAGE = "com.mengdao.lsposedtoolkit";
    private static final String LIB_NAME = "libmengdao_cpuaff.so";
    private static final String ABI = "arm64-v8a";
    private static final long MANUAL_WINDOW_MS = 5000L;

    static final int MASK_BIG = 0x70;   // cpu 4-6
    static final int MASK_SMALL = 0x0F; // cpu 0-3

    private static volatile String sModulePath;
    private static boolean sLoadTried;
    private static boolean sAvailable;
    private static volatile long sManualAt;
    private static volatile int sCurrentMask = -1;

    private AicrCpuAffinity() {
    }

    static void init(String modulePath) {
        sModulePath = modulePath;
    }

    /** 标记下一次「空闲 → 运行」是手动启动，5 秒内有效。 */
    static void markManualStart() {
        sManualAt = SystemClock.elapsedRealtime();
    }

    /** 取走手动启动标记；过期的标记按自动启动处理。 */
    static boolean consumeManualStart() {
        long at = sManualAt;
        sManualAt = 0L;
        return at > 0L && SystemClock.elapsedRealtime() - at <= MANUAL_WINDOW_MS;
    }

    static void bindBig() {
        bind(MASK_BIG);
    }

    static void bindSmall() {
        bind(MASK_SMALL);
    }

    private static synchronized void bind(int mask) {
        if (mask == sCurrentMask || !load()) {
            return;
        }
        try {
            int result = nativeBind(mask);
            if (result < 0) {
                XposedBridge.log(TAG + ": cpu affinity mask=0x" + Integer.toHexString(mask)
                        + " skipped (errno=" + (-result) + ")");
                return;
            }
            sCurrentMask = mask;
            XposedBridge.log(TAG + ": cpu affinity applied mask=0x" + Integer.toHexString(result));
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": cpu affinity failed: " + t);
        }
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
            XposedBridge.log(TAG + ": cpu affinity lib loaded from apk");
            return true;
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": cpu affinity lib load from apk failed: " + t);
        }
        try {
            File lib = new File(new File(apk).getParentFile(), "lib/" + ABI + "/" + LIB_NAME);
            System.load(lib.getAbsolutePath());
            sAvailable = true;
            XposedBridge.log(TAG + ": cpu affinity lib loaded from dir");
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

    private static native int nativeBind(int mask);
}
