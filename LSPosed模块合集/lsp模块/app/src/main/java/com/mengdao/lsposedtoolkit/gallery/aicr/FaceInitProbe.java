package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.content.ContentResolver;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Process;

import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 仅诊断：人脸初始化链路预检 + 分析链路计数。
 *
 * 本包不改变任何行为：{@link #ENABLE_FACE_KEY_ALIAS}=false 时只记录、不替换返回值、
 * 不写数据库。目标是在真机跑一轮后回答：
 *   1) 就绪键 face / face_config 各自是什么值；
 *   2) checkInit 通过与否，卡在 isModelReady / loadModelSo / initCluster 哪一步；
 *   3) traversalPic / calculate / batchPic 是否真被调用，扫到的人脸状态分布如何；
 *   4) analyticImage 是否被调用、是否全部返回 null；
 *   5) analyticCluster 是否触发、写回 SUB_DATA provider 的成功/失败分布与失败原因。
 *
 * 一次性 FACEINIT 行记录初始化状态；之后每进程每 60 秒最多一行 FACEINIT tick，
 * 输出上一个窗口的计数。每个 hook 独立 try/catch，任何失败只记
 * “faceInit hook failed: <name>”，不影响 aicr 自身逻辑。
 *
 * 观察什么：人脸初始化就绪键、checkInit 卡点、traversalPic/calculate/batchPic
 * 调用次数、batchPic 的 faceState 分布、analyticCluster 与写回结果。
 * 日志行：{@code GalleryAnalyze: FACEINIT pid=... ck=... readyFace=...}、
 * {@code GalleryAnalyze: FACEINIT tick pid=... traversal=... calcN=... scan={...} ...}，
 * 以及 hook 缺失时的 {@code faceInit hook failed: <name>}。
 * 何时打开：排查人脸模型未就绪、分析不启动或写回全失败时。
 * 怎么打开：把 {@link #ENABLED} 改为 true 重新编译；默认关闭。
 */
final class FaceInitProbe {

    private static final String TAG = "GalleryAnalyze";

    /** 诊断总开关；false 时不安装任何 hook，install() 只打一行 disabled。 */
    static final boolean ENABLED = false;

    private static final String MODEL_DOWNLOADER_CLASS =
            "com.xiaomi.aicr.common.download.ModelDownloader";
    private static final String MODEL_COMPANION_CLASS =
            "com.xiaomi.aicr.common.download.ModelDownloader$Companion";
    private static final String FACE_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.FaceManager";
    private static final String FACE_CLUSTER_CLASS =
            "com.xiaomi.facecluster.FaceCluster";
    private static final String LOAD_SO_UTILS_CLASS =
            "com.xiaomi.aicr.common.LoadSoUtils";
    private static final String GALLERY_OPERATION_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.GalleryOperation";
    private static final String GALLERY_MIGRATE_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.GalleryMigrate";
    private static final String MANAGER_DAO_IMPL_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.dao.ManagerDao_Impl";

    /**
     * 本包只做预检：保持 false。下一步确认模型在位后再打开键名兼容。
     */
    static final boolean ENABLE_FACE_KEY_ALIAS = false;

    /** 诊断总开关；关闭后 describe() 返回 off。 */
    static final boolean FACE_DIAG_ONLY = true;

    private static final int UNKNOWN = -1;
    private static final long TICK_INTERVAL_MS = 60000L;

    private static volatile boolean sInstalled;
    private static volatile boolean sModelReadyHooked;
    private static volatile boolean sCheckInitHooked;
    private static volatile boolean sAnalyticImageHooked;
    private static volatile boolean sInitClusterHooked;
    private static volatile boolean sLoadSoHooked;
    private static volatile boolean sTraversalHooked;
    private static volatile boolean sCalculateHooked;
    private static volatile boolean sBatchPicHooked;
    private static volatile boolean sClusterHooked;
    private static volatile boolean sWriteBackHooked;

    private static volatile int sCheckInitResult = UNKNOWN;   // -1 未知 / 0 false / 1 true
    private static volatile int sReadyFace = UNKNOWN;
    private static volatile int sReadyFaceConfig = UNKNOWN;
    private static volatile int sModelPathLen = UNKNOWN;
    private static volatile int sLoadSoFace = UNKNOWN;
    private static volatile int sInitClusterRet = Integer.MIN_VALUE;
    private static volatile int sAnalyticImageCalls;
    private static volatile int sAnalyticImageNulls;

    private static final AtomicBoolean PROBE_RAN = new AtomicBoolean(false);
    private static final AtomicBoolean SUMMARY_LOGGED = new AtomicBoolean(false);

    private static final Set<String> FAIL_LOGGED_NAMES =
            Collections.newSetFromMap(new ConcurrentHashMap<String, Boolean>());

    /** 所有窗口计数共用一把锁；hook 内只做极短更新。 */
    private static final Object STATS_LOCK = new Object();

    /** 只要分析链路任意一环被调用过，就启动 tick 输出。 */
    private static volatile boolean sPipelineActive;

    // ---------------------------------------------------- 上 60 秒窗口计数
    private static int wTraversal;
    private static int wCalcCalls;
    private static int wCalcRows = -1;
    private static int wFaceNeg1;
    private static int wFace0;
    private static int wFace1;
    private static int wFace10;
    private static int wFaceOther;
    private static int wWouldFace;
    private static int wBatchRows;
    private static int wBatchBad;
    private static int wUriMin = Integer.MAX_VALUE;
    private static int wUriMax = Integer.MIN_VALUE;
    private static int wImgCalls;
    private static int wImgNulls;
    private static int wClusterCalls;
    private static int wClusterLastPaths = -1;
    private static int wWbCalls;
    private static int wWbOk;
    private static int wWbFail;
    private static int wWbEmpty;
    private static String sLastWbReason;
    private static String sLastWbPaths;

    // ---------------------------------------------------- 最近一次状态快照
    private static int sLastMigrated = UNKNOWN;              // -1 未知 / 0 否 / 1 是
    private static long sLastPictureCount = Long.MIN_VALUE;
    private static int sLastIsVector = UNKNOWN;

    // ---------------------------------------------------- 实体字段缓存
    private static volatile Field sFaceStateField;
    private static volatile Field sUriIdField;

    private static ClassLoader sClassLoader;
    private static volatile Object sModelCompanion;

    private FaceInitProbe() {
    }

    static void install(ClassLoader classLoader) {
        if (!ENABLED) {
            XposedBridge.log(TAG + ": FaceInitProbe disabled");
            return;
        }
        if (sInstalled) {
            return;
        }
        sInstalled = true;
        sClassLoader = classLoader;

        try {
            if (!hookModelReady(classLoader)) {
                logHookFailure("isModelReady");
            }
        } catch (Throwable t) {
            logHookFailure("isModelReady");
        }
        try {
            if (!hookCheckInit(classLoader)) {
                logHookFailure("checkInit");
            }
        } catch (Throwable t) {
            logHookFailure("checkInit");
        }
        try {
            if (!hookAnalyticImage(classLoader)) {
                logHookFailure("analyticImage");
            }
        } catch (Throwable t) {
            logHookFailure("analyticImage");
        }
        try {
            if (!hookInitCluster(classLoader)) {
                logHookFailure("initCluster");
            }
        } catch (Throwable t) {
            logHookFailure("initCluster");
        }
        try {
            if (!hookLoadModelSo(classLoader)) {
                logHookFailure("loadModelSo");
            }
        } catch (Throwable t) {
            logHookFailure("loadModelSo");
        }
        try {
            if (!hookTraversalPic(classLoader)) {
                logHookFailure("traversalPic");
            }
        } catch (Throwable t) {
            logHookFailure("traversalPic");
        }
        try {
            if (!hookCalculate(classLoader)) {
                logHookFailure("calculate");
            }
        } catch (Throwable t) {
            logHookFailure("calculate");
        }
        try {
            if (!hookBatchPic(classLoader)) {
                logHookFailure("batchPic");
            }
        } catch (Throwable t) {
            logHookFailure("batchPic");
        }
        try {
            if (!hookAnalyticCluster(classLoader)) {
                logHookFailure("analyticCluster");
            }
        } catch (Throwable t) {
            logHookFailure("analyticCluster");
        }
        try {
            if (!hookFaceWriteBack()) {
                logHookFailure("method_face_write_back");
            }
        } catch (Throwable t) {
            logHookFailure("method_face_write_back");
        }

        startTickThread();

        XposedBridge.log(TAG + ": FACEINIT install pid=" + Process.myPid()
                + " hooked=" + hookedCount() + "/10"
                + " alias=" + (ENABLE_FACE_KEY_ALIAS ? "on" : "off")
                + " diagOnly=" + FACE_DIAG_ONLY);
    }

    /**
     * 供 StageWriteProbe.describe() 拼接。任何异常都不能影响 DIAG 行。
     */
    static String describe() {
        try {
            if (!FACE_DIAG_ONLY) {
                return "off";
            }
            return "ck:" + tri(sCheckInitResult)
                    + " readyFace:" + tri(sReadyFace)
                    + " readyFaceCfg:" + tri(sReadyFaceConfig)
                    + " pathLen:" + (sModelPathLen < 0 ? "?" : String.valueOf(sModelPathLen))
                    + " loadSo:" + tri(sLoadSoFace)
                    + " initRet:" + (sInitClusterRet == Integer.MIN_VALUE ? "?" : String.valueOf(sInitClusterRet))
                    + " img:" + sAnalyticImageCalls + "/null:" + sAnalyticImageNulls
                    + " alias:" + (ENABLE_FACE_KEY_ALIAS ? "on" : "off");
        } catch (Throwable t) {
            return "err";
        }
    }

    // ---------------------------------------------------------------- hooks

    private static boolean hookModelReady(ClassLoader classLoader) {
        Class<?> companionCls = XposedHelpers.findClassIfExists(MODEL_COMPANION_CLASS, classLoader);
        if (companionCls == null) {
            return false;
        }
        cacheCompanion(classLoader);
        XposedBridge.hookAllMethods(companionCls, "isModelReady", new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                try {
                    if (param.args.length != 1 || !(param.args[0] instanceof String)) {
                        return;
                    }
                    String key = (String) param.args[0];
                    Boolean ready = param.getResult() instanceof Boolean
                            ? (Boolean) param.getResult() : null;
                    if (ready == null) {
                        return;
                    }
                    if ("face".equals(key)) {
                        sReadyFace = ready ? 1 : 0;
                    } else if ("face_config".equals(key)) {
                        sReadyFaceConfig = ready ? 1 : 0;
                    } else {
                        return;
                    }
                    // 仅预检：默认不替换任何返回值。打开 alias 后，才把
                    // face_config=false 且 face=true 的情况视为已就绪。
                    if (ENABLE_FACE_KEY_ALIAS && "face_config".equals(key) && !ready) {
                        Boolean alias = queryReady("face");
                        if (Boolean.TRUE.equals(alias)) {
                            param.setResult(Boolean.TRUE);
                        }
                    }
                } catch (Throwable ignored) {
                    // 诊断 hook 不允许影响原方法
                }
            }
        });
        sModelReadyHooked = true;
        return true;
    }

    private static boolean hookCheckInit(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "checkInit", new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                try {
                    Boolean result = param.getResult() instanceof Boolean
                            ? (Boolean) param.getResult() : null;
                    sCheckInitResult = result == null ? UNKNOWN : (result ? 1 : 0);
                    runProbeOnce();
                    maybeLogSummary();
                } catch (Throwable ignored) {
                }
            }
        });
        sCheckInitHooked = true;
        return true;
    }

    private static boolean hookAnalyticImage(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "analyticImage", Bitmap.class, String.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            boolean isNull = param.getResult() == null;
                            synchronized (STATS_LOCK) {
                                sAnalyticImageCalls++;
                                if (isNull) {
                                    sAnalyticImageNulls++;
                                }
                                wImgCalls++;
                                if (isNull) {
                                    wImgNulls++;
                                }
                            }
                            sPipelineActive = true;
                            runProbeOnce();
                            maybeLogSummary();
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sAnalyticImageHooked = true;
        return true;
    }

    private static boolean hookInitCluster(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_CLUSTER_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedBridge.hookAllMethods(cls, "initCluster", new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                try {
                    if (param.getResult() instanceof Integer) {
                        sInitClusterRet = (Integer) param.getResult();
                    }
                } catch (Throwable ignored) {
                }
            }
        });
        sInitClusterHooked = true;
        return true;
    }

    private static boolean hookLoadModelSo(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(LOAD_SO_UTILS_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedBridge.hookAllMethods(cls, "loadModelSo", new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                try {
                    if (param.args.length != 1 || !(param.args[0] instanceof String)) {
                        return;
                    }
                    String name = (String) param.args[0];
                    if (name != null && name.toLowerCase().contains("face")) {
                        sLoadSoFace = param.getResult() instanceof Boolean
                                && (Boolean) param.getResult() ? 1 : 0;
                    }
                } catch (Throwable ignored) {
                }
            }
        });
        sLoadSoHooked = true;
        return true;
    }

    /** 统计 traversalPic 进入次数，并记录 migrated / pictureCount / isVector 当前值。 */
    private static boolean hookTraversalPic(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(GALLERY_OPERATION_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "traversalPic", boolean.class, String.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        try {
                            boolean isVector = param.args.length > 0
                                    && Boolean.TRUE.equals(param.args[0]);
                            int migrated = readMigrated();
                            long pictureCount = readPictureCount();
                            synchronized (STATS_LOCK) {
                                wTraversal++;
                                sLastIsVector = isVector ? 1 : 0;
                                sLastMigrated = migrated;
                                sLastPictureCount = pictureCount;
                            }
                            sPipelineActive = true;
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sTraversalHooked = true;
        return true;
    }

    /** 记录 calculate(String,int) 返回的候选 uriId 列表大小。 */
    private static boolean hookCalculate(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(MANAGER_DAO_IMPL_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "calculate", String.class, int.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            Object result = param.getResult();
                            int rows = result instanceof List ? ((List<?>) result).size() : -1;
                            synchronized (STATS_LOCK) {
                                wCalcCalls++;
                                if (rows >= 0) {
                                    wCalcRows = rows;
                                }
                            }
                            sPipelineActive = true;
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sCalculateHooked = true;
        return true;
    }

    /** 统计本轮 batchPic 实体的 faceState 分布、uriId 范围与 wouldFace。 */
    private static boolean hookBatchPic(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(GALLERY_OPERATION_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "batchPic",
                List.class, java.util.ArrayList.class, java.util.ArrayList.class,
                java.util.ArrayList.class, java.util.ArrayList.class, List.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        try {
                            collectBatch(param.args.length > 0 ? param.args[0] : null);
                            sPipelineActive = true;
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sBatchPicHooked = true;
        return true;
    }

    /** 统计 analyticCluster 本窗口调用次数与传入路径列表大小。 */
    private static boolean hookAnalyticCluster(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return false;
        }
        XposedHelpers.findAndHookMethod(cls, "analyticCluster", java.util.ArrayList.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        try {
                            int paths = -1;
                            if (param.args.length > 0 && param.args[0] instanceof List) {
                                paths = ((List<?>) param.args[0]).size();
                            }
                            synchronized (STATS_LOCK) {
                                wClusterCalls++;
                                if (paths >= 0) {
                                    wClusterLastPaths = paths;
                                }
                            }
                            sPipelineActive = true;
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sClusterHooked = true;
        return true;
    }

    /**
     * 统计 FaceManager 调 SUB_DATA provider 的 method_face_write_back 结果。
     * 在调用方进程 hook ContentResolver.call，读取返回 Bundle 中的成功/失败路径。
     */
    private static boolean hookFaceWriteBack() {
        XposedHelpers.findAndHookMethod(ContentResolver.class, "call",
                android.net.Uri.class, String.class, String.class, Bundle.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            if (param.args.length < 2 || !(param.args[1] instanceof String)
                                    || !"method_face_write_back".equals(param.args[1])) {
                                return;
                            }
                            int ok = 0;
                            int fail = 0;
                            int empty = 0;
                            String reason = null;
                            String pathsSample = null;
                            int requestPaths = 0;
                            java.util.ArrayList<String> requestList = null;
                            try {
                                if (param.args.length > 3 && param.args[3] instanceof Bundle) {
                                    requestList = ((Bundle) param.args[3])
                                            .getStringArrayList("paths");
                                    requestPaths = requestList == null ? 0 : requestList.size();
                                }
                            } catch (Throwable ignored) {
                            }
                            Object result = param.getResult();
                            if (param.hasThrowable() || !(result instanceof Bundle)) {
                                empty = 1;
                            } else {
                                Bundle bundle = (Bundle) result;
                                try {
                                    reason = bundle.getString("write_fail_reason");
                                } catch (Throwable ignored) {
                                }
                                try {
                                    java.util.ArrayList<String> success =
                                            bundle.getStringArrayList("write_success_path_list");
                                    java.util.ArrayList<String> invalid =
                                            bundle.getStringArrayList("invalid_paths");
                                    String flag = null;
                                    try {
                                        flag = bundle.getString("write_face_result");
                                    } catch (Throwable ignored) {
                                    }
                                    if (success != null && !success.isEmpty()) {
                                        ok = success.size();
                                        if (invalid != null) {
                                            fail = invalid.size();
                                        }
                                    } else if ("success".equals(flag)) {
                                        ok = requestPaths;
                                    } else if (invalid != null && !invalid.isEmpty()) {
                                        fail = invalid.size();
                                        ok = Math.max(0, requestPaths - fail);
                                    } else {
                                        empty = 1;
                                    }
                                    pathsSample = buildPathSample(
                                            invalid != null && !invalid.isEmpty()
                                                    ? invalid : requestList);
                                } catch (Throwable t) {
                                    empty = 1;
                                }
                            }
                            synchronized (STATS_LOCK) {
                                wWbCalls++;
                                wWbOk += ok;
                                wWbFail += fail;
                                wWbEmpty += empty;
                                sLastWbReason = truncate(reason, 60);
                                sLastWbPaths = pathsSample;
                            }
                            sPipelineActive = true;
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sWriteBackHooked = true;
        return true;
    }

    // ------------------------------------------------------------- one-shot

    /**
     * 第一次进入 checkInit / analyticImage 时做一次只读探测，补齐“从未被查询过”的值。
     * 用 AtomicBoolean 保证每个进程只跑一次，且不再触发日志。
     */
    private static void runProbeOnce() {
        if (!PROBE_RAN.compareAndSet(false, true)) {
            return;
        }
        try {
            Boolean readyFace = queryReady("face");
            if (readyFace != null) {
                sReadyFace = readyFace ? 1 : 0;
            }
            Boolean readyFaceConfig = queryReady("face_config");
            if (readyFaceConfig != null) {
                sReadyFaceConfig = readyFaceConfig ? 1 : 0;
            }
            try {
                Class<?> lsu = XposedHelpers.findClassIfExists(LOAD_SO_UTILS_CLASS, sClassLoader);
                if (lsu != null) {
                    Object path = XposedHelpers.callStaticMethod(lsu, "getModelPath", "face", true);
                    sModelPathLen = path instanceof String ? ((String) path).length() : 0;
                }
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
    }

    private static Boolean queryReady(String key) {
        try {
            Object companion = sModelCompanion;
            if (companion == null) {
                companion = cacheCompanion(sClassLoader);
            }
            if (companion == null) {
                return null;
            }
            Object result = XposedHelpers.callMethod(companion, "isModelReady", key);
            return result instanceof Boolean ? (Boolean) result : null;
        } catch (Throwable t) {
            return null;
        }
    }

    private static Object cacheCompanion(ClassLoader classLoader) {
        try {
            Class<?> md = XposedHelpers.findClassIfExists(MODEL_DOWNLOADER_CLASS, classLoader);
            if (md == null) {
                return null;
            }
            Object companion = XposedHelpers.getStaticObjectField(md, "Companion");
            sModelCompanion = companion;
            return companion;
        } catch (Throwable t) {
            return null;
        }
    }

    private static void maybeLogSummary() {
        if (!PROBE_RAN.get() || !SUMMARY_LOGGED.compareAndSet(false, true)) {
            return;
        }
        try {
            XposedBridge.log(TAG + ": FACEINIT pid=" + Process.myPid()
                    + " ck=" + tri(sCheckInitResult)
                    + " readyFace=" + tri(sReadyFace)
                    + " readyFaceCfg=" + tri(sReadyFaceConfig)
                    + " pathLen=" + (sModelPathLen < 0 ? "?" : String.valueOf(sModelPathLen))
                    + " loadSo=" + tri(sLoadSoFace)
                    + " initRet=" + (sInitClusterRet == Integer.MIN_VALUE ? "?" : String.valueOf(sInitClusterRet))
                    + " img=" + sAnalyticImageCalls + "/null:" + sAnalyticImageNulls
                    + " alias=" + (ENABLE_FACE_KEY_ALIAS ? "on" : "off"));
        } catch (Throwable ignored) {
        }
    }

    // -------------------------------------------------------------- periodic

    private static void startTickThread() {
        try {
            Thread thread = new Thread(new Runnable() {
                @Override
                public void run() {
                    while (true) {
                        try {
                            Thread.sleep(TICK_INTERVAL_MS);
                        } catch (InterruptedException e) {
                            return;
                        }
                        try {
                            if (sPipelineActive) {
                                logTick();
                            }
                        } catch (Throwable ignored) {
                            // 诊断输出失败不得影响 aicr
                        }
                    }
                }
            }, "FaceInitProbe-tick");
            thread.setDaemon(true);
            thread.start();
        } catch (Throwable ignored) {
        }
    }

    /** 输出上一个窗口的计数，并把窗口清零；每进程每 60 秒最多一行。 */
    private static void logTick() {
        int traversal;
        int calcCalls;
        int calcRows;
        int faceNeg1;
        int face0;
        int face1;
        int face10;
        int faceOther;
        int wouldFace;
        int batchRows;
        int batchBad;
        int uriMin;
        int uriMax;
        int imgCalls;
        int imgNulls;
        int clusterCalls;
        int clusterLastPaths;
        int wbCalls;
        int wbOk;
        int wbFail;
        int wbEmpty;
        String wbReason;
        String wbPaths;
        int migrated;
        int isVector;
        long pictureCount;

        synchronized (STATS_LOCK) {
            traversal = wTraversal;
            calcCalls = wCalcCalls;
            calcRows = wCalcRows;
            faceNeg1 = wFaceNeg1;
            face0 = wFace0;
            face1 = wFace1;
            face10 = wFace10;
            faceOther = wFaceOther;
            wouldFace = wWouldFace;
            batchRows = wBatchRows;
            batchBad = wBatchBad;
            uriMin = wUriMin;
            uriMax = wUriMax;
            imgCalls = wImgCalls;
            imgNulls = wImgNulls;
            clusterCalls = wClusterCalls;
            clusterLastPaths = wClusterLastPaths;
            wbCalls = wWbCalls;
            wbOk = wWbOk;
            wbFail = wWbFail;
            wbEmpty = wWbEmpty;
            wbReason = sLastWbReason;
            wbPaths = sLastWbPaths;
            migrated = sLastMigrated;
            isVector = sLastIsVector;
            pictureCount = sLastPictureCount;

            wTraversal = 0;
            wCalcCalls = 0;
            wCalcRows = -1;
            wFaceNeg1 = 0;
            wFace0 = 0;
            wFace1 = 0;
            wFace10 = 0;
            wFaceOther = 0;
            wWouldFace = 0;
            wBatchRows = 0;
            wBatchBad = 0;
            wUriMin = Integer.MAX_VALUE;
            wUriMax = Integer.MIN_VALUE;
            wImgCalls = 0;
            wImgNulls = 0;
            wClusterCalls = 0;
            wClusterLastPaths = -1;
            wWbCalls = 0;
            wWbOk = 0;
            wWbFail = 0;
            wWbEmpty = 0;
        }

        String idRange = uriMin == Integer.MAX_VALUE
                ? "?..?" : uriMin + ".." + uriMax;
        StringBuilder sb = new StringBuilder(256);
        sb.append(TAG).append(": FACEINIT tick pid=").append(Process.myPid())
                .append(" traversal=").append(traversal)
                .append(" calcN=").append(calcCalls)
                .append(" calcRows=").append(calcCalls == 0 ? "-" : String.valueOf(calcRows))
                .append(" migrated=").append(flag(migrated))
                .append(" picCnt=").append(pictureCount == Long.MIN_VALUE
                        ? "?" : String.valueOf(pictureCount))
                .append(" vec=").append(flag(isVector))
                .append(" scan={f-1:").append(faceNeg1)
                .append(",f0:").append(face0)
                .append(",f1:").append(face1)
                .append(",f10:").append(face10);
        if (faceOther > 0) {
            sb.append(",o:").append(faceOther);
        }
        sb.append("} id[").append(idRange).append("]")
                .append(" wouldFace=").append(wouldFace)
                .append(" rows=").append(batchRows)
                .append(" bad=").append(batchBad)
                .append(" img=").append(imgCalls).append("/null:").append(imgNulls);
        if (clusterCalls == 0) {
            sb.append(" cluster=0");
        } else {
            sb.append(" cluster=").append(clusterCalls)
                    .append("/lastPaths=")
                    .append(clusterLastPaths < 0 ? "?" : String.valueOf(clusterLastPaths));
        }
        if (wbCalls == 0) {
            sb.append(" wb=-");
        } else {
            sb.append(" wb=ok:").append(wbOk)
                    .append("/fail:").append(wbFail)
                    .append("/empty:").append(wbEmpty);
        }
        sb.append(" reason=")
                .append(wbReason == null || wbReason.isEmpty() ? "-" : wbReason)
                .append(" paths=")
                .append(wbPaths == null || wbPaths.isEmpty() ? "-" : "[" + wbPaths + "]");
        sb.append(" alias=").append(ENABLE_FACE_KEY_ALIAS ? "on" : "off");

        XposedBridge.log(sb.toString());
    }

    // --------------------------------------------------------- batch sampling

    private static void collectBatch(Object listObj) {
        if (!(listObj instanceof List)) {
            return;
        }
        List<?> list = (List<?>) listObj;
        int size = list.size();
        int faceNeg1 = 0;
        int face0 = 0;
        int face1 = 0;
        int face10 = 0;
        int faceOther = 0;
        int wouldFace = 0;
        int bad = 0;
        int uriMin = Integer.MAX_VALUE;
        int uriMax = Integer.MIN_VALUE;

        for (int i = 0; i < size; i++) {
            Object entity = list.get(i);
            if (entity == null) {
                bad++;
                continue;
            }
            Field faceField = findCachedField(entity, true);
            Field uriField = findCachedField(entity, false);
            if (faceField == null || uriField == null) {
                bad++;
                continue;
            }
            try {
                int faceState = faceField.getInt(entity);
                int uriId = uriField.getInt(entity);
                if (faceState == -1) {
                    faceNeg1++;
                } else if (faceState == 0) {
                    face0++;
                } else if (faceState == 1) {
                    face1++;
                } else if (faceState == 10) {
                    face10++;
                } else {
                    faceOther++;
                }
                if (faceState == 0 || faceState == -1) {
                    wouldFace++;
                }
                if (uriId < uriMin) {
                    uriMin = uriId;
                }
                if (uriId > uriMax) {
                    uriMax = uriId;
                }
            } catch (Throwable t) {
                bad++;
            }
        }

        synchronized (STATS_LOCK) {
            wBatchRows += size;
            wFaceNeg1 += faceNeg1;
            wFace0 += face0;
            wFace1 += face1;
            wFace10 += face10;
            wFaceOther += faceOther;
            wWouldFace += wouldFace;
            wBatchBad += bad;
            if (uriMin != Integer.MAX_VALUE) {
                if (uriMin < wUriMin) {
                    wUriMin = uriMin;
                }
                if (uriMax > wUriMax) {
                    wUriMax = uriMax;
                }
            }
        }
    }

    private static Field findCachedField(Object entity, boolean faceState) {
        Field cached = faceState ? sFaceStateField : sUriIdField;
        if (cached != null && cached.getDeclaringClass().isAssignableFrom(entity.getClass())) {
            return cached;
        }
        Field found = findField(entity.getClass(), faceState ? "faceState" : "uriId");
        if (found != null) {
            if (faceState) {
                sFaceStateField = found;
            } else {
                sUriIdField = found;
            }
        }
        return found;
    }

    private static Field findField(Class<?> cls, String name) {
        for (Class<?> c = cls; c != null; c = c.getSuperclass()) {
            try {
                Field field = c.getDeclaredField(name);
                field.setAccessible(true);
                return field;
            } catch (NoSuchFieldException ignored) {
                // 继续查父类
            } catch (Throwable ignored) {
                return null;
            }
        }
        return null;
    }

    // --------------------------------------------------------- migrate state

    private static int readMigrated() {
        try {
            Class<?> cls = XposedHelpers.findClassIfExists(GALLERY_MIGRATE_CLASS, sClassLoader);
            if (cls == null) {
                return UNKNOWN;
            }
            Object value = XposedHelpers.callStaticMethod(cls, "isMigrated");
            return value instanceof Boolean ? ((Boolean) value ? 1 : 0) : UNKNOWN;
        } catch (Throwable t) {
            return UNKNOWN;
        }
    }

    private static long readPictureCount() {
        try {
            Class<?> cls = XposedHelpers.findClassIfExists(GALLERY_MIGRATE_CLASS, sClassLoader);
            if (cls == null) {
                return Long.MIN_VALUE;
            }
            Object instance = XposedHelpers.getStaticObjectField(cls, "INSTANCE");
            Object value = XposedHelpers.callMethod(instance, "getPictureCount");
            return value instanceof Integer ? ((Integer) value).longValue() : Long.MIN_VALUE;
        } catch (Throwable t) {
            return Long.MIN_VALUE;
        }
    }

    // ---------------------------------------------------------------- utils

    private static String tri(int value) {
        if (value == 1) {
            return "true";
        }
        if (value == 0) {
            return "false";
        }
        return "?";
    }

    private static String flag(int value) {
        if (value == 1) {
            return "on";
        }
        if (value == 0) {
            return "off";
        }
        return "?";
    }

    /** 取前 2 条路径，每条截断到 80 字符；换行替换为空格。 */
    private static String buildPathSample(List<?> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        int count = Math.min(2, list.size());
        for (int i = 0; i < count; i++) {
            if (i > 0) {
                sb.append(" | ");
            }
            Object item = list.get(i);
            String path = item == null ? "null" : String.valueOf(item);
            path = path.replace('\n', ' ').replace('\r', ' ');
            sb.append(path.length() > 80 ? path.substring(0, 80) : path);
        }
        return sb.toString();
    }

    private static String truncate(String value, int max) {
        if (value == null || value.isEmpty()) {
            return null;
        }
        return value.length() > max ? value.substring(0, max) : value;
    }

    private static String hookedCount() {
        int count = 0;
        if (sModelReadyHooked) count++;
        if (sCheckInitHooked) count++;
        if (sAnalyticImageHooked) count++;
        if (sInitClusterHooked) count++;
        if (sLoadSoHooked) count++;
        if (sTraversalHooked) count++;
        if (sCalculateHooked) count++;
        if (sBatchPicHooked) count++;
        if (sClusterHooked) count++;
        if (sWriteBackHooked) count++;
        return String.valueOf(count);
    }

    private static void logHookFailure(String name) {
        try {
            if (FAIL_LOGGED_NAMES.add(name)) {
                XposedBridge.log(TAG + ": faceInit hook failed: " + name);
            }
        } catch (Throwable ignored) {
        }
    }
}
