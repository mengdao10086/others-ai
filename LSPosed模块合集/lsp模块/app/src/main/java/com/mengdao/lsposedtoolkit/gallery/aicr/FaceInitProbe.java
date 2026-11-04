package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.graphics.Bitmap;
import android.os.Process;

import java.util.concurrent.atomic.AtomicBoolean;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 仅诊断：人脸初始化链路预检（方案 A 的步骤 1）。
 *
 * 本包不改变任何行为：{@link #ENABLE_FACE_KEY_ALIAS}=false 时只记录、不替换返回值、
 * 不写数据库。目标是在真机跑一轮后回答三个问题：
 *   1) 就绪键 face / face_config 各自是什么值；
 *   2) checkInit 通过与否，卡在 isModelReady / loadModelSo / initCluster 哪一步；
 *   3) analyticImage 是否被调用、是否全部返回 null。
 *
 * 每个类/方法独立 try/catch；每个进程只打一次汇总日志；DIAG 行每 30 秒带当前值。
 */
final class FaceInitProbe {

    private static final String TAG = "GalleryAnalyze";

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

    /**
     * 本包只做预检：保持 false。下一步确认模型在位后再打开键名兼容。
     */
    static final boolean ENABLE_FACE_KEY_ALIAS = false;

    /** 诊断总开关；关闭后 describe() 返回 off。 */
    static final boolean FACE_DIAG_ONLY = true;

    private static final int UNKNOWN = -1;

    private static volatile boolean sInstalled;
    private static volatile boolean sModelReadyHooked;
    private static volatile boolean sCheckInitHooked;
    private static volatile boolean sAnalyticImageHooked;
    private static volatile boolean sInitClusterHooked;
    private static volatile boolean sLoadSoHooked;

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
    private static final AtomicBoolean FAIL_LOGGED = new AtomicBoolean(false);

    private static ClassLoader sClassLoader;
    private static volatile Object sModelCompanion;

    private FaceInitProbe() {
    }

    static void install(ClassLoader classLoader) {
        if (sInstalled) {
            return;
        }
        sInstalled = true;
        sClassLoader = classLoader;

        try {
            hookModelReady(classLoader);
        } catch (Throwable t) {
            logFailureOnce("isModelReady", t);
        }
        try {
            hookCheckInit(classLoader);
        } catch (Throwable t) {
            logFailureOnce("checkInit", t);
        }
        try {
            hookAnalyticImage(classLoader);
        } catch (Throwable t) {
            logFailureOnce("analyticImage", t);
        }
        try {
            hookInitCluster(classLoader);
        } catch (Throwable t) {
            logFailureOnce("initCluster", t);
        }
        try {
            hookLoadModelSo(classLoader);
        } catch (Throwable t) {
            logFailureOnce("loadModelSo", t);
        }

        XposedBridge.log(TAG + ": FACEINIT install pid=" + Process.myPid()
                + " hooked=" + hookedCount() + "/5"
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

    private static void hookModelReady(ClassLoader classLoader) {
        Class<?> companionCls = XposedHelpers.findClassIfExists(MODEL_COMPANION_CLASS, classLoader);
        if (companionCls == null) {
            return;
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
    }

    private static void hookCheckInit(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
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
    }

    private static void hookAnalyticImage(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
        }
        XposedHelpers.findAndHookMethod(cls, "analyticImage", Bitmap.class, String.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            sAnalyticImageCalls++;
                            if (param.getResult() == null) {
                                sAnalyticImageNulls++;
                            }
                            runProbeOnce();
                            maybeLogSummary();
                        } catch (Throwable ignored) {
                        }
                    }
                });
        sAnalyticImageHooked = true;
    }

    private static void hookInitCluster(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_CLUSTER_CLASS, classLoader);
        if (cls == null) {
            return;
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
    }

    private static void hookLoadModelSo(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(LOAD_SO_UTILS_CLASS, classLoader);
        if (cls == null) {
            return;
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

    private static String hookedCount() {
        int count = 0;
        if (sModelReadyHooked) count++;
        if (sCheckInitHooked) count++;
        if (sAnalyticImageHooked) count++;
        if (sInitClusterHooked) count++;
        if (sLoadSoHooked) count++;
        return String.valueOf(count);
    }

    private static void logFailureOnce(String where, Throwable t) {
        if (FAIL_LOGGED.compareAndSet(false, true)) {
            XposedBridge.log(TAG + ": FaceInitProbe " + where + " failed: " + t);
        }
    }
}
