package com.mengdao.galleryanalyze.hook.aicr;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.SystemClock;

import com.mengdao.galleryanalyze.hook.AicrProtocol;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把 aicr 的真实运行状态回传给相册。
 *
 * 相册设置页原先只读自己进程里的 isRunning，aicr 在 :searchDataService 里算多久都显示「空闲」。
 * 这里 hook RunningStatus.setRunningStatus：状态变化立即广播；非空闲期间每秒检查一次进度，
 * 最多每 5 秒广播一次。进度明细查询较重，单独缓存 30 秒。只读，不改变任何状态。
 *
 * 进度读取必须离开主线程：ManagerDataBase 未开 allowMainThreadQueries，主线程访问 QueryDao
 * 会抛 IllegalStateException，被 getRealProgressFromAI 吞掉后返回 0，再把 0 写回
 * migrate_gallery_progress，相册搜索页就显示 0。这里改用独立 HandlerThread 读取。
 * 后台线程启动失败时降级为「只报状态、不读进度」，绝不回退到主线程读取。
 */
final class AicrStateReporter {

    private static final String TAG = "GalleryAnalyze";
    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.ProgressMonitor";
    private static final String PROGRESS_THREAD_NAME = "mengdao-aicr-progress";
    private static final long POLL_INTERVAL_MS = 1000L;
    private static final long BROADCAST_INTERVAL_MS = 5000L;
    /** 明细查询每阶段要查两次 Room，缓存 30 秒，避免 5 秒一次的重查询。 */
    private static final long DETAIL_READ_INTERVAL_MS = 30000L;
    private static final int STATUS_IDLE = 0;

    private static final String MANAGER_DATABASE_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.ManagerDataBase";
    private static final String QUERY_DAO_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.dao.QueryDao";
    private static final String GALLERY_PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.GalleryProgressMonitor";
    private static final String GALLERY_MIGRATE_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.GalleryMigrate";

    private static ClassLoader sClassLoader;
    private static HandlerThread sThread;
    private static Handler sHandler;
    private static boolean sHandlerInitialized;
    private static volatile int sStatus = STATUS_IDLE;
    private static volatile boolean sLooping;
    private static volatile String sCachedDetail = "";
    private static volatile long sLastDetailReadAt;
    private static volatile long sLastProgressBroadcastAt;
    private static volatile boolean sProgressFailureLogged;
    private static volatile boolean sDetailFailureLogged;
    private static volatile boolean sDetailTimingLogged;
    private static volatile boolean sSkipFailureCounts;
    private static volatile boolean sClipMismatchLogged;
    /** 明细查询超过该耗时后，下次降级为旧 3 段（不再查失败计数）。 */
    private static final long DETAIL_SLOW_MS = 2000L;
    /**
     * 某阶段 state=-1 占到全库总行数该比例时，判定该阶段在本机「不适用」。
     * 典型例子：deviceType != 1 时宠物分支不执行，pet_state 被批量写成 -1，
     * 全库 96% 都是这个「不适用」标记，不能当失败统计。
     */
    private static final int UNSUPPORTED_RATIO_NUM = 9;
    private static final int UNSUPPORTED_RATIO_DEN = 10;
    /** 已打过「阶段不适用」日志的阶段，每阶段只打一次，避免每 30 秒刷屏。 */
    private static final Set<String> sExcludedStagesLogged = ConcurrentHashMap.newKeySet();
    private static volatile boolean sAllExcludedLogged;

