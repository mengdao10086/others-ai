package com.mengdao.lsposedtoolkit.hook.taplus;

import android.graphics.Bitmap;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;

/**
 * 功能 2：修复保存竞态。
 *
 * SaveImageUtils$2.subscribe() 异步保存完成后会调用 setBitmap(null)，
 * 可能清掉用户刚触发的新 bitmap。拦截所有 setBitmap(null)，阻止清空。
 */
public final class TaplusRaceFixHook {

    private static final String TAG = "TaplusFix";
    private static final String SERVICE_CLASS =
            "com.miui.contentextension.services.TextContentExtensionService";

    private TaplusRaceFixHook() {
    }

    public static void install(ClassLoader classLoader) {
        XposedHelpers.findAndHookMethod(SERVICE_CLASS, classLoader, "setBitmap", Bitmap.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        if (param.args[0] == null) {
                            param.setResult(null);
                            XposedBridge.log(TAG + ": [竞态] 阻止 setBitmap(null) — 保护 bitmap");
                        }
                    }
                });
    }
}
