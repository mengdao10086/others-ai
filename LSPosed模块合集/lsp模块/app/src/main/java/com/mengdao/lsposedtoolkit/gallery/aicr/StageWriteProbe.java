package com.mengdao.lsposedtoolkit.gallery.aicr;

import android.graphics.Bitmap;
import android.os.SystemClock;

import java.util.ArrayList;
import java.util.List;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 仅诊断：记录 face/ocr/tag/pet 四条 AI 流水线最后一次被调用时间与次数。
 *
 * 只计数、不判断业务；hook 回调里不做耗时操作，输出由 AicrProgressDiagnostics
 * 每 30 秒采样时带一行（stage-write ...）。类找不到时静默跳过，不影响 aicr。
 *
 * 四个探针点（探针装到 aicr 所有进程，实际执行进程由 DIAG 行 proc= 确认）：
 *  - face：FaceManager.analyticCluster(ArrayList)，批量聚类并回写 face_state
 *  - pet ：PetManager.analyzeCluster(List, String)，批量聚类并回写 pet_state
 *  - tag ：TagManager.analyticImage(String, Bitmap)，逐图打标；批次结束由
 *          GalleryOperation.batchPic 的 updateGalleryState 统一落库
 *  - ocr ：OcrUserManager.getOcrResult(Bitmap, GalleryEntity)，逐图 OCR；同上落库
 */
final class StageWriteProbe {

    private static final String TAG = "GalleryAnalyze";

    private static final String FACE_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.FaceManager";
    private static final String PET_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.PetManager";
    private static final String TAG_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.TagManager";
    private static final String OCR_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.OcrUserManager";
    private static final String GALLERY_OPERATION_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.GalleryOperation";
    private static final String GALLERY_ENTITY_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.entity.GalleryEntity";

    /**
     * 仅诊断用：原版 face/pet 每 200 条才批量聚合一次，这里提前到 50 条刷新，
     * 用来加快真机判断流水线是否真的不动。0 或 >=200 即恢复原版行为。
     * 验证完改回 200 或删除。
     */
    private static final int DEBUG_BATCH_THRESHOLD = 50;

    private static final Stage FACE = new Stage();
    private static final Stage OCR = new Stage();
    private static final Stage TAG_STAGE = new Stage();
    private static final Stage PET = new Stage();

    private static ClassLoader sClassLoader;
    private static String sProcessName = "?";
    private static volatile String sWorkId;
    private static volatile boolean sInstalled;
    private static boolean sFailureLogged;
    private static Object sFaceManager;
    private static Object sPetManager;

    private StageWriteProbe() {
    }

    static void install(ClassLoader classLoader, String processName) {
        if (sInstalled) {
            return;
        }
        sInstalled = true;
        sClassLoader = classLoader;
        sProcessName = processName == null ? "?" : processName;
        try {
            hookFace(classLoader);
        } catch (Throwable t) {
            logFailureOnce(t);
        }
        try {
            hookPet(classLoader);
        } catch (Throwable t) {
            logFailureOnce(t);
        }
        try {
            hookTag(classLoader);
        } catch (Throwable t) {
            logFailureOnce(t);
        }
        try {
            hookOcr(classLoader);
        } catch (Throwable t) {
            logFailureOnce(t);
        }
        try {
            hookGalleryOperation(classLoader);
        } catch (Throwable t) {
            logFailureOnce(t);
        }
    }

    /**
     * 采样器每 30 秒取一次。
     * 状态：xxx=---[missing] 类/方法没找到；xxx=never/0[hooked] 已装但未调用；
     * xxx=12s/34[hooked] 正常。proc= 标明是哪一进程的探针在报。
     */
    static String describe() {
        return "proc=" + sProcessName
                + " face=" + FACE.describe()
                + " ocr=" + OCR.describe()
                + " tag=" + TAG_STAGE.describe()
                + " pet=" + PET.describe();
    }

