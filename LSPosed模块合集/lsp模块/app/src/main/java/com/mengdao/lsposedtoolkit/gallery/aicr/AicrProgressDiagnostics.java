package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;

import java.util.HashSet;
import java.util.Set;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 诊断版进度采样。
 *
 * 只读：不调用任何会触发进度重算的查询入口，不写任何 SharedPreferences。
 * 所有采样都在独立 HandlerThread 上执行：ManagerDataBase 未开 allowMainThreadQueries，
 * 主线程访问 QueryDao 会抛 IllegalStateException，计数只能取到 err。
 *
 * RunningStatus.setRunningStatus 变为 &gt;0 时开始：立即采一行，之后每 30 秒一行；
 * 期间状态回到 0 时补采一行即停。总日志上限 40 行（含 doWork 心跳与 stage-write）。
 */
final class AicrProgressDiagnostics {

    private static final String TAG = "GalleryAnalyze";

    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.ProgressMonitor";
    private static final String GALLERY_PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.GalleryProgressMonitor";
    private static final String GALLERY_MIGRATE_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.GalleryMigrate";
    private static final String MANAGER_DATABASE_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.ManagerDataBase";
    private static final String QUERY_DAO_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.dao.QueryDao";
    private static final String CONTEXT_UTIL_CLASS =
            "com.xiaomi.aicr.common.ContextUtil";

    private static final long SAMPLE_INTERVAL_MS = 30_000L;
    private static final int MAX_LOG_LINES = 40;
    private static final int MAX_LINE_LENGTH = 399;
    private static final int MAX_ERR_MESSAGE_LENGTH = 80;
    private static final String DIAG_THREAD_NAME = "mengdao-aicr-diag";
    private static final String DEFAULT_PREFS_NAME = "RunningStatusPrefs";

    private static ClassLoader sClassLoader;
    private static HandlerThread sThread;
    private static Handler sHandler;
    private static boolean sHandlerInitialized;
    private static int sLastStatus;
    private static boolean sActive;
    private static int sSampleIndex;
    private static int sLogCount;
    private static final Set<String> sUnavailableClasses = new HashSet<>();

