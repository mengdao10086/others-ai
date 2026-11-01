package com.mengdao.galleryanalyze.hook.aicr;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;

import com.mengdao.galleryanalyze.hook.AicrProtocol;

import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 把模块的启动/停止请求转成 aicr 内部 provider call。
 *
 * 两条入口（保活服务的 onStartCommand、备用广播的 onReceive）共用这一份逻辑，
 * 保证 CTA 只读校验、scope、失败日志完全一致。
 * provider 虽为 exported=false，但调用方与它同在 :searchDataService 进程，同进程调用不受限制。
 */
final class AicrTriggerDispatcher {

    private static final String TAG = "GalleryAnalyze";
    private static final String CONTEXT_UTIL_CLASS = "com.xiaomi.aicr.common.ContextUtil";
    private static final String PERMISSION_UTILS_CLASS =
            "com.xiaomi.aicr.common.permission.CommonPermissionUtils";
    private static final String CTA_METHOD = "checkCTASwitch";

    private static ClassLoader sClassLoader;

    private AicrTriggerDispatcher() {
    }

    static void init(ClassLoader classLoader) {
        sClassLoader = classLoader;
    }

    static boolean isTriggerAction(String action) {
        return AicrProtocol.ACTION_START.equals(action)
                || AicrProtocol.ACTION_STOP.equals(action);
    }

    static void dispatch(Context fallback, String action, String source) {
        try {
            Context context = appContext(fallback);
            if (context == null) {
                XposedBridge.log(TAG + ": aicr context unavailable, skip " + action
                        + " from " + source);
                return;
            }
            boolean start = AicrProtocol.ACTION_START.equals(action);
            if (start && !checkCta()) {
                XposedBridge.log(TAG + ": CTA switch is off, skip aicr start (" + source + ")");
                return;
            }
            String method = start
                    ? AicrProtocol.METHOD_START_UNLIMITED
                    : AicrProtocol.METHOD_STOP;
            Bundle extras = new Bundle();
            extras.putInt(AicrProtocol.EXTRA_SCOPE, AicrProtocol.SCOPE_GALLERY);
            Bundle result = context.getContentResolver().call(
                    Uri.parse("content://" + AicrProtocol.PROVIDER_AUTHORITY),
                    method, "", extras);
            XposedBridge.log(TAG + ": aicr provider call " + method
                    + " from " + source + " result=" + result);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": aicr provider call failed (" + action
                    + " from " + source + "): " + t);
        }
    }

    /** 只读检查，不得把 false 伪造成 true；类或调用缺失一律按未授权处理。 */
    private static boolean checkCta() {
        try {
            Class<?> utils = XposedHelpers.findClassIfExists(PERMISSION_UTILS_CLASS, sClassLoader);
            if (utils == null) {
                return false;
            }
            Object allowed = XposedHelpers.callStaticMethod(
                    utils, CTA_METHOD, AicrProtocol.CTA_CAPABILITY);
            return Boolean.TRUE.equals(allowed);
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": CTA check failed: " + t);
            return false;
        }
    }

    private static Context appContext(Context fallback) {
        try {
            Class<?> util = XposedHelpers.findClassIfExists(CONTEXT_UTIL_CLASS, sClassLoader);
            if (util != null) {
                Object context = XposedHelpers.callStaticMethod(util, "getApplicationContext");
                if (context instanceof Context) {
                    return (Context) context;
                }
            }
        } catch (Throwable t) {
            XposedBridge.log(TAG + ": app context lookup failed: " + t);
        }
        return fallback;
    }
}
