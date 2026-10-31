# 小米传送门 v4.1.3 — LSPosed 模块修改可行性分析

> 两份修改目标：
> 1. **图片保存格式 PNG → JPG**
> 2. **修复保存图片时的竞态条件 Bug**

---

## 一、修改 1：图片保存格式 PNG → JPG

### 1.1 保存链路全景

```
用户点击"保存"按钮
    │
    ▼
TaplusRecognitionExpandedImageCard$2.onClick()
    │   (或 TaplusRecognitionExpandedImageCard$3.onClick 超清模式)
    ▼
SaveImageUtils.saveNormalImage(context, width, height)
    │
    ├─ getBitmap() 获取全局截图
    ├─ 权限检查
    └─ 创建 RxJava Observable (IO 线程)
        │
        ▼ subscribe()
        BitmapUtils.saveBitmapToStorage(context, bitmap)
            │
            ├─ FileUtils.cacheBitmap(bitmap)        ← ★ 格式 ①
            │   └─ bitmap.compress(PNG, 100, stream)
            │   └─ 写入 cacheDir/tmp.png
            │
            └─ FileUtils.saveFileToStorage(context, file) ← ★ 格式 ②
                └─ MediaStore 插入，mime_type = "image/png"
                └─ 目标路径: DCIM/taplus/taplus_image/<timestamp>
```

### 1.2 需要修改的确切代码位置

#### 位置 ① — `FileUtils.cacheBitmap()` (PNG 硬编码)

**文件**: `com.miui.contentextension.utils.FileUtils`

```smali
# 当前代码 (Line 22-26, FileUtils.smali)
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
    const/16 v2, 0x64    # quality = 100
    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(...)Z
```

**需要改成**:
```smali
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
```

> **注意**: JPEG 是有损压缩，quality 100 仍有轻微损失但文件体积远小于 PNG。
> 也可考虑用 `WEBP_LOSSLESS`（Android 10+ 支持，比 PNG 体积小 25-35%）。

#### 位置 ② — `FileUtils.saveFileToStorage()` (MIME type 硬编码)

**文件**: `com.miui.contentextension.utils.FileUtils`

```smali
# 当前代码 (Line 554-556, FileUtils.smali)
    const-string v2, "_display_name"              # 文件名 key
    ...
    const-string v2, "mime_type"                   # MIME type key
    const-string v4, "image/png"                   # ← ★ 这里
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(...)
```

**需要改成**:
```smali
    const-string v4, "image/jpeg"
```

> **注意**: `_display_name` 和 `_display_name` 当前用的是时间戳无扩展名。改 JPG 后建议同时给文件名加 `.jpg` 后缀，否则系统相册可能因 MIME 与扩展名不匹配而无法识别。但当前代码用的是 `String.valueOf(System.currentTimeMillis())` 作为文件名（无扩展名），所以仅改 MIME 就够——Android MediaStore 以 MIME 为准。

### 1.3 LSPosed Hook 方案

#### 方案 A：Hook `Bitmap.compress()`（推荐，侵入最小）

对所有 `Bitmap.compress()` 调用拦截，将 `PNG` 格式参数替换为 `JPEG`。

```java
// LSPosed 模块伪代码
XposedHelpers.findAndHookMethod(Bitmap.class, "compress",
    Bitmap.CompressFormat.class, int.class, OutputStream.class,
    new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            Bitmap.CompressFormat format = (Bitmap.CompressFormat) param.args[0];
            if (format == Bitmap.CompressFormat.PNG) {
                // 只改传送门进程的调用
                if ("com.miui.contentextension".equals(BuildConfig.APPLICATION_ID)) {
                    param.args[0] = Bitmap.CompressFormat.JPEG;
                }
            }
        }
    });
```

**优点**: 一处 Hook 覆盖所有保存路径（普通 + 超清模式），不需要 Hook 多个方法。

**缺点**: 可能误改应用内其他 PNG 压缩调用。可以通过包名 + 调用栈过滤缩小范围。

#### 方案 B：Hook `FileUtils.saveFileToStorage()`

```java
// Hook cacheBitmap — 改压缩格式
XposedHelpers.findAndHookMethod("com.miui.contentextension.utils.FileUtils", 
    lpparam.classLoader,
    "cacheBitmap", Bitmap.class,
    new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            // 替换 Bitmap.compress 的参数需要在方法内部 hook
            // 或者直接 hook Bitmap.compress
        }
    });

// Hook saveFileToStorage — 改 MIME type
XposedHelpers.findAndHookMethod("com.miui.contentextension.utils.FileUtils",
    lpparam.classLoader,
    "saveFileToStorage", Context.class, File.class,
    new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            // 这里需要改 ContentValues 中的 mime_type
            // 但该方法内部使用局部变量，需在方法执行后修改
        }
    });
```

