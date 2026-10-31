package com.mengdao.galleryanalyze.hook;

import android.content.Context;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 用相册进程内的 WorkManager 入队独立周期任务。
 *
 * 模块类与相册类分属不同 ClassLoader，不能直接引用 androidx.work；
 * 全部通过 XposedHelpers + 反射，类都从相册的 classLoader 加载。
 */
final class NightWorkScheduler {

    private static final String TAG = "GalleryAnalyze";
    static final String UNIQUE_NAME = "mengdao_night_analyze";
    static final String WORK_TAG = "mengdao_night_analyze";

    private NightWorkScheduler() {
    }

    static void ensureScheduled(Context context, ClassLoader classLoader) {
        try {
            Class<?> workManagerClass = XposedHelpers.findClass("androidx.work.WorkManager", classLoader);
            Method getInstance = Reflect.findMethod(workManagerClass, "getInstance", Context.class);
            Object workManager = getInstance.invoke(null, context);

            Class<?> workerClass = XposedHelpers.findClass(
                    "com.miui.gallery.job.workers.CardUpdateWorkerProvider$CardUpdateWorker",
                    classLoader);
            Class<?> builderClass = XposedHelpers.findClass(
                    "androidx.work.PeriodicWorkRequest$Builder", classLoader);
            Constructor<?> builderCtor = XposedHelpers.findConstructorExact(
                    builderClass, Class.class, long.class, TimeUnit.class);
            Object builder = builderCtor.newInstance(workerClass, 30L, TimeUnit.MINUTES);

            Class<?> constraintsBuilderClass = XposedHelpers.findClass(
                    "androidx.work.Constraints$Builder", classLoader);
            Object constraintsBuilder = XposedHelpers.findConstructorExact(constraintsBuilderClass)
                    .newInstance();
            Reflect.findMethod(constraintsBuilderClass, "setRequiresBatteryNotLow", boolean.class)
                    .invoke(constraintsBuilder, true);
            Object constraints = Reflect.findMethod(constraintsBuilderClass, "build")
                    .invoke(constraintsBuilder);

            // setConstraints / addTag / build 都声明在父类 WorkRequest$Builder 上，必须沿父类找
            Class<?> constraintsClass = XposedHelpers.findClass(
                    "androidx.work.Constraints", classLoader);
            Reflect.findMethod(builderClass, "setConstraints", constraintsClass)
                    .invoke(builder, constraints);
            Reflect.findMethod(builderClass, "addTag", String.class)
                    .invoke(builder, WORK_TAG);
            Object request = Reflect.findMethod(builderClass, "build").invoke(builder);

            Class<?> policyClass = XposedHelpers.findClass(
                    "androidx.work.ExistingPeriodicWorkPolicy", classLoader);
            Object keep = findEnumConstant(policyClass, "KEEP");
            if (keep == null) {
                throw new IllegalStateException("ExistingPeriodicWorkPolicy.KEEP not found");
            }

            Class<?> requestClass = XposedHelpers.findClass(
                    "androidx.work.PeriodicWorkRequest", classLoader);
            Reflect.findMethod(workManagerClass, "enqueueUniquePeriodicWork",
                            String.class, policyClass, requestClass)
                    .invoke(workManager, UNIQUE_NAME, keep, request);
            XposedBridge.log(TAG + ": night work scheduled (30 min, battery not low)");
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": night work schedule failed: " + t);
        }
    }

    static boolean isNightTag(Object tags) {
        return tags instanceof Set && ((Set<?>) tags).contains(WORK_TAG);
    }

    /** 20:00 — 次日 06:00。 */
    static boolean inWindow() {
        int hour = Calendar.getInstance().get(Calendar.HOUR_OF_DAY);
        return hour >= 20 || hour < 6;
    }

    private static Object findEnumConstant(Class<?> enumClass, String name) {
        Object[] constants = enumClass.getEnumConstants();
        if (constants == null) {
            return null;
        }
        for (Object constant : constants) {
            if (name.equals(((Enum<?>) constant).name())) {
                return constant;
            }
        }
        return null;
    }
}
