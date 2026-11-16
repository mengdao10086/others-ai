package com.mengdao.lsposedtoolkit.gallery;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.Context;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Executor;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/**
 * 取消 v1.x 遗留的 30 分钟周期任务。
 *
 * v1.7 及以前用 WorkManager 入了 unique work "mengdao_night_analyze"；
 * v2.0 删除调度链后旧任务仍会随系统继续触发，这里在相册每次 scheduleAll 后取消一次。
 *
 * 相册内置的 androidx.work 是裁剪版：WorkManager 上没有 cancelUniqueWork，
 * 只有 getWorkInfos(WorkQuery)；取消要先按 unique name 查出来，再逐个 cancelWorkById。
 * 查询返回 ListenableFuture，回调里置位防重标记，失败可在下次 scheduleAll 重试。
 */
final class LegacyNightWorkCleanupHook {

    private static final String SCHEDULER_CLASS = "com.miui.gallery.job.GalleryJobScheduler";
    private static final String WORK_MANAGER_CLASS = "androidx.work.WorkManager";
    private static final String WORK_QUERY_BUILDER_CLASS = "androidx.work.WorkQuery$Builder";
    private static final String LEGACY_UNIQUE_NAME = "mengdao_night_analyze";

    private static ClassLoader sClassLoader;
    private static volatile boolean sCleaned;

    private LegacyNightWorkCleanupHook() {
    }

    static void install(ClassLoader classLoader) {
        sClassLoader = classLoader;
        Class<?> schedulerClass = XposedHelpers.findClass(SCHEDULER_CLASS, classLoader);
        XposedHelpers.findAndHookMethod(schedulerClass, "scheduleAll", Context.class,
                new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        try {
                            Context context = (Context) param.args[0];
                            if (context != null) {
                                cancelLegacyWork(context);
                            }
                        } catch (Throwable t) {
                                                        Logs.status("LegacyNightWorkCleanupHook:52", "" + "legacy work cleanup failed: " + t);
                        }
                    }
                });
    }

    private static void cancelLegacyWork(Context context) throws Exception {
        if (sCleaned) {
            return;
        }
        Class<?> workManagerClass = XposedHelpers.findClass(WORK_MANAGER_CLASS, sClassLoader);
        Object workManager = Reflect.findMethod(workManagerClass, "getInstance", Context.class)
                .invoke(null, context);
        if (workManager == null) {
            return;
        }
        Object query = buildQuery();
        Object future = Reflect.findMethod(workManager.getClass(), "getWorkInfos",
                query.getClass()).invoke(workManager, query);
        Method addListener = Reflect.findMethod(future.getClass(), "addListener",
                Runnable.class, Executor.class);
        addListener.invoke(future, (Runnable) () -> cancelAll(workManager, future),
                (Executor) Runnable::run);
    }

    private static Object buildQuery() throws Exception {
        Class<?> builderClass = XposedHelpers.findClass(WORK_QUERY_BUILDER_CLASS, sClassLoader);
        Method fromNames = Reflect.findMethod(builderClass, "fromUniqueWorkNames", List.class);
        Object builder = fromNames.invoke(null, Collections.singletonList(LEGACY_UNIQUE_NAME));
        return Reflect.findMethod(builderClass, "build").invoke(builder);
    }

    private static void cancelAll(Object workManager, Object future) {
        try {
            Object result = Reflect.findMethod(future.getClass(), "get").invoke(future);
            int count = 0;
            if (result instanceof List) {
                Method cancelById = Reflect.findMethod(workManager.getClass(),
                        "cancelWorkById", UUID.class);
                for (Object info : (List<?>) result) {
                    Object id = XposedHelpers.getObjectField(info, "mId");
                    if (id instanceof UUID) {
                        cancelById.invoke(workManager, id);
                        count++;
                    }
                }
            }
            sCleaned = true;
            if (count > 0) {
                                Logs.status("gallery.legacywork:生效", "" + "legacy night work cancelled, count=" + count);
            }
        } catch (Throwable t) {
                        Logs.status("LegacyNightWorkCleanupHook:104", "" + "cancel legacy night work failed: " + t);
        }
    }
}
