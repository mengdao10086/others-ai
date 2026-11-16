package com.mengdao.lsposedtoolkit.gallery.aicr;

import com.mengdao.lsposedtoolkit.Logs;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

import com.mengdao.lsposedtoolkit.gallery.AicrProtocol;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/**
 * 备用通道：把模块广播转成 aicr 的 provider call。
 *
 * before-hook 里先 goAsync() 拿 PendingResult，让系统在后台线程干完前不回收进程；
 * 调度与 provider 调用都在单线程后台执行，完成后在所有路径 finally 里 finish()。
 * 取不到 PendingResult 时退化为普通后台投递（进程回收仍可能丢失），只记日志。
 * 主通道是 AiCrSearchDataBaseServiceHook，这里只负责广播能送到的情况。
 */
final class AisearchTriggerReceiverHook {

    private static final String PENDING_RESULT_KEY = "mengdao_pending_result";
    private static final String SOURCE = "broadcast";

    private static ExecutorService sExecutor;

    private AisearchTriggerReceiverHook() {
    }

    static void install(ClassLoader classLoader) {
        Class<?> receiverClass = XposedHelpers.findClassIfExists(
                AicrProtocol.RECEIVER_CLASS, classLoader);
        if (receiverClass == null) {
                        Logs.status("aicr.receiver:不可用", "" + "AISearchStaticReceiver not found, skip");
            return;
        }
        AicrTriggerDispatcher.init(classLoader);
        sExecutor = Executors.newSingleThreadExecutor(runnable -> {
            Thread thread = new Thread(runnable, "mengdao-aicr-trigger");
            thread.setDaemon(true);
            return thread;
        });
        XposedHelpers.findAndHookMethod(receiverClass, "onReceive", Context.class, Intent.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        holdProcess(param);
                    }

                    @Override
                    protected void afterHookedMethod(MethodHookParam param) {
                        dispatchAsync(param);
                    }
                });
    }

    /** 在 onReceive 内调用 goAsync()，把 PendingResult 交给后台线程，避免进程被提前回收。 */
    private static void holdProcess(XC_MethodHook.MethodHookParam param) {
        try {
            Intent intent = (Intent) param.args[1];
            if (!AicrTriggerDispatcher.isTriggerAction(
                    intent == null ? null : intent.getAction())) {
                return;
            }
            BroadcastReceiver receiver = (BroadcastReceiver) param.thisObject;
            BroadcastReceiver.PendingResult pending = receiver.goAsync();
            if (pending != null) {
                param.setObjectExtra(PENDING_RESULT_KEY, pending);
            } else {
                                Logs.status("AisearchTriggerReceiverHook:75", "" + "goAsync returned null, dispatch without holding process");
            }
        } catch (Throwable t) {
                        Logs.status("AisearchTriggerReceiverHook:78", "" + "goAsync failed, dispatch without holding process: " + t);
        }
    }

    private static void dispatchAsync(XC_MethodHook.MethodHookParam param) {
        BroadcastReceiver.PendingResult pending = pendingResult(param);
        try {
            Intent intent = (Intent) param.args[1];
            String action = intent == null ? null : intent.getAction();
            if (!AicrTriggerDispatcher.isTriggerAction(action)) {
                finish(pending);
                return;
            }
            Context fallback = (Context) param.args[0];
            sExecutor.execute(() -> {
                try {
                    AicrTriggerDispatcher.dispatch(fallback, action, SOURCE);
                } catch (Throwable t) {
                                        Logs.status("AisearchTriggerReceiverHook:96", "" + "aicr broadcast dispatch failed: " + t);
                } finally {
                    finish(pending);
                }
            });
        } catch (Throwable t) {
                        Logs.status("AisearchTriggerReceiverHook:102", "" + "aicr broadcast enqueue failed: " + t);
            finish(pending);
        }
    }

    private static BroadcastReceiver.PendingResult pendingResult(
            XC_MethodHook.MethodHookParam param) {
        Object extra = param.getObjectExtra(PENDING_RESULT_KEY);
        return extra instanceof BroadcastReceiver.PendingResult
                ? (BroadcastReceiver.PendingResult) extra
                : null;
    }

    private static void finish(BroadcastReceiver.PendingResult pending) {
        if (pending == null) {
            return;
        }
        try {
            pending.finish();
        } catch (Throwable t) {
                        Logs.status("AisearchTriggerReceiverHook:122", "" + "pending result finish failed: " + t);
        }
    }
}
