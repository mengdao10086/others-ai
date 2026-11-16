package com.mengdao.lsposedtoolkit.gallery;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.Context;
import android.view.View;

import java.text.NumberFormat;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/**
 * 搜索页 AI 分析提示条常驻。
 *
 * 相册在进度 100% 时会主动隐藏提示条（SearchTipView$EnsureAiClipProgressRunnable 里
 * progress >= 100 的分支）。这里记录进程内最近一次读到的百分比，在相册即将隐藏且
 * 进度已满值时改为显示相册原生的完成文案；其他隐藏原因不额外触发显示。
 *
 * 不使用「同一次 run」窗口：EnsureAiClipProgressRunnable 会被重复提交，多个 run 并发时
 * 在 run() 前清零静态值会互相覆盖，刚读到的进度被下一次 run 清掉。进度本身来自进程内
 * 单例（MIAI 数组或本地计数），与具体 run 无关，因此只保留进程内最新值。
 *
 * 只读：不改进度、不写任何存储、不改 aicr。任一 hook 失效时静默退回相册现状。
 */
final class SearchProgressPinHook {

    private static final String ALGO_PROGRESS_CLASS =
            "com.miui.gallery.assistant.manager.AlgoProgressManager";
    private static final String ALGO_TYPE_CLASS =
            "com.miui.gallery.assistant.manager.AlgoProgressManager$ALGO_TYPE";
    private static final String TIP_VIEW_CLASS =
            "com.miui.gallery.search.navigationpage.SearchTipView";
    private static final String TIP_TEXT_RES = "ai_process_grogress_tip_search";
    private static final String GALLERY_PACKAGE = "com.miui.gallery";
    private static final String FALLBACK_TEXT = "100%";

    /** MIAI 来源最近一次读到的百分比；-1 表示还没读到。 */
    private static volatile int sMiaiPercent = -1;
    /** 本地计数来源最近一次读到的百分比；-1 表示还没读到。 */
    private static volatile int sLocalPercent = -1;
    /** calTotalProgress 执行期间是否至少读到一个阶段的百分比。 */
    private static volatile boolean sAlgoSeenInTotal;
    private static volatile int sTipTextResId = Integer.MIN_VALUE;
    private static volatile boolean sPinnedLogged;
    private static volatile boolean sRecordFailureLogged;

    private SearchProgressPinHook() {
    }

    static void install(ClassLoader classLoader) {
        hookMiaiProgress(classLoader);
        hookLocalProgress(classLoader);
        hookTipVisibility(classLoader);
    }

    /** 进度来源一：MIAI 返回 {inProgress, progress, support}，取下标 1 的百分比。 */
    private static void hookMiaiProgress(ClassLoader classLoader) {
        try {
            XposedHelpers.findAndHookMethod(ALGO_PROGRESS_CLASS, classLoader,
                    "getProgressFromMIAIAlgo", new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                Object result = param.getResult();
                                if (!(result instanceof int[])) {
                                    return;
                                }
                                int[] values = (int[]) result;
                                if (values.length == 3 && values[1] >= 0) {
                                    sMiaiPercent = values[1];
                                }
                            } catch (Throwable t) {
                                logRecordFailure("miai", t);
                            }
                        }
                    });
        } catch (Throwable t) {
            logFailure("miai", t);
        }
    }

    /**
     * 进度来源二（非 AiCore 分支）：calAlgoProgress 返回 0~100 的阶段百分比，
     * calTotalProgress 返回各支持阶段百分比的均值（没有阶段时固定 100，不能当满值）。
     * 只写 sLocalPercent：这两个方法也会被建库/Worker 等背景路径调用，
     * 不能覆盖 MIAI 来源已读到的值，否则会把满值打回而漏 pin。
     */
    private static void hookLocalProgress(ClassLoader classLoader) {
        try {
            Class<?> algoType = XposedHelpers.findClass(ALGO_TYPE_CLASS, classLoader);
            XposedHelpers.findAndHookMethod(ALGO_PROGRESS_CLASS, classLoader,
                    "calAlgoProgress", algoType, new XC_MethodHook() {
                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                Object result = param.getResult();
                                if (!(result instanceof Float)) {
                                    return;
                                }
                                float percent = (Float) result;
                                if (percent >= 0f) {
                                    sAlgoSeenInTotal = true;
                                    sLocalPercent = Math.round(percent);
                                }
                            } catch (Throwable t) {
                                logRecordFailure("algo", t);
                            }
                        }
                    });
            XposedHelpers.findAndHookMethod(ALGO_PROGRESS_CLASS, classLoader,
                    "calTotalProgress", new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            sAlgoSeenInTotal = false;
                        }

                        @Override
                        protected void afterHookedMethod(MethodHookParam param) {
                            try {
                                Object result = param.getResult();
                                if (!(result instanceof Integer)) {
                                    return;
                                }
                                int total = (Integer) result;
                                if (total > 0 && sAlgoSeenInTotal && total > sLocalPercent) {
                                    sLocalPercent = total;
                                }
                            } catch (Throwable t) {
                                logRecordFailure("total", t);
                            }
                        }
                    });
        } catch (Throwable t) {
            logFailure("local", t);
        }
    }

    private static void hookTipVisibility(ClassLoader classLoader) {
        try {
            XposedHelpers.findAndHookMethod(TIP_VIEW_CLASS, classLoader,
                    "showTipOnMainThread",
                    boolean.class, boolean.class, String.class, new XC_MethodHook() {
                        @Override
                        protected void beforeHookedMethod(MethodHookParam param) {
                            try {
                                if (!Boolean.FALSE.equals(param.args[0])) {
                                    return;
                                }
                                if (Math.max(sMiaiPercent, sLocalPercent) < 100) {
                                    return;
                                }
                                View view = (View) param.thisObject;
                                String text = completedText(view.getContext());
                                param.args[0] = Boolean.TRUE;
                                param.args[2] = text;
                                if (!sPinnedLogged) {
                                    sPinnedLogged = true;
                                                                        Logs.status("gallery.searchpin:生效", "" + "search tip pinned at 100%");
                                }
                            } catch (Throwable t) {
                                logRecordFailure("tip", t);
                            }
                        }
                    });
        } catch (Throwable t) {
            logFailure("tip", t);
        }
    }

    /** 相册原生完成文案：资源模板 + 本地化的 100%。 */
    private static String completedText(Context context) {
        if (context == null) {
            return FALLBACK_TEXT;
        }
        int resId = sTipTextResId;
        if (resId == Integer.MIN_VALUE) {
            resId = resolveTipTextResId(context);
            sTipTextResId = resId;
        }
        if (resId == 0) {
            return FALLBACK_TEXT;
        }
        try {
            return context.getString(resId,
                    NumberFormat.getPercentInstance().format(1.0d));
        } catch (Throwable t) {
            return FALLBACK_TEXT;
        }
    }

    private static int resolveTipTextResId(Context context) {
        try {
            return context.getResources()
                    .getIdentifier(TIP_TEXT_RES, "string", GALLERY_PACKAGE);
        } catch (Throwable t) {
            logRecordFailure("text", t);
            return 0;
        }
    }

    private static void logRecordFailure(String stage, Throwable t) {
        if (sRecordFailureLogged) {
            return;
        }
        sRecordFailureLogged = true;
                Logs.status("SearchProgressPinHook:207", "" + "search progress pin " + stage + " record failed: " + t);
    }

    private static void logFailure(String stage, Throwable t) {
                Logs.status("SearchProgressPinHook:211", "" + "search progress pin " + stage + " hook failed: " + t);
    }
}
