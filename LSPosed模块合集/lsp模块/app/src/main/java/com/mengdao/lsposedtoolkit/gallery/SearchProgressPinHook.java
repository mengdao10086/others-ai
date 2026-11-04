package com.mengdao.lsposedtoolkit.gallery;

import android.os.SystemClock;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 搜索页 AI 分析提示条常驻。
 *
 * 相册在进度 100% 时会主动隐藏提示条（SearchTipView$EnsureAiClipProgressRunnable 里
 * progress >= 100 的分支）。这里记录同一次判断读到的进度，在相册即将隐藏且原因正是
 * 「已满值」时改为显示完成文案；其他隐藏原因（CTA 未确认、能力不支持等）不干预。
 *
 * 只读：不改进度、不写任何存储、不改 aicr。任一 hook 失效时静默退回相册现状。
 */
final class SearchProgressPinHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String ALGO_PROGRESS_CLASS =
            "com.miui.gallery.assistant.manager.AlgoProgressManager";
    private static final String TIP_VIEW_CLASS =
            "com.miui.gallery.search.navigationpage.SearchTipView";
    private static final String ENSURE_RUNNABLE_CLASS =
            "com.miui.gallery.search.navigationpage.SearchTipView$EnsureAiClipProgressRunnable";
    private static final String COMPLETED_TEXT = "本地分析已完成";
    /** 进度记录必须与触发判断属于同一次 run，15 秒足够覆盖一次页面回调。 */
    private static final long FRESH_MS = 15_000L;

    private static volatile long sRunStartedAt;
    private static volatile long sProgressRecordedAt;
    private static volatile int sProgress = -1;
    private static volatile int sInProgress = -1;

    private SearchProgressPinHook() {
    }

    static void install(ClassLoader classLoader) {
        hookRunStart(classLoader);
        hookProgressRead(classLoader);
        hookTipVisibility(classLoader);
    }

    private static void hookRunStart(ClassLoader classLoader) {
        try {
            XposedHelpers.findAndHookMethod(ENSURE_RUNNABLE_CLASS, classLoader, "run",
                    new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            sRunStartedAt = SystemClock.elapsedRealtime();
                            sProgressRecordedAt = 0L;
                            sProgress = -1;
                            sInProgress = -1;
                        }
                    });
        } catch (Throwable t) {
            logFailure("run", t);
        }
    }

    private static void hookProgressRead(ClassLoader classLoader) {
        try {
            XposedHelpers.findAndHookMethod(ALGO_PROGRESS_CLASS, classLoader,
                    "getProgressFromMIAIAlgo", new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            int[] values = (int[]) param.getResult();
                            if (values == null || values.length != 3) {
                                return;
                            }
                            sInProgress = values[0];
                            sProgress = values[1];
                            sProgressRecordedAt = SystemClock.elapsedRealtime();
                        }
                    });
        } catch (Throwable t) {
            logFailure("progress", t);
        }
    }

    private static void hookTipVisibility(ClassLoader classLoader) {
        try {
            XposedHelpers.findAndHookMethod(TIP_VIEW_CLASS, classLoader,
                    "showTipOnMainThread",
                    boolean.class, boolean.class, String.class, new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            if (!Boolean.FALSE.equals(param.args[0])) {
                                return;
                            }
                            if (!isCompletedFresh()) {
                                return;
                            }
                            param.args[0] = true;
                            param.args[2] = COMPLETED_TEXT;
                        }
                    });
        } catch (Throwable t) {
            logFailure("tip", t);
        }
    }

    private static boolean isCompletedFresh() {
        long now = SystemClock.elapsedRealtime();
        if (sRunStartedAt <= 0L || now - sRunStartedAt > FRESH_MS) {
            return false;
        }
        if (sProgressRecordedAt < sRunStartedAt) {
            return false;
        }
        return sProgress >= 100 && sInProgress == 0;
    }

    private static void logFailure(String stage, Throwable t) {
        XposedBridge.log(TAG + ": search progress pin " + stage + " hook failed: " + t);
    }
}
