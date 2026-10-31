package com.mengdao.galleryanalyze.hook;

import android.content.Context;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * hook GalleryJobScheduler.scheduleAll(Context) 的 after：
 * 用该 context 的 WorkManager 另入队一个独立周期任务（30 分钟，电量不低）。
 * 不改相册原有的 com.miui.gallery.job.CardUpdate 任务。
 */
final class NightScheduleHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String SCHEDULER_CLASS = "com.miui.gallery.job.GalleryJobScheduler";

    private NightScheduleHook() {
    }

    static void install(ClassLoader classLoader) {
        Class<?> schedulerClass = XposedHelpers.findClass(SCHEDULER_CLASS, classLoader);
        XposedHelpers.findAndHookMethod(schedulerClass, "scheduleAll", Context.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            Context context = (Context) param.args[0];
                            if (context != null) {
                                NightWorkScheduler.ensureScheduled(context, classLoader);
                            }
                        } catch (Throwable t) {
                            XposedBridge.log(TAG + ": scheduleAll after failed: " + t);
                        }
                    }
                });
    }
}