    private AicrProgressDiagnostics() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        Class<?> statusClass = XposedHelpers.findClassIfExists(RUNNING_STATUS_CLASS, classLoader);
        if (statusClass == null) {
            logUnavailableOnce(RUNNING_STATUS_CLASS);
            return;
        }
        if (handler() == null) {
            return;
        }
        XposedHelpers.findAndHookMethod(statusClass, "setRunningStatus", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        onStatusChanged((Integer) param.args[0]);
                    }
                });
    }

    private static void onStatusChanged(final int status) {
        Handler handler = handler();
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() {
            @Override
            public void run() {
                handleStatusOnWorker(status);
            }
        });
    }

    private static void handleStatusOnWorker(int status) {
        try {
            int previous = sLastStatus;
            sLastStatus = status;
            if (status > 0) {
                if (previous <= 0) {
                    startCycle();
                }
            } else if (sActive) {
                finishWithIdleSample();
            }
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": DIAG status hook failed: " + t);
        }
    }

    private static void startCycle() {
        cancelPending();
        sActive = true;
        sSampleIndex = 0;
        Handler handler = handler();
        if (handler == null) {
            sActive = false;
            return;
        }
        handler.post(SAMPLER);
    }

    /** 运行期间每 30 秒采一行，与心跳共享 40 行上限；状态回 0 时补采一行即停。 */
    private static final Runnable SAMPLER = new Runnable() {
        @Override
        public void run() {
            if (!sActive) {
                return;
            }
            emitSample(sSampleIndex + 1);
            if (!sActive) {
                return;
            }
            Handler handler = sHandler;
            if (handler != null) {
                handler.postDelayed(this, SAMPLE_INTERVAL_MS);
            }
        }
    };

    /** 状态回到 0：撤掉后续采样，补一行后停止本轮。 */
    private static void finishWithIdleSample() {
        cancelPending();
        sActive = false;
        emitSample(sSampleIndex + 1);
    }

    private static void cancelPending() {
        Handler handler = sHandler;
        if (handler != null) {
            handler.removeCallbacks(SAMPLER);
        }
    }

    /** 任务心跳等外部 DIAG 行：与采样共享 40 行上限，超出后静默。 */
    static void logDiagLine(String body) {
        if (!reserveLogLine()) {
            return;
        }
        XposedBridge.log(TAG + ": DIAG " + body);
    }

    private static void emitSample(int sampleNo) {
        if (!reserveLogLine()) {
            cancelPending();
            sActive = false;
            return;
        }
        if (sampleNo > sSampleIndex) {
            sSampleIndex = sampleNo;
        }
        String line = buildLine(sampleNo);
        if (line.length() > MAX_LINE_LENGTH) {
            line = line.substring(0, MAX_LINE_LENGTH);
        }
        XposedBridge.log(line);
        // 同一采样点追加流水线落点行；单独一行，避免主行超长被截断。
        logDiagLine("stage-write " + StageWriteProbe.describe());
        // 全表 GROUP BY 只做一次，避免每 30 秒扫库。
        if (sampleNo == 1) {
            DbStateSnapshot.queryOnce(sClassLoader);
        }
    }

    private static String buildLine(int n) {
        String[] prefs = readPrefs();
        String[] ori = readOriInfo();
        Counts counts = readCounts();
        return TAG + ": DIAG"
                + " n=" + n
                + " thread=" + Thread.currentThread().getName()
                + " status=" + runningStatusInt("getRunningStatus")
                + " runStatus=" + runningStatusInt("getRunStatus")
                + " startTime=" + runningStatusLong("getRunningStartTime")
                + " support=" + galleryMigrateBoolean("isSupport")
                + " migrated=" + galleryMigrateBoolean("isMigrated")
                + " galleryApp=" + galleryAppProgress(-1)
                + " prefMigrate=" + prefs[0]
                + " prefGallery=" + prefs[1]
                + " prefScope1=" + prefs[2]
                + " ui1=" + lastScopeUiProgress(1)
                + " oriPic=" + ori[0]
                + " oriVid=" + ori[1]
                + " face=" + counts.face
                + " ocr=" + counts.ocr
                + " tag=" + counts.tag
                + " pet=" + counts.pet
                + " clipP=" + counts.clipPic
                + " clipV=" + counts.clipVid
                + " calcAI=" + realProgressFromAi();
    }

    private static String runningStatusInt(String method) {
        try {
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass == null) {
                logUnavailableOnce(RUNNING_STATUS_CLASS);
                return "-1";
            }
            Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
            return String.valueOf(XposedHelpers.callMethod(status, method));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static String runningStatusLong(String method) {
        try {
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass == null) {
                logUnavailableOnce(RUNNING_STATUS_CLASS);
                return "-1";
            }
            Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
            return String.valueOf(XposedHelpers.callMethod(status, method));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static String galleryMigrateBoolean(String method) {
        try {
            Class<?> migrateClass = XposedHelpers.findClassIfExists(
                    GALLERY_MIGRATE_CLASS, sClassLoader);
            if (migrateClass == null) {
                logUnavailableOnce(GALLERY_MIGRATE_CLASS);
                return "-1";
            }
            return String.valueOf(XposedHelpers.callStaticMethod(migrateClass, method));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static String galleryAppProgress(int defaultValue) {
        try {
            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                logUnavailableOnce(PROGRESS_MONITOR_CLASS);
                return "-1";
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            return String.valueOf(XposedHelpers.callMethod(
                    monitor, "getGalleryAppProgress", defaultValue));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static String lastScopeUiProgress(int scope) {
        try {
            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                logUnavailableOnce(PROGRESS_MONITOR_CLASS);
                return "-1";
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            Object bundle = XposedHelpers.callMethod(monitor, "getLastScopeUIProgressInfo", scope);
            if (bundle instanceof Bundle) {
                return String.valueOf(((Bundle) bundle).getInt("analyse_progress", -1));
            }
            return "-1";
        } catch (Throwable t) {
            return err(t);
        }
    }

    /** 只调用一次 getDelayedOriGalleryInfo，避免两次采样各自触发重算。 */
    private static String[] readOriInfo() {
        String[] out = {"-1", "-1"};
        try {
            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    GALLERY_PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                logUnavailableOnce(GALLERY_PROGRESS_MONITOR_CLASS);
                return out;
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            Object bundle = XposedHelpers.callMethod(monitor, "getDelayedOriGalleryInfo");
            if (bundle instanceof Bundle) {
                out[0] = String.valueOf(((Bundle) bundle).getInt("totalPicCount", -1));
                out[1] = String.valueOf(((Bundle) bundle).getInt("totalVidCount", -1));
            }
        } catch (Throwable t) {
            String err = err(t);
            out[0] = err;
            out[1] = err;
        }
        return out;
    }

    private static String realProgressFromAi() {
        try {
            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    GALLERY_PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                logUnavailableOnce(GALLERY_PROGRESS_MONITOR_CLASS);
                return "-1";
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            return String.valueOf(XposedHelpers.callMethod(monitor, "getRealProgressFromAI"));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static Counts readCounts() {
        Counts counts = new Counts();
        Object dao;
        try {
            Class<?> dbClass = XposedHelpers.findClassIfExists(
                    MANAGER_DATABASE_CLASS, sClassLoader);
            Class<?> daoClass = XposedHelpers.findClassIfExists(
                    QUERY_DAO_CLASS, sClassLoader);
            if (dbClass == null) {
                logUnavailableOnce(MANAGER_DATABASE_CLASS);
                return counts;
            }
            if (daoClass == null) {
                logUnavailableOnce(QUERY_DAO_CLASS);
                return counts;
            }
            Object db = XposedHelpers.callStaticMethod(dbClass, "getInstance");
            dao = XposedHelpers.callMethod(db, "queryDao");
        } catch (Throwable t) {
            String err = err(t);
            counts.face = err;
            counts.ocr = err;
            counts.tag = err;
            counts.pet = err;
            counts.clipPic = err;
            counts.clipVid = err;
            return counts;
        }
        counts.face = callInt(dao, "getGalleryFaceStateCount");
        counts.ocr = callInt(dao, "getGalleryOcrStateCount");
        counts.tag = callInt(dao, "getGalleryTagStateCount");
        counts.pet = callInt(dao, "getGalleryPetCount");
        counts.clipPic = callInt(dao, "getGalleryClipStateCount", "PICTURE");
        counts.clipVid = callInt(dao, "getGalleryClipStateCount", "VIDEO");
        return counts;
    }

    private static String callInt(Object target, String method, Object... args) {
        try {
            return String.valueOf(XposedHelpers.callMethod(target, method, args));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static String[] readPrefs() {
        String[] out = {"-1", "-1", "-1"};
        try {
            Context context = context();
            if (context == null) {
                return out;
            }
            SharedPreferences prefs = context.getSharedPreferences(
                    runningStatusPrefsName(), 0);
            out[0] = prefInt(prefs, "migrate_gallery_progress");
            out[1] = prefInt(prefs, "gallery_progress");
            out[2] = prefInt(prefs, "progress_1");
        } catch (Throwable t) {
            String err = err(t);
            out[0] = err;
            out[1] = err;
            out[2] = err;
        }
        return out;
    }

    private static String prefInt(SharedPreferences prefs, String key) {
        try {
            return String.valueOf(prefs.getInt(key, -1));
        } catch (Throwable t) {
            return err(t);
        }
    }

    private static String runningStatusPrefsName() {
        try {
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass != null) {
                Object name = XposedHelpers.getStaticObjectField(
                        statusClass, "SHARED_PREFERENCES_NAME");
                if (name instanceof String) {
                    return (String) name;
                }
            }
        } catch (Throwable ignored) {
        }
        return DEFAULT_PREFS_NAME;
    }

    private static Context context() {
        try {
            Class<?> util = XposedHelpers.findClassIfExists(
                    CONTEXT_UTIL_CLASS, sClassLoader);
            if (util == null) {
                logUnavailableOnce(CONTEXT_UTIL_CLASS);
                return null;
            }
            Object context = XposedHelpers.callStaticMethod(util, "getApplicationContext");
            if (context instanceof Context) {
                return (Context) context;
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /**
     * err:&lt;外层类名&gt;/&lt;根因类名&gt;:&lt;根因 message 前 80 字&gt;
     * Xposed 反射会把目标异常包成 InvocationTargetError，这里解到最内层。
     */
    private static String err(Throwable t) {
        Throwable root = t;
        int guard = 0;
        while (root.getCause() != null && root.getCause() != root && guard++ < 10) {
            root = root.getCause();
        }
        String outerName = t.getClass().getSimpleName();
        if (outerName.isEmpty()) {
            outerName = "Throwable";
        }
        String rootName = root.getClass().getSimpleName();
        if (rootName.isEmpty()) {
            rootName = "Throwable";
        }
        String message = root.getMessage();
        if (message == null) {
            message = "";
        }
        message = message.replace('\n', ' ').replace('\r', ' ').replace('\t', ' ');
        if (message.length() > MAX_ERR_MESSAGE_LENGTH) {
            message = message.substring(0, MAX_ERR_MESSAGE_LENGTH);
        }
        return "err:" + outerName + "/" + rootName + ":" + message;
    }

    private static synchronized boolean reserveLogLine() {
        if (sLogCount >= MAX_LOG_LINES) {
            return false;
        }
        sLogCount++;
        return true;
    }

    private static void logUnavailableOnce(String className) {
        synchronized (sUnavailableClasses) {
            if (!sUnavailableClasses.add(className)) {
                return;
            }
        }
        if (reserveLogLine()) {
            XposedBridge.log(TAG + ": DIAG unavailable: " + className);
        }
    }

    private static synchronized Handler handler() {
        if (sHandlerInitialized) {
            return sHandler;
        }
        sHandlerInitialized = true;
        try {
            HandlerThread thread = new HandlerThread(DIAG_THREAD_NAME);
            thread.setDaemon(true);
            thread.start();
            sThread = thread;
            sHandler = new Handler(thread.getLooper());
        } catch (Throwable t) {
            sThread = null;
            sHandler = null;
            logUnavailableOnce("background-thread");
        }
        return sHandler;
    }

    private static final class Counts {
        String face = "-1";
        String ocr = "-1";
        String tag = "-1";
        String pet = "-1";
        String clipPic = "-1";
        String clipVid = "-1";
    }
}
