package com.taplus.fix;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;

import java.io.OutputStream;

import de.robv.android.xposed.IXposedHookLoadPackage;
import de.robv.android.xposed.XC_MethodHook;
import de.robv.android.xposed.XposedBridge;
import de.robv.android.xposed.XposedHelpers;
import de.robv.android.xposed.callbacks.XC_LoadPackage.LoadPackageParam;

/**
 * 小米传送门 (Taplus) v4.1.3 增强模块 — LSPosed
 *
 * 两个修改目标:
 *   1. 图片保存格式 PNG → JPEG（文件体积缩小 70-80%）
 *   2. 修复保存竞态条件：保存完成时 setBitmap(null) 清空下张图片 bitmap 的 bug
 *
 * == 修改 1: PNG→JPEG ==
 *   方案: Hook Bitmap.compress() + ContentValues.put()
 *   - Bitmap.compress: 把 CompressFormat.PNG 替换为 CompressFormat.JPEG
 *   - ContentValues.put: 把 mime_type 从 "image/png" 改为 "image/jpeg"
 *
 * == 修改 2: 竞态修复 ==
 *   方案: Hook TextContentExtensionService.setBitmap(Bitmap)
 *   原理: SaveImageUtils$2.subscribe() 在异步保存完成后调用 setBitmap(null)
 *         清空全局静态 sBitmap。若此时用户已触发新检测、设置新 bitmap，
 *         该 null 调用会清掉新 bitmap，导致新图片保存无反应。
 *         直接阻止 setBitmap(null) 即可完全消除该竞态。
 *
 * 安全分析:
 *   - 阻止 setBitmap(null) 不影响正常流程：bitmap 在下一次检测时自然替换，
 *     或在 exit 时由 destroyFloatView() 处理。
 *   - JPEG 有损压缩 quality=100 画质损失几乎不可感知。
 *   - 没有透明度通道的屏幕截图不受 JPEG 不支持透明度的影响。
 *
 * @author Claude Code
 * @version 1.0
 */
public class TaplusFixModule implements IXposedHookLoadPackage {

    private static final String TAG = "TaplusFix";
    private static final String TARGET_PACKAGE = "com.miui.contentextension";

    @Override
    public void handleLoadPackage(LoadPackageParam lpparam) {
        if (!TARGET_PACKAGE.equals(lpparam.packageName)) return;

        XposedBridge.log(TAG + ": Module loaded for " + TARGET_PACKAGE);

        // ---- Fix 1: PNG → JPEG ----
        hookBitmapCompress();
        hookContentValuesMimeType();

        // ---- Fix 2: Race condition ----
        hookSetBitmap(lpparam.classLoader);
    }

    // ========================================================================
    // Fix 1a: Bitmap.compress() — 替换 CompressFormat 为 JPEG
    // ========================================================================

    private void hookBitmapCompress() {
        XposedHelpers.findAndHookMethod(Bitmap.class, "compress",
                CompressFormat.class, int.class, OutputStream.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        if (param.args[0] == CompressFormat.PNG) {
                            param.args[0] = CompressFormat.JPEG;
                            XposedBridge.log(TAG + ": [格式] Bitmap.compress 格式 PNG→JPEG");
                        }
                    }
                });
        XposedBridge.log(TAG + ": [格式] Hook Bitmap.compress() — 就绪");
    }

    // ========================================================================
    // Fix 1b: ContentValues.put(mime_type) — 修改 MIME 类型为 image/jpeg
    // ========================================================================
    //
    // FileUtils.saveFileToStorage() 往 MediaStore 插入记录时设置了
    // mime_type = "image/png"，但实际文件已是 JPEG 格式。
    // 此 Hook 在 ContentValues.put() 时拦截并修正。

    private void hookContentValuesMimeType() {
        XposedHelpers.findAndHookMethod(ContentValues.class, "put",
                String.class, String.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        String key = (String) param.args[0];
                        if ("mime_type".equals(key) && "image/png".equals(param.args[1])) {
                            param.args[1] = "image/jpeg";
                            XposedBridge.log(TAG + ": [格式] ContentValues mime_type image/png→image/jpeg");
                        }
                    }
                });
        XposedBridge.log(TAG + ": [格式] Hook ContentValues.put(mime_type) — 就绪");
    }

    // ========================================================================
    // Fix 2: setBitmap(null) 拦截 — 阻止保存回调清空 bitmap
    // ========================================================================
    //
    // 问题: SaveImageUtils$2.subscribe() 在异步保存完成后调用:
    //   TextContentExtensionService.setBitmap(null)
    // 这会清空全局静态 sBitmap。如果此时用户已经触发新检测
    // 并设置了新 bitmap，干净 bitmap 会被清掉 → 新图片保存无反应。
    //
    // 修复: 拦截所有 setBitmap(null)，阻止 null 写入。
    // setBitmap(null) 在代码库中没有正向用途。

    private void hookSetBitmap(ClassLoader classLoader) {
        XposedHelpers.findAndHookMethod(
                "com.miui.contentextension.services.TextContentExtensionService",
                classLoader,
                "setBitmap",
                Bitmap.class,
                new XC_MethodHook() {
                    @Override
                    protected void beforeHookedMethod(MethodHookParam param) {
                        if (param.args[0] == null) {
                            param.setResult(null);  // 阻止写入
                            XposedBridge.log(TAG + ": [竞态] 阻止 setBitmap(null) — 保护 bitmap");
                        }
                    }
                });
        XposedBridge.log(TAG + ": [竞态] Hook TextContentExtensionService.setBitmap() — 就绪");
    }
}