**方案 A 更为简洁可靠**。

### 1.4 改 JPG 的影响评估

| 维度 | PNG (当前) | JPEG (改后) |
|------|-----------|-------------|
| 文件大小 | 大（截图 PNG 通常 2-8 MB） | 小（同等尺寸 300-800 KB） |
| 画质 | 无损 | 有损（quality=100 几乎不可感知） |
| 透明度 | 支持 | 不支持（屏幕截图无透明通道,无影响） |
| 系统兼容 | 良好 | 良好 |

**结论**: PNG→JPG 改动简单、安全、收益明确。

---

## 二、修改 2：保存竞态条件 Bug 修复

### 2.1 Bug 完整分析

#### 根本原因

**Bitmap 生命周期管理缺陷**——全局静态变量 `sBitmap` 没有任何并发保护。

关键的竞态窗口：

```
时间轴 ──────────────────────────────────────────────────►

线程 A (主线程):  保存图片 A ──────→ RxJava IO 保存中 ──────→ setBitmap(null)
                                                               ↑ 清除了 bitmap B
线程 B (主线程):                   触发拾取 B → setBitmap(bitmapB)
                                              ↑ bitmap B 被设置
```

#### 详细触发路径

| 步骤 | 线程 | 操作 | 状态变化 |
|------|------|------|---------|
| 1 | 主线程 | 检测到图片 A | `sBitmap = bitmapA`, `sIsTaskFinished = false` |
| 2 | 主线程 | 用户点击"保存" | `SaveImageUtils.saveNormalImage()` 读取 `sBitmap` 存入局部变量 |
| 3 | IO 线程 | RxJava 开始异步保存 bitmapA | 正在写文件 |
| 4 | 主线程 | 用户退出悬浮窗 | `quitByDefault()` → `sIsTaskFinished = true` |
| 5 | 主线程 | 用户长按触发新检测 B | `onStartPick()` → `sBitmap = bitmapB` |
| 6 | **IO 线程** | **保存完成，回调 onNext** | **`setBitmap(null)` → sBitmap 被清空！** |
| 7 | 主线程 | 用户点保存 B | `getBitmap()` 返回 null，**保存无反应** |

#### 第二种异常表现的解释

当 `sBitmap` 被清空后，代码可能走 `getBackupBitmap()` 路径：

```java
// SaveImageUtils.saveNormalImage() 中
bitmap = TextContentExtensionService.getBitmap();  // null!
if (bitmap == null) {
    bitmap = TextContentExtensionService.getBackupBitmap(); // 可能也不是当前图片
}
```

如果 `sBackupBitmap` 也是旧的，保存无反应；如果 `sBackupBitmap` 是某种 fallback，则保存结果异常。

当 `sIsTaskFinished` 检查卡住时（步骤 2 后 sIsTaskFinished=false），新检测可能无法触发正常的拾取流程，而是进入**局部截图模式**（`partial/PartialScreenshotView`）——这就是用户描述的"变为检测完成后再手动调整的截图模式"。

### 2.2 修复方案

#### 方案 A：阻止 save 成功后清空 bitmap（推荐，LSPosed 一行 Hook）

**问题点**: `SaveImageUtils$2.subscribe()` 第 104 行

```smali
invoke-static {v1}, Lcom/miui/contentextension/services/TextContentExtensionService;->setBitmap(Landroid/graphics/Bitmap;)V
; v1 = null
```

这行是**不必要的**——保存完成后清空 bitmap 没有任何正当理由。bitmap 会在下次检测时自然替换，或者在退出时由 `destroyFloatView()` 清理。

**LSPosed 修复**:
```java
// Hook SaveImageUtils$2，移除 setBitmap(null) 调用
XposedHelpers.findAndHookMethod(
    "com.miui.contentextension.utils.SaveImageUtils$2",
    lpparam.classLoader,
    "subscribe", 
    io.reactivex.ObservableEmitter.class,  // 参数类型
    new XC_MethodHook() {
        @Override
        protected void afterHookedMethod(MethodHookParam param) {
            // do nothing — 跳过 setBitmap(null)
            // 原来的 setBitmap(null) 在 subscribe 方法末尾调用
        }
    });
```

但更精确的做法是 Hook `setBitmap()` 方法本身：

