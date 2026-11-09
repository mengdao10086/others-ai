package com.mengdao.lsposedtoolkit.hook.taplus;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;

import java.io.OutputStream;

import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedHelpers;

/**
 * 功能 1：传送门保存格式 PNG → JPEG。
 *
 * Hook Bitmap.compress() 把 CompressFormat.PNG 换成 JPEG；
 * Hook ContentValues.put() 把 mime_type 从 image/png 改成 image/jpeg。
 */
public final class TaplusSaveFormatHook {

    private TaplusSaveFormatHook() {
    }

    public static void install(ClassLoader classLoader) {
        hookBitmapCompress();
        hookContentValuesMimeType();
    }

    private static void hookBitmapCompress() {
        XposedHelpers.findAndHookMethod(Bitmap.class, "compress",
                CompressFormat.class, int.class, OutputStream.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        if (param.args[0] == CompressFormat.PNG) {
                            param.args[0] = CompressFormat.JPEG;
                            SaveEventLog.compressPngToJpeg();
                        }
                    }
                });
    }

    private static void hookContentValuesMimeType() {
        XposedHelpers.findAndHookMethod(ContentValues.class, "put",
                String.class, String.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        String key = (String) param.args[0];
                        if ("mime_type".equals(key) && "image/png".equals(param.args[1])) {
                            param.args[1] = "image/jpeg";
                            SaveEventLog.mimePngToJpeg();
                        }
                    }
                });
    }
}
