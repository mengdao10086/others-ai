package com.mengdao.lsposedtoolkit.hook.systemui;

import android.content.Context;
import android.widget.Toast;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 屏蔽「已通过蓝牙设备解锁」这条 Toast。
 *
 * 只做抑制，不碰 HyperCeiler 的注册链路：makeText 命中蓝牙解锁文案时记下这个 Toast，
 * show 时置空即可。String 资源按名字后缀判定，不依赖资源 id。
 */
public final class BleUnlockToastHook {

    private static final String TAG = "LSPosedToolkit";
    private static final String BLE_TOAST_RES_SUFFIX = ":string/miui_keyguard_ble_unlock_succeed_msg";

    /** 已判定为蓝牙解锁提示的 Toast；show 时吞掉。弱引用，避免长期持有。 */
    private static final Set<Toast> BLE_TOASTS =
            Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap<>()));

    private BleUnlockToastHook() {
    }

    public static void install() {
        Method makeText = XposedHelpers.findMethodExactIfExists(
                Toast.class, "makeText", Context.class, int.class, int.class);
        if (makeText == null) {
            XposedBridge.log(TAG + ": Toast.makeText(Context,int,int) not found, skip");
            return;
        }
        XposedBridge.hookMethod(makeText, new XC_MethodHook() {
            @Override
            protected void afterHookedMethod(MethodHookParam param) {
                Object result = param.getResult();
                if (result instanceof Toast && isBleMakeText(param.args)) {
                    BLE_TOASTS.add((Toast) result);
                }
            }
        });

        Method show = XposedHelpers.findMethodExactIfExists(Toast.class, "show");
        if (show == null) {
            XposedBridge.log(TAG + ": Toast.show() not found, skip");
            return;
        }
        XposedBridge.hookMethod(show, new XC_MethodHook() {
            @Override
            protected void beforeHookedMethod(MethodHookParam param) {
                Object toast = param.thisObject;
                if (toast instanceof Toast && BLE_TOASTS.remove(toast)) {
                    param.setResult(null);
                }
            }
        });
    }

    private static boolean isBleMakeText(Object[] args) {
        if (args == null || args.length < 2
                || !(args[0] instanceof Context) || !(args[1] instanceof Integer)) {
            return false;
        }
        try {
            String name = ((Context) args[0]).getResources()
                    .getResourceName((Integer) args[1]);
            return name != null && name.endsWith(BLE_TOAST_RES_SUFFIX);
        } catch (Throwable t) {
            return false;
        }
    }
}