```java
// Hook setBitmap() — 不允许保存完成后清空 bitmap
XposedHelpers.findAndHookMethod(
    "com.miui.contentextension.services.TextContentExtensionService",
    lpparam.classLoader,
    "setBitmap",
    Bitmap.class,
    new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            if (param.args[0] == null) {
                // 获取调用栈，判断是否来自 SaveImageUtils 的保存完成回调
                StackTraceElement[] stack = Thread.currentThread().getStackTrace();
                for (StackTraceElement e : stack) {
                    if (e.getClassName().contains("SaveImageUtils")) {
                        param.setResult(null); // 阻止 setBitmap(null)
                        return;
                    }
                }
            }
        }
    });
```

但这有副作用——万一其他地方确实需要清空 bitmap 呢？

**更精确的修复：增加引用计数或 generation ID**

真正的修复应该是放弃全局 bitmap 的共享引用模式，让 save 持有自己的一份 bitmap 副本。但通过 LSPosed 实现重构较复杂。

**最简单的安全修复：**

```java
// Hook setBitmap(null) — 完全阻止 save 完成后清空
// 因为没有任何正向逻辑依赖 bitmap 被清空这个行为
XposedHelpers.findAndHookMethod(
    "com.miui.contentextension.services.TextContentExtensionService",
    lpparam.classLoader,
    "setBitmap",
    Bitmap.class,
    new XC_MethodHook() {
        @Override
        protected void beforeHookedMethod(MethodHookParam param) {
            if (param.args[0] == null) {
                param.setResult(null); // 阻止所有 setBitmap(null) 调用
            }
        }
    });
```

**安全分析**: 全部 `setBitmap(null)` 调用点（含 SaveImageUtils 和 destroy 流程）中，销毁流程会通过 `destroyFloatView()` 和 `stopSelf()` 来清理界面，不依赖 `setBitmap(null)` 来释放内存。阻止 `setBitmap(null)` 不会导致内存泄漏——因为 Android GC 会在引用消失后回收 Bitmap。

#### 方案 B：给 sIsTaskFinished 加保护

除了 bitmap 问题外，`sIsTaskFinished` 状态也有竞态。修复方案：

```java
// Hook setIsTaskFinished 方法，在 save 进行中阻止被覆盖
```

但这不是 Bug 的主要根源，方案 A 已足够。

### 2.3 修复后的流程图

```
修复前：
  保存 A → setBitmap(null) → 图片 B 的 bitmap 被清 → 保存 B 无反应
                                                        ↑ bug

修复后：
  保存 A → [setBitmap(null) 被跳过] → 图片 B 的 bitmap 完好 → 保存 B 正常
```

---

## 三、LSPosed 模块综合建议

### 3.1 推荐实现策略

| 修改项 | Hook 目标 | 方法 | 风险 |
|--------|-----------|------|------|
| PNG→JPG | `Bitmap.compress()` | 替换 format 参数为 JPEG | 低（限定包名） |
| Bug 修复 | `TextContentExtensionService.setBitmap()` | 阻止 null 参数 | 低（不影响正常流程） |

### 3.2 模块代码骨架

```java
// LSPosed 模块入口
public class TaplusFixModule implements IXposedHookLoadPackage {
    @Override
    public void handleLoadPackage(XC_LoadPackage.LoadPackageParam lpparam) {
        if (!"com.miui.contentextension".equals(lpparam.packageName)) return;

        findAndHookMethod(Bitmap.class, "compress",
            Bitmap.CompressFormat.class, int.class, OutputStream.class,
            new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) {
                    if (param.args[0] == Bitmap.CompressFormat.PNG) {
                        param.args[0] = Bitmap.CompressFormat.JPEG;
                    }
                }
            });

        findAndHookMethod(
            "com.miui.contentextension.services.TextContentExtensionService",
            lpparam.classLoader,
            "setBitmap",
            Bitmap.class,
            new XC_MethodHook() {
                @Override
                protected void beforeHookedMethod(MethodHookParam param) {
                    if (param.args[0] == null) {
                        param.setResult(null); // 阻止 bitmap 被保存回调清空
                    }
                }
            });
    }
}
```

### 3.3 验证方法

1. **格式检查**: 保存图片后用 `file` 命令或属性查看是否为 JPEG
2. **Bug 验证**: 
   - 检测图片 A → 点保存 → 立即返回 → 检测图片 B → 点保存 B → 验证 B 可正常保存
   - 重复 10 次，确认不再复现

### 3.4 可能的副作用

| 修改 | 潜在副作用 | 严重程度 |
|------|-----------|---------|
| Bitmap.compress PNG→JPEG | 应用内其他 PNG 压缩也被改——但传送门进程内无此需求 | 低 |
| 阻止 setBitmap(null) | 内存中 bitmap 对象多存活一段时间——GC 会处理，无泄漏 | 极低 |
