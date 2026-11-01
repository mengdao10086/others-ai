package com.mengdao.galleryanalyze.hook.aicr;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;

import com.mengdao.galleryanalyze.hook.AicrProtocol;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 主通道：相册启动 AiCrSearchDataBaseService 把 :searchDataService 拉起来，
 * 这里在 onStartCommand 里接住同一个 Intent，转成 provider call。
 *
 * 只处理带模块 action 的启动；aicr 自己拉起该服务时 intent 不带 action，原样放过。
 * dispatch 放在后台线程，避免阻塞 Service 主线程；服务在 keep-alive 时间后自行 stopSelf，
 * 不让保活通知一直挂着（aicr 自己的分析由 WorkManager 的远程服务保活）。
 */
final class AiCrSearchDataBaseServiceHook {

    private static final String TAG = "GalleryAnalyze";
    private static final String SOURCE = "service";
    private static final long START_KEEP_ALIVE_MS = 90_000L;
    private static final long STOP_SETTLE_MS = 15_000L;

    private static ExecutorService sExecutor;

    private AiCrSearchDataBaseServiceHook() {
    }

    static void install(ClassLoader classLoader) {
        Class<?> serviceClass = XposedHelpers.findClassIfExists(
                AicrProtocol.SERVICE_CLASS, classLoader);
        if (serviceClass == null) {
            XposedBridge.log(TAG + ": AiCrSearchDataBaseService not found, skip");
            return;
        }
        AicrTriggerDispatcher.init(classLoader);
        sExecutor = Executors.newSingleThreadExecutor(runnable -> {
            Thread thread = new Thread(runnable, "mengdao-aicr-service");
            thread.setDaemon(true);
            return thread;
        });
        XposedHelpers.findAndHookMethod(serviceClass, "onStartCommand",
                Intent.class, int.class, int.class, new XC_MethodHook() {
                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        onStartCommand(param);
                    }
                });
    }

    private static void onStartCommand(XC_MethodHook.MethodHookParam param) {
        try {
            Intent intent = (Intent) param.args[0];
            String action = intent == null ? null : intent.getAction();
            if (!AicrTriggerDispatcher.isTriggerAction(action)) {
                return;
            }
            Object service = param.thisObject;
            Context context = contextOf(service);
            XposedBridge.log(TAG + ": aicr service received " + action);
            sExecutor.execute(() -> {
                try {
                    AicrTriggerDispatcher.dispatch(context, action, SOURCE);
                } catch (Throwable t) {
                    XposedBridge.log(TAG + ": aicr service dispatch failed: " + t);
                }
            });
            long delay = AicrProtocol.ACTION_START.equals(action)
                    ? START_KEEP_ALIVE_MS
                    : STOP_SETTLE_MS;
            scheduleStopSelf(service, delay);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr service hook failed: " + t);
        }
    }

    private static Context contextOf(Object service) {
        try {
            Object context = XposedHelpers.callMethod(service, "getApplicationContext");
            if (context instanceof Context) {
                return (Context) context;
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static void scheduleStopSelf(Object service, long delayMs) {
        try {
            new Handler(Looper.getMainLooper()).postDelayed(() -> {
                try {
                    XposedHelpers.callMethod(service, "stopSelf");
                    XposedBridge.log(TAG + ": aicr keep-alive service stopped");
                } catch (Throwable t) {
                    XposedBridge.log(TAG + ": stopSelf failed: " + t);
                }
            }, delayMs);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": schedule stopSelf failed: " + t);
        }
    }
}
