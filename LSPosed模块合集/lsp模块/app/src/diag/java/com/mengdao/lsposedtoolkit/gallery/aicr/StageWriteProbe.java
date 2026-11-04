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
 *
 * 观察什么：四条 AI 流水线最后一次被调用的时间与次数，以及人脸初始化状态。
 * 日志行：不单独输出；由 AicrProgressDiagnostics 的
 * {@code GalleryAnalyze: DIAG stage-write proc=... face=... ocr=... tag=... pet=... faceInit=...}
 * 每 30 秒带出。{@code ---[missing]} 表示类/方法没找到，{@code never/0[hooked]}
 * 表示已装未调用，{@code 12s/34[hooked]} 表示正常。
 * 何时打开：需要确认分析实际落在哪个进程、某条流水线是否被调用时。
 * 怎么打开：把 {@link #ENABLED} 改为 true 重新编译；默认关闭。
 */
final class StageWriteProbe {

    private static final String TAG = "GalleryAnalyze";

    /** 诊断总开关；false 时不安装任何 hook，install() 只打一行 disabled。 */
    static final boolean ENABLED = false;

    private static final String FACE_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.FaceManager";
    private static final String PET_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.PetManager";
    private static final String TAG_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.TagManager";
    private static final String OCR_MANAGER_CLASS =
            "com.xiaomi.aicr.searchpro.gallery.OcrUserManager";
    private static final String GALLERY_ENTITY_CLASS =
            "com.xiaomi.aicr.aisearch.database.managerdb.entity.GalleryEntity";

    private static final Stage FACE = new Stage();
    private static final Stage OCR = new Stage();
    private static final Stage TAG_STAGE = new Stage();
    private static final Stage PET = new Stage();

    private static String sProcessName = "?";
    private static volatile boolean sInstalled;
    private static boolean sFailureLogged;

    private StageWriteProbe() {
    }

    static void install(ClassLoader classLoader, String processName) {
        if (!ENABLED) {
            XposedBridge.log(TAG + ": StageWriteProbe disabled");
            return;
        }
        if (sInstalled) {
            return;
        }
        sInstalled = true;
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
                + " pet=" + PET.describe()
                + " faceInit=" + faceInitDescribe();
    }

    private static String faceInitDescribe() {
        try {
            return FaceInitProbe.describe();
        } catch (Throwable t) {
            return "err";
        }
    }

    private static void hookFace(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(FACE_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
        }
        XposedHelpers.findAndHookMethod(cls, "analyticCluster", ArrayList.class,
                new CounterHook(FACE));
        FACE.markHooked();
    }

    private static void hookPet(ClassLoader classLoader) {
        Class<?> cls = XposedHelpers.findClassIfExists(PET_MANAGER_CLASS, classLoader);
        if (cls == null) {
            return;
        }
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