    private static void hookFace(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
        }
        sFaceManager = XposedHelpers.getStaticObjectField(cls, "INSTANCE");
        XposedHelpers.findAndHookMethod(cls, "analyticCluster", ArrayList.class,
                new CounterHook(FACE));
        FACE.markHooked();
    }

    private static void hookPet(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(PET_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
        }
        sPetManager = XposedHelpers.getStaticObjectField(cls, "INSTANCE");
        XposedHelpers.findAndHookMethod(cls, "analyzeCluster", List.class, String.class,
                new CounterHook(PET));
        PET.markHooked();
    }

    private static void hookTag(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(TAG_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
        }
        XposedHelpers.findAndHookMethod(cls, "analyticImage", String.class, Bitmap.class,
                new CounterHook(TAG_STAGE));
        TAG_STAGE.markHooked();
    }

    private static void hookOcr(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(OCR_MANAGER_CLASS, classLoader);
        Class<?> entityCls = XposedHelpers.findClassIfExists(GALLERY_ENTITY_CLASS, classLoader);
        if (cls == null || entityCls == null) {
            return;
        }
        XposedHelpers.findAndHookMethod(cls, "getOcrResult", Bitmap.class, entityCls,
                new CounterHook(OCR));
        OCR.markHooked();
    }

    private static void hookGalleryOperation(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(GALLERY_OPERATION_CLASS, classLoader);
        if (cls == null) {
            return;
        }
        // 记录本轮 workId，供 pet 提前刷新时复用；只在参数上取值，不改变调用。
        XposedHelpers.findAndHookMethod(cls, "traversalPic", boolean.class, String.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        Object workId = param.args[1];
                        sWorkId = workId instanceof String ? (String) workId : null;
                    }
                });
        // batchPic 是 tag_state/ocr_state 的统一落库点；返回后按需提前刷新 face/pet。
        XposedHelpers.findAndHookMethod(cls, "batchPic",
                List.class, ArrayList.class, ArrayList.class, ArrayList.class, ArrayList.class,
                List.class, new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        maybeFlushEarly(param);
                    }
                });
    }

    /**
     * 仅诊断用的提前聚合：等价于把 traversalPic 里的 200 改成 50。
     * 通过 batchPic 的入参拿到累积列表，调用原版自身的批量方法并清空，
     * 不替换、不重写任何业务方法。阈值无效时完全不介入。
     */
    private static void maybeFlushEarly(XC_MethodHook.MethodHookParam param) {
        if (DEBUG_BATCH_THRESHOLD <= 0 || DEBUG_BATCH_THRESHOLD >= 200) {
            return;
        }
        if (param.hasThrowable()) {
            return;
        }
        try {
            List<?> facePaths = asList(param.args[1]);
            if (facePaths != null && facePaths.size() >= DEBUG_BATCH_THRESHOLD) {
                flushFace(facePaths);
            }
            List<?> petPaths = asList(param.args[2]);
            if (petPaths != null && petPaths.size() >= DEBUG_BATCH_THRESHOLD && petSupported()) {
                flushPet(petPaths);
            }
        } catch (Throwable t) {
            logFailureOnce(t);
        }
    }

    private static void flushFace(List<?> paths) {
        if (sFaceManager == null) {
            return;
        }
        ArrayList<Object> copy = new ArrayList<>(paths);
        XposedHelpers.callMethod(sFaceManager, "analyticCluster", copy);
        paths.clear();
        XposedHelpers.callMethod(sFaceManager, "releaseFaceManager");
    }

    private static void flushPet(List<?> paths) {
        String workId = sWorkId;
        if (sPetManager == null || workId == null) {
            return;
        }
        ArrayList<Object> copy = new ArrayList<>(paths);
        XposedHelpers.callMethod(sPetManager, "analyzeCluster", copy, workId);
        paths.clear();
    }

    private static boolean petSupported() {
        try {
            Class<?> cls = XposedHelpers.findClassIfExists(GALLERY_OPERATION_CLASS, sClassLoader);
            return cls != null && XposedHelpers.getStaticBooleanField(cls, "mIsAlbumSupportPet");
        } catch (Throwable t) {
            return false;
        }
    }

    private static List<?> asList(Object value) {
        return value instanceof List ? (List<?>) value : null;
    }

    private static void logFailureOnce(Throwable t) {
        if (sFailureLogged) {
            return;
        }
        sFailureLogged = true;
        XposedBridge.log(TAG + ": StageWriteProbe failed: " + t);
    }

    private static final class CounterHook extends XC_MethodHook {
        private final Stage stage;

        CounterHook(Stage stage) {
            this.stage = stage;
        }

        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            stage.record();
        }
    }

    private static final class Stage {
        private boolean hooked;
        private long lastElapsedMs;
        private int count;

        synchronized void markHooked() {
            hooked = true;
        }

        synchronized void record() {
            lastElapsedMs = SystemClock.elapsedRealtime();
            count++;
        }

        synchronized String describe() {
            if (!hooked) {
                return "---[missing]";
            }
            if (count == 0) {
                return "never/0[hooked]";
            }
            long deltaMs = SystemClock.elapsedRealtime() - lastElapsedMs;
            if (deltaMs < 0) {
                deltaMs = 0;
            }
            return (deltaMs / 1000) + "s/" + count + "[hooked]";
        }
    }
}
