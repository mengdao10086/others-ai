package com.mengdao.lsposedtoolkit.gallery.aicr;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.SystemClock;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把 aicr 的真实运行状态回传给相册。
 *
 * 相册设置页原先只读自己进程里的 isRunning，aicr 在 :searchDataService 里算多久都显示「空闲」。
 * 这里 hook RunningStatus.setRunningStatus：状态变化立即广播；运行期间每 1 秒巡检状态、
 * 每 60 秒重算一次进度、每 10 秒用缓存值发一次心跳。只读，不改变任何状态。
 *
 * 进度读取必须离开主线程：ManagerDataBase 未开 allowMainThreadQueries，主线程访问 QueryDao
 * 会抛 IllegalStateException，被 getRealProgressFromAI 吞掉后返回 0，再把 0 写回
 * migrate_gallery_progress，相册搜索页就显示 0。这里改用独立 HandlerThread 读取。
 * 后台线程启动失败时降级为「只报状态、不读进度」，绝不回退到主线程读取。
 */
final class AicrStateReporter {

    private static final String RUNNING_STATUS_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.RunningStatus";
    private static final String PROGRESS_MONITOR_CLASS =
            "com.xiaomi.aicr.searchpro.monitor.ProgressMonitor";
    private static final String PROGRESS_THREAD_NAME = "mengdao-aicr-progress";
    /** 状态巡检周期：只读静态状态，不做任何 Room 查询，保证停止能被 1 秒发现。 */
    private static final long STATUS_TICK_MS = 1000L;
    private static final long BROADCAST_INTERVAL_MS = 10000L;
    /** 进度重算周期：每次都要查 Room，放宽到 60 秒（小于接收端 20 秒新鲜期的两倍）。 */
    private static final long PROGRESS_READ_INTERVAL_MS = 60000L;
    private static final int STATUS_IDLE = 0;
    /** aicr 侧落盘的最后有效进度与明细，相册主进程缺席时由查询回放补回。 */
    private static final String SNAPSHOT_PREFS = "mengdao_aicr_progress_cache";
    private static final String SNAPSHOT_KEY_PROGRESS = "progress";
    private static final String SNAPSHOT_KEY_DETAIL = "detail";

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
    private static volatile int sCachedProgress = -1;
    private static volatile String sCachedDetail = "";
    private static volatile boolean sSnapshotLoaded;
    private static volatile int sSnapshotProgress = -1;
    private static volatile String sSnapshotDetail = "";
    private static volatile boolean sSnapshotReplayLogged;
    private static volatile long sLastProgressReadAt;
    private static volatile long sLastBroadcastAt;
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
                        Logs.status("aicr.reporter:不可用", "" + "RunningStatus not found, skip state reporting");
            return;
        }
        if (handler() == null) {
                        Logs.status("aicr.reporter:降级", "" + "progress thread unavailable, status-only mode");
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
            int previous = sStatus;
            int normalized = status > 0 ? status : STATUS_IDLE;
            sStatus = normalized;
            if (normalized != previous) {
                if (Logs.ENABLED) {
                    Logs.d("" + "aicr runningStatus=" + status);
                }
            }
            Handler handler = handler();
            if (normalized == STATUS_IDLE) {
                stopLoop();
                // 分析停止：退出大核模式并绑回 0-3
                AicrCpuAffinity.stopManual();
                RecentsLock.onRunStopped(context());
                if (handler != null) {
                    handler.post(IDLE_REPORT);
                } else {
                    // 后台线程不可用：只广播最后缓存值，绝不回主线程读 Room
                    report(STATUS_IDLE, sCachedProgress, sCachedDetail);
                    persistSnapshot(sCachedProgress, sCachedDetail);
                    clearCache();
                }
                return;
            }
            if (previous == STATUS_IDLE) {
                // 空闲 → 运行：只有手动启动走大核，其余分析走小核
                boolean cpuManual = AicrCpuAffinity.consumeManualStart();
                boolean recentsManual = RecentsLock.consumeManualRequested();
                if (cpuManual) {
                    AicrCpuAffinity.startManual();
                } else {
                    AicrCpuAffinity.bindSmall();
                }
                if (recentsManual) {
                    RecentsLock.onManualRunStarted(context());
                }
            }
            sLastProgressReadAt = 0L;
            sLastBroadcastAt = 0L;
            if (handler == null) {
                report(normalized, -1, "");
                return;
            }
            handler.post(IMMEDIATE_BROADCAST);
            startLoop(handler);
        } catch (Throwable t) {
                        Logs.status("AicrStateReporter:160", "" + "state report failed: " + t);
        }
    }

    /** 当前是否在分析；给保活服务判断能否停止。 */
    static boolean isRunningNow() {
        return sStatus > 0;
    }

    /** 相册主动查询：立即回报一次当前状态与进度（进度仍在后台线程读）。 */
    static void reportNow() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            Handler handler = handler();
            if (handler != null) {
                handler.post(QUERY_REPORT);
            } else {
                // 没有后台线程时绝不读进度：主线程读 Room 会抛异常并被 aicr 吞成 0
                report(sStatus, -1, "");
            }
            return;
        }
        QUERY_REPORT.run();
    }

    /** 状态字段变化（如绑核）后立即回报：复用缓存值，不读 Room、不改运行状态。 */
    static void reportCurrentNow() {
        try {
            report(sStatus, sCachedProgress, sCachedDetail);
            sLastBroadcastAt = SystemClock.elapsedRealtime();
        } catch (Throwable t) {
                        Logs.status("AicrStateReporter:190", "" + "immediate report failed: " + t);
        }
    }

    private static final Runnable QUERY_REPORT = new Runnable() {
        @Override
        public void run() {
            // sStatus 来自本进程的 setRunningStatus hook，是实时值；
            // 不能用 getRunningStatus()，它读 SharedPreferences，开机会带出上次运行的旧值。
            int status = sStatus;
            if (status == STATUS_IDLE) {
                stopLoop();
                // 回放落盘值：相册主进程当时不在场时，最后一轮明细只能靠这里补回。
                ensureSnapshotLoaded();
                int progress = sSnapshotProgress;
                String detail = sSnapshotDetail;
                clearCache();
                if (detail.length() > 0 && !sSnapshotReplayLogged) {
                    sSnapshotReplayLogged = true;
                    if (Logs.ENABLED) {
                        Logs.d("" + "aicr idle replay detail");
                    }
                }
                report(status, progress, detail);
                return;
            }
            Handler handler = sHandler;
            if (handler != null) {
                startLoop(handler);
            }
            refreshProgress(false);
            shortCircuitBroadcast(status);
        }
    };

    private static final Runnable IMMEDIATE_BROADCAST = new Runnable() {
        @Override
        public void run() {
            int status = sStatus;
            if (status == STATUS_IDLE) {
                return;
            }
            refreshProgress(true);
            shortCircuitBroadcast(status);
        }
    };

    /**
     * 分析结束：在后台线程强制刷新一次进度与明细，广播最后一轮结果后再清缓存，
     * 让设置页在空闲态仍能显示「已完成 / 待处理 / 失败」。
     */
    private static final Runnable IDLE_REPORT = new Runnable() {
        @Override
        public void run() {
            if (sStatus != STATUS_IDLE) {
                // 空闲期间又开始了新一轮：交给新一轮广播，避免旧值覆盖
                return;
            }
            try {
                refreshProgress(true);
                report(STATUS_IDLE, sCachedProgress, sCachedDetail);
            } catch (Throwable t) {
                                Logs.status("AicrStateReporter:250", "" + "idle report failed: " + t);
            } finally {
                persistSnapshot(sCachedProgress, sCachedDetail);
                clearCache();
            }
        }
    };

    /** 只在需要时重算进度（60 秒一次或状态切换），其余查询/心跳复用缓存。 */
    private static void refreshProgress(boolean force) {
        long now = SystemClock.elapsedRealtime();
        if (!force && sLastProgressReadAt > 0
                && now - sLastProgressReadAt < PROGRESS_READ_INTERVAL_MS) {
            return;
        }
        sCachedProgress = currentProgress();
        sCachedDetail = currentDetail();
        sLastProgressReadAt = now;
        persistSnapshot(sCachedProgress, sCachedDetail);
    }

    private static void shortCircuitBroadcast(int status) {
        report(status, sCachedProgress, sCachedDetail);
        sLastBroadcastAt = SystemClock.elapsedRealtime();
    }

    private static void clearCache() {
        sCachedProgress = -1;
        sCachedDetail = "";
    }

    /** 落盘最后有效的进度与明细；context 取不到或异常时静默跳过。 */
    private static synchronized void persistSnapshot(int progress, String detail) {
        try {
            Context context = context();
            if (context == null) {
                return;
            }
            boolean validDetail = detail != null && detail.length() > 0;
            if (progress <= 0 && !validDetail) {
                return;
            }
            SharedPreferences prefs = context.getSharedPreferences(
                    SNAPSHOT_PREFS, Context.MODE_PRIVATE);
            int storedProgress = prefs.getInt(SNAPSHOT_KEY_PROGRESS, -1);
            String storedDetail = prefs.getString(SNAPSHOT_KEY_DETAIL, "");
            if (storedDetail == null) {
                storedDetail = "";
            }
            sSnapshotProgress = progress > 0 ? progress : storedProgress;
            sSnapshotDetail = validDetail ? detail : storedDetail;
            sSnapshotLoaded = true;
            SharedPreferences.Editor editor = null;
            if (progress > 0 && progress != storedProgress) {
                editor = prefs.edit().putInt(SNAPSHOT_KEY_PROGRESS, progress);
            }
            if (validDetail && !detail.equals(storedDetail)) {
                if (editor == null) {
                    editor = prefs.edit();
                }
                editor.putString(SNAPSHOT_KEY_DETAIL, detail);
            }
            if (editor != null) {
                editor.apply();
            }
        } catch (Throwable ignored) {
            // 落盘失败不影响状态上报
        }
    }

    /** 惰性读回落盘值；同一进程只读一次，之后查询走内存。 */
    private static synchronized void ensureSnapshotLoaded() {
        if (sSnapshotLoaded) {
            return;
        }
        try {
            Context context = context();
            if (context == null) {
                return;
            }
            SharedPreferences prefs = context.getSharedPreferences(
                    SNAPSHOT_PREFS, Context.MODE_PRIVATE);
            sSnapshotProgress = prefs.getInt(SNAPSHOT_KEY_PROGRESS, -1);
            String detail = prefs.getString(SNAPSHOT_KEY_DETAIL, "");
            sSnapshotDetail = detail == null ? "" : detail;
            sSnapshotLoaded = true;
        } catch (Throwable ignored) {
            // 读盘失败按无缓存处理
        }
    }

    private static void startLoop(Handler handler) {
        if (sLooping) {
            return;
        }
        sLooping = true;
        handler.postDelayed(LOOP, STATUS_TICK_MS);
    }

    private static void stopLoop() {
        sLooping = false;
        Handler handler = sHandler;
        if (handler != null) {
            handler.removeCallbacks(LOOP);
        }
    }

    /**
     * 每 1 秒只看静态状态（停止不被拖慢）；进度每 60 秒重算一次，
     * 广播仍每 10 秒一次但复用缓存值，保证接收端 20 秒新鲜度。
     */
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
                if (now - sLastProgressReadAt >= PROGRESS_READ_INTERVAL_MS) {
                    refreshProgress(true);
                }
                if (now - sLastBroadcastAt >= BROADCAST_INTERVAL_MS) {
                    report(status, sCachedProgress, sCachedDetail);
                    sLastBroadcastAt = now;
                }
            } catch (Throwable t) {
                                Logs.status("AicrStateReporter:382", "" + "progress report failed: " + t);
            }
            Handler handler = sHandler;
            if (sLooping && handler != null) {
                handler.postDelayed(this, STATUS_TICK_MS);
            }
        }
    };

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
                        Logs.status("AicrStateReporter:403", "" + "progress thread start failed: " + t);
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
            intent.putExtra(AicrProtocol.EXTRA_BIG_BOUND,
                    AicrCpuAffinity.isManualBound() ? 1 : 0);
            intent.putExtra(RecentsLock.EXTRA_WHITELIST_FAILED,
                    RecentsLock.whitelistFailed() ? 1 : 0);
            context.sendBroadcast(intent);
        } catch (Throwable t) {
                        Logs.status("AicrStateReporter:430", "" + "state broadcast failed: " + t);
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
                                Logs.status("AicrStateReporter:470", "" + "progress lookup failed: " + t);
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
                    if (Logs.ENABLED) {
                        Logs.d("" + "detail all stages excluded, fallback to legacy counts");
                    }
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
                if (Logs.ENABLED) {
                    Logs.d("" + "detail counts overflow completed=" + rawCompleted
                        + " failed=" + rawFailed + " total=" + total + " stage=" + doneStage);
                }
            }
            int completed = Math.min(Math.max(0, rawCompleted), total);
            int failed = Math.min(Math.max(0, rawFailed), total - completed);
            int pending = Math.max(0, total - completed - failed);

            logDetailTiming(SystemClock.elapsedRealtime() - startedAt);
            return completed + "|" + total + "|" + doneStage + "|" + pending + "|" + failed;
        } catch (Throwable t) {
            if (!sDetailFailureLogged) {
                sDetailFailureLogged = true;
                                Logs.status("AicrStateReporter:648", "" + "detail lookup failed: " + t);
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
        if (sExcludedStagesLogged.add(stage) && AicrHooks.isDiagBuild()) {
            if (Logs.ENABLED) {
                Logs.d("" + "detail stage " + stage + " excluded (failed="
                    + failed + " total=" + total + ")");
            }
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
                if (Logs.ENABLED) {
                    Logs.d("" + "detail query slow " + elapsedMs
                        + "ms, fallback to legacy detail");
                }
            }
        } else if (!sDetailTimingLogged && AicrHooks.isDiagBuild()) {
            sDetailTimingLogged = true;
            if (Logs.ENABLED) {
                Logs.d("" + "detail query took " + elapsedMs + "ms");
            }
        }
    }

    private static void logClipMismatch(int picAll, int vidAll, int picFailed, int vidFailed) {
        if (sClipMismatchLogged) {
            return;
        }
        sClipMismatchLogged = true;
        if (Logs.ENABLED) {
            Logs.d("" + "clip count mismatch all=" + picAll + "/" + vidAll
                + " failed=" + picFailed + "/" + vidFailed
                + " (failed query lacks store_state filter)");
        }
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