    private AicrStateReporter() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        Class<?> statusClass = XposedHelpers.findClassIfExists(RUNNING_STATUS_CLASS, classLoader);
        if (statusClass == null) {
            XposedBridge.log(TAG + ": RunningStatus not found, skip state reporting");
            return;
        }
        if (handler() == null) {
            XposedBridge.log(TAG + ": progress thread unavailable, status-only mode");
        }
        XposedHelpers.findAndHookMethod(statusClass, "setRunningStatus", int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        onStatusChanged((Integer) param.args[0]);
                    }
                });
    }

    private static void onStatusChanged(int status) {
        try {
            sStatus = status;
            XposedBridge.log(TAG + ": aicr runningStatus=" + status);
            Handler handler = handler();
            if (status == STATUS_IDLE) {
                stopLoop();
                sCachedDetail = "";
                sLastDetailReadAt = 0L;
                report(status, -1, "");
                return;
            }
            sLastProgressBroadcastAt = 0L;
            sLastDetailReadAt = 0L;
            sCachedDetail = "";
            if (handler == null) {
                report(status, -1, "");
                return;
            }
            handler.post(IMMEDIATE_BROADCAST);
            startLoop(handler);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state report failed: " + t);
        }
    }

    private static final Runnable IMMEDIATE_BROADCAST = new Runnable() {
        @Override
        public void run() {
            int status = sStatus;
            if (status == STATUS_IDLE) {
                return;
            }
            report(status, currentProgress(), cachedDetail(false));
            sLastProgressBroadcastAt = SystemClock.elapsedRealtime();
        }
    };

    private static void startLoop(Handler handler) {
        if (sLooping) {
            return;
        }
        sLooping = true;
        handler.postDelayed(LOOP, POLL_INTERVAL_MS);
    }

    private static void stopLoop() {
        sLooping = false;
        Handler handler = sHandler;
        if (handler != null) {
            handler.removeCallbacks(LOOP);
        }
    }

    private static final Runnable LOOP = new Runnable() {
        @Override
        public void run() {
            if (!sLooping) {
                return;
            }
            try {
                int status = sStatus;
                if (status == STATUS_IDLE) {
                    stopLoop();
                    return;
                }
                long now = SystemClock.elapsedRealtime();
                if (now - sLastProgressBroadcastAt >= BROADCAST_INTERVAL_MS) {
                    report(status, currentProgress(), cachedDetail(false));
                    sLastProgressBroadcastAt = now;
                }
            } catch (Throwable t) {
                XposedBridge.log(TAG + ": progress report failed: " + t);
            }
            Handler handler = sHandler;
            if (sLooping && handler != null) {
                handler.postDelayed(this, POLL_INTERVAL_MS);
            }
        }
    };

    /** 明细只在缓存过期时重算；force=true 用于首帧。 */
    private static String cachedDetail(boolean force) {
        long now = SystemClock.elapsedRealtime();
        if (!force && sLastDetailReadAt > 0
                && now - sLastDetailReadAt < DETAIL_READ_INTERVAL_MS) {
            return sCachedDetail;
        }
        sCachedDetail = currentDetail();
        sLastDetailReadAt = now;
        return sCachedDetail;
    }

    private static synchronized Handler handler() {
        if (sHandlerInitialized) {
            return sHandler;
        }
        sHandlerInitialized = true;
        try {
            HandlerThread thread = new HandlerThread(PROGRESS_THREAD_NAME);
            thread.setDaemon(true);
            thread.start();
            sThread = thread;
            sHandler = new Handler(thread.getLooper());
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": progress thread start failed: " + t);
            sThread = null;
            sHandler = null;
        }
        return sHandler;
    }

    private static void report(int status, int progress, String detail) {
        try {
            Context context = context();
            if (context == null) {
                return;
            }
            Intent intent = new Intent(AicrProtocol.ACTION_STATE);
            intent.setPackage(AicrProtocol.GALLERY_PACKAGE);
            intent.putExtra(AicrProtocol.EXTRA_STATUS, status);
            intent.putExtra(AicrProtocol.EXTRA_PROGRESS, progress);
            if (detail != null && detail.length() > 0) {
                intent.putExtra(AicrProtocol.EXTRA_DETAIL, detail);
            }
            intent.putExtra(AicrProtocol.EXTRA_STARTED_AT, runningStartTime());
            context.sendBroadcast(intent);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": state broadcast failed: " + t);
        }
    }

    /** 本轮开始时间；相册侧据此显示「已运行多久」，进度拿不到时也有东西可看。 */
    private static long runningStartTime() {
        try {
            Class<?> statusClass = XposedHelpers.findClassIfExists(
                    RUNNING_STATUS_CLASS, sClassLoader);
            if (statusClass == null) {
                return 0L;
            }
            Object status = XposedHelpers.getStaticObjectField(statusClass, "INSTANCE");
            return (Long) XposedHelpers.callMethod(status, "getRunningStartTime");
        } catch (Throwable t) {
            return 0L;
        }
    }

    /**
     * 读相册建的索引进度（0~100）。取不到就返回 -1，相册侧按「只显示分析中」处理。
     * getIndexProgress 是带默认参数的 Kotlin 方法，走 $default 合成方法调用。
     * 必须在后台线程调用：内部会访问 Room，主线程会抛 IllegalStateException。
     */
    private static int currentProgress() {
        try {
            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                return -1;
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            Object bundle = XposedHelpers.callStaticMethod(monitorClass, "getIndexProgress$default",
                    monitor, AicrProtocol.SCOPE_GALLERY, false, null, 6, null);
            if (bundle instanceof android.os.Bundle) {
                return ((android.os.Bundle) bundle).getInt("analyse_progress", -1);
            }
        } catch (Throwable t) {
            if (!sProgressFailureLogged) {
                sProgressFailureLogged = true;
                XposedBridge.log(TAG + ": progress lookup failed: " + t);
            }
        }
        return -1;
    }

    /**
     * 分阶段明细：「已完成|总数|最慢阶段|待处理|失败」。拿不到返回空串，调用方退回百分比。
     *
     * 状态口径：1=完成/迁移标记，10=跳过/不适用，-1=失败，0=未处理。
     * 某阶段的 state=-1 若占到全库总行数 90% 以上，判定该阶段在本机「不适用」
     * （如 deviceType != 1 时宠物分支不执行，pet_state 全是 -1），整体不参与三段统计；
     * 宠物阶段仍叠加原有的 isPetSupported() 静态判断，任一判定不支持即排除。
     * 已完成 = 剩余图片阶段 (state!=0 计数 - state=-1 计数) 的最小值
     *        + min(视频 clip 已完成, totalVid)；
     * 失败 = 剩余图片阶段 state=-1 的最大值 + 视频 clip 的 state=-1（图片/视频两域不相交）；
     * 待处理 = 总数 - 已完成 - 失败，clamp 到 0。若所有阶段都被排除则退回旧口径。
     *
     * 失败计数需要每阶段多查一次；查询超过 DETAIL_SLOW_MS 后降级为旧 3 段明细。
     */
    private static String currentDetail() {
        long startedAt = SystemClock.elapsedRealtime();
        try {
            Class<?> dbClass = XposedHelpers.findClassIfExists(
                    MANAGER_DATABASE_CLASS, sClassLoader);
            Class<?> daoClass = XposedHelpers.findClassIfExists(
                    QUERY_DAO_CLASS, sClassLoader);
            if (dbClass == null || daoClass == null) {
                return "";
            }
            Object db = XposedHelpers.callStaticMethod(dbClass, "getInstance");
            Object dao = XposedHelpers.callMethod(db, "queryDao");
            boolean petSupported = isPetSupported();

            Integer faceAll = count(dao, "getGalleryFaceStateCount");
            Integer ocrAll = count(dao, "getGalleryOcrStateCount");
            Integer tagAll = count(dao, "getGalleryTagStateCount");
            Integer petAll = petSupported ? count(dao, "getGalleryPetStateCount") : null;
            Integer clipPicAll = count(dao, "getGalleryClipStateCount", "PICTURE");
            Integer clipVidAll = count(dao, "getGalleryClipStateCount", "VIDEO");
            if (!allPresent(faceAll, ocrAll, tagAll, clipPicAll, clipVidAll)
                    || (petSupported && petAll == null)) {
                return "";
            }

            Class<?> monitorClass = XposedHelpers.findClassIfExists(
                    GALLERY_PROGRESS_MONITOR_CLASS, sClassLoader);
            if (monitorClass == null) {
                return "";
            }
            Object monitor = XposedHelpers.getStaticObjectField(monitorClass, "INSTANCE");
            Object ori = XposedHelpers.callMethod(monitor, "getDelayedOriGalleryInfo");
            if (!(ori instanceof android.os.Bundle)) {
                return "";
            }
            android.os.Bundle oriInfo = (android.os.Bundle) ori;
            int totalPic = oriInfo.getInt("totalPicCount", 0);
            int totalVid = oriInfo.getInt("totalVidCount", 0);
            if (totalPic <= 0) {
                return "";
            }
            int total = totalPic + totalVid;
            if (total <= 0) {
                return "";
            }

            int processedPic = faceAll;
            String processedStage = "face";
            if (ocrAll < processedPic) {
                processedPic = ocrAll;
                processedStage = "ocr";
            }
            if (tagAll < processedPic) {
                processedPic = tagAll;
                processedStage = "tag";
            }
            if (petSupported && petAll < processedPic) {
                processedPic = petAll;
                processedStage = "pet";
            }
            if (clipPicAll < processedPic) {
                processedPic = clipPicAll;
                processedStage = "clip";
            }
            int processedVid = Math.max(0, Math.min(clipVidAll, totalVid));
            if (sSkipFailureCounts) {
                logDetailTiming(SystemClock.elapsedRealtime() - startedAt);
                return legacyDetail(processedPic, processedVid, totalPic, totalVid,
                        processedStage);
            }

            Integer faceFailed = count(dao, "getGalleryFaceStateCount", -1);
            Integer ocrFailed = count(dao, "getGalleryOcrStateCount", -1);
            Integer tagFailed = count(dao, "getGalleryTagStateCount", -1);
            Integer petFailed = petSupported ? count(dao, "getGalleryPetStateCount", -1) : null;
            Integer clipPicFailed = count(dao, "getGalleryClipStateCount", "PICTURE", -1);
            Integer clipVidFailed = count(dao, "getGalleryClipStateCount", "VIDEO", -1);
            if (!allPresent(faceFailed, ocrFailed, tagFailed, clipPicFailed, clipVidFailed)
                    || (petSupported && petFailed == null)) {
                return "";
            }
            if (clipPicAll < clipPicFailed || clipVidAll < clipVidFailed) {
                logClipMismatch(clipPicAll, clipVidAll, clipPicFailed, clipVidFailed);
            }

            // 动态判定各阶段在本机是否「不适用」：-1 占全库 90% 以上即排除。
            // 宠物阶段再与静态 isPetSupported() 取「与」。
            boolean faceExcluded = isStageUnsupported("face", faceFailed, total);
            boolean ocrExcluded = isStageUnsupported("ocr", ocrFailed, total);
            boolean tagExcluded = isStageUnsupported("tag", tagFailed, total);
            boolean clipPicExcluded = isStageUnsupported("clip", clipPicFailed, total);
            boolean clipVidExcluded = isStageUnsupported("clip_video", clipVidFailed, total);
            boolean petExcluded = !petSupported
                    || isStageUnsupported("pet", petFailed, total);

            if (allStagesExcluded(faceExcluded, ocrExcluded, tagExcluded,
                    petSupported, petExcluded, clipPicExcluded, clipVidExcluded)) {
                // 极端情况：所有阶段都不适用，退回旧口径，避免三段全是 0。
                if (!sAllExcludedLogged) {
                    sAllExcludedLogged = true;
                    XposedBridge.log(TAG + ": detail all stages excluded, fallback to legacy counts");
                }
                faceExcluded = false;
                ocrExcluded = false;
                tagExcluded = false;
                clipPicExcluded = false;
                clipVidExcluded = false;
                petExcluded = !petSupported;
            }

            String[] stageNames = {"face", "ocr", "tag", "pet", "clip"};
            int[] stageAll = {faceAll, ocrAll, tagAll,
                    petSupported ? petAll : 0, clipPicAll};
            int[] stageFailed = {faceFailed, ocrFailed, tagFailed,
                    petSupported ? petFailed : 0, clipPicFailed};
            boolean[] stageExcluded = {faceExcluded, ocrExcluded, tagExcluded,
                    petExcluded, clipPicExcluded};

            int picDone = Integer.MAX_VALUE;
            String doneStage = "face";
            int picFailed = 0;
            for (int i = 0; i < stageNames.length; i++) {
                if (stageExcluded[i]) {
                    continue;
                }
                int done = completedCount(stageAll[i], stageFailed[i]);
                if (done < picDone) {
                    picDone = done;
                    doneStage = stageNames[i];
                }
                picFailed = Math.max(picFailed, stageFailed[i]);
            }
            if (picDone == Integer.MAX_VALUE) {
                // 图片阶段全部排除时，图片域不贡献已完成/失败。
                picDone = 0;
                doneStage = "clip";
            }

            int clipVidDone = clipVidExcluded
                    ? 0 : completedCount(clipVidAll, clipVidFailed);
            int clipVidFailedCount = clipVidExcluded ? 0 : clipVidFailed;
            int rawCompleted = Math.min(picDone, totalPic)
                    + Math.min(clipVidDone, totalVid);
            int rawFailed = Math.min(picFailed, totalPic)
                    + Math.min(clipVidFailedCount, totalVid);
            if (rawCompleted + rawFailed > total) {
                XposedBridge.log(TAG + ": detail counts overflow completed=" + rawCompleted
                        + " failed=" + rawFailed + " total=" + total + " stage=" + doneStage);
            }
            int completed = Math.min(Math.max(0, rawCompleted), total);
            int failed = Math.min(Math.max(0, rawFailed), total - completed);
            int pending = Math.max(0, total - completed - failed);

            logDetailTiming(SystemClock.elapsedRealtime() - startedAt);
            return completed + "|" + total + "|" + doneStage + "|" + pending + "|" + failed;
        } catch (Throwable t) {
            if (!sDetailFailureLogged) {
                sDetailFailureLogged = true;
                XposedBridge.log(TAG + ": detail lookup failed: " + t);
            }
            return "";
        }
    }

    private static String legacyDetail(int processedPic, int processedVid,
                                       int totalPic, int totalVid, String stage) {
        int processed = Math.max(0, Math.min(processedPic, totalPic))
                + Math.max(0, Math.min(processedVid, totalVid));
        return processed + "|" + (totalPic + totalVid) + "|" + stage;
    }

    private static Integer count(Object dao, String method, Object... args) {
        Object value = XposedHelpers.callMethod(dao, method, args);
        return value instanceof Integer ? (Integer) value : null;
    }

    private static boolean allPresent(Integer... values) {
        for (Integer value : values) {
            if (value == null) {
                return false;
            }
        }
        return true;
    }

    private static int completedCount(int all, int failed) {
        return Math.max(0, all - failed);
    }

    /**
     * state=-1 的行数占全库总行数 >= 90% 时判定该阶段在本机不适用，
     * 每阶段只记一次日志（total 为 totalPic + totalVid）。
     */
    private static boolean isStageUnsupported(String stage, int failed, int total) {
        if (total <= 0
                || (long) failed * UNSUPPORTED_RATIO_DEN
                        < (long) total * UNSUPPORTED_RATIO_NUM) {
            return false;
        }
        if (sExcludedStagesLogged.add(stage)) {
            XposedBridge.log(TAG + ": detail stage " + stage + " excluded (failed="
                    + failed + " total=" + total + ")");
        }
        return true;
    }

    /** 所有阶段都被判定为不适用（宠物阶段含静态 isPetSupported() 判断）。 */
    private static boolean allStagesExcluded(boolean face, boolean ocr, boolean tag,
                                             boolean petSupported, boolean pet,
                                             boolean clipPic, boolean clipVid) {
        return face && ocr && tag && clipPic && clipVid && (!petSupported || pet);
    }

    private static void logDetailTiming(long elapsedMs) {
        if (elapsedMs > DETAIL_SLOW_MS) {
            if (!sSkipFailureCounts) {
                sSkipFailureCounts = true;
                XposedBridge.log(TAG + ": detail query slow " + elapsedMs
                        + "ms, fallback to legacy detail");
            }
        } else if (!sDetailTimingLogged) {
            sDetailTimingLogged = true;
            XposedBridge.log(TAG + ": detail query took " + elapsedMs + "ms");
        }
    }

    private static void logClipMismatch(int picAll, int vidAll, int picFailed, int vidFailed) {
        if (sClipMismatchLogged) {
            return;
        }
        sClipMismatchLogged = true;
        XposedBridge.log(TAG + ": clip count mismatch all=" + picAll + "/" + vidAll
                + " failed=" + picFailed + "/" + vidFailed
                + " (failed query lacks store_state filter)");
    }

    private static boolean isPetSupported() {
        try {
            Class<?> migrateClass = XposedHelpers.findClassIfExists(
                    GALLERY_MIGRATE_CLASS, sClassLoader);
            if (migrateClass == null) {
                return false;
            }
            Object migrate = XposedHelpers.getStaticObjectField(migrateClass, "INSTANCE");
            return Boolean.TRUE.equals(XposedHelpers.callMethod(migrate, "isAlbumSupportPet"));
        } catch (Throwable t) {
            return false;
        }
    }

    private static Context context() {
        try {
            Class<?> util = XposedHelpers.findClassIfExists(
                    "com.xiaomi.aicr.common.ContextUtil", sClassLoader);
            if (util != null) {
                Object context = XposedHelpers.callStaticMethod(util, "getApplicationContext");
                if (context instanceof Context) {
                    return (Context) context;
                }
            }
        } catch (Throwable ignored) {
        }
        return null;
    }
}
