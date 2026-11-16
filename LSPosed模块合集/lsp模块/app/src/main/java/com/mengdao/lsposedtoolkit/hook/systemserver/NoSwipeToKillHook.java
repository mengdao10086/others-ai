package com.mengdao.lsposedtoolkit.hook.systemserver;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.pm.ApplicationInfo;

import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 屏蔽「最近任务上滑杀后台」：省电策略为无限制的应用在 killOnce 前跳过。
 *
 * system_server 重启后 SmartPowerPolicyManager 的内存集合为空，由 PowerPolicyReader 回退查 provider。
 */
public final class NoSwipeToKillHook {

    private static final AtomicBoolean sErrorLogged = new AtomicBoolean();

    private NoSwipeToKillHook() {
    }

    public static void install(ClassLoader classLoader) {
        try {
            Class<?> processRecordClass =
                    XposedHelpers.findClass("com.android.server.am.ProcessRecord", classLoader);
            Class<?> cleanerClass =
                    XposedHelpers.findClass("com.android.server.am.ProcessCleanerBase", classLoader);

            for (Method method : cleanerClass.getDeclaredMethods()) {
                if (!"killOnce".equals(method.getName())) {
                    continue;
                }
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length >= 1
                        && parameterTypes[0].equals(processRecordClass)) {
                    XposedBridge.hookMethod(method, new KillOnceHook());
                }
            }
        } catch (Throwable t) {
            logOnce("install failed", t);
        }
    }

    private static final class KillOnceHook extends XC_MethodHook {

        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            try {
                Object record = param.args[0];
                if (record == null) {
                    return;
                }
                Object info = XposedHelpers.getObjectField(record, "info");
                if (!(info instanceof ApplicationInfo)) {
                    return;
                }
                String packageName = ((ApplicationInfo) info).packageName;
                if (packageName == null) {
                    return;
                }
                int userId = XposedHelpers.getIntField(record, "userId");
                if (PowerPolicyReader.isNoRestrictApp(packageName, userId)) {
                    param.setResult(null);
                }
            } catch (Throwable t) {
                logOnce("killOnce check failed", t);
            }
        }
    }

    private static void logOnce(String message, Throwable t) {
        if (sErrorLogged.compareAndSet(false, true)) {
                        Logs.status("NoSwipeToKillHook:76", "" + "" + message + ": " + t);
        }
    }
}
