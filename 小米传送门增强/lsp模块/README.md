# TaplusFix — 小米传送门增强模块 (LSPosed)

## 功能

| 修改 | 效果 | 原理 |
|------|------|------|
| **PNG → JPEG** | 图片文件体积缩小 70-80% | Hook `Bitmap.compress()` 把 `CompressFormat.PNG` → `JPEG` |
| **MIME 类型修正** | 相册正确识别为 JPEG | Hook `ContentValues.put("mime_type")` → `image/jpeg` |
| **修复保存竞态 Bug** | 连续检测可正常保存所有图片 | 阻止 `setBitmap(null)` 清空新 bitmap |

详见 [LSPosed修改可行性分析.md](../LSPosed修改可行性分析.md)。

## 构建

### 前置条件

- Android Studio Hedgehog (2023.1.1) 或更高版本
- JDK 17+
- Android SDK 34+

### 步骤

```bash
# 方法一：Android Studio 打开
# 1. File → Open → 选择本目录
# 2. 等待 Gradle 同步完成
# 3. Build → Build Bundle(s) / APK(s) → Build APK

# 方法二：命令行构建
# 1. 生成 Gradle Wrapper（如有 Android Studio，会自动生成）
cd "LSPosed模块"
gradle wrapper --gradle-version 8.2
# 2. 设置 ANDROID_HOME 环境变量
export ANDROID_HOME=$HOME/Android/Sdk   # Linux/macOS
set ANDROID_HOME=C:\Users\<用户名>\AppData\Local\Android\Sdk  # Windows
# 3. 构建
./gradlew assembleRelease
```

构建产物：`app/build/outputs/apk/release/app-release.apk`

### 如果本地没有 Android SDK

1. 从 [Developer.Android.com](https://developer.android.com/studio#command-line-tools-only) 下载命令行工具
2. 解压到 `~/Android/Sdk/cmdline-tools/latest/`
3. 运行 `sdkmanager --install "platforms;android-34" "build-tools;34.0.0"`
4. 设置 `ANDROID_HOME` 指向 SDK 目录

## 安装与激活

1. 确保已安装 [LSPosed](https://github.com/LSPosed/LSPosed) 框架（Zygisk / 传统模式均可）
2. 安装 APK（`app-release.apk`）
3. 打开 LSPosed 管理器 → 模块 → 勾选 "Taplus 传送门增强"
4. **作用域**：勾选 `com.miui.contentextension`（小米传送门）
5. 重启系统 / 软重启作用域进程

## 验证

### 格式验证

```bash
# 在 adb shell 中检查保存的图片格式
adb shell
cd /sdcard/DCIM/taplus/taplus_image/
file *.jpg                    # 应为 JPEG
```

### Bug 验证

1. 长按触发传送门拾取
2. 点击保存 → 立即返回
3. 长按触发新拾取 → 点击保存
4. 重复 10 次 → 所有图片均应正常保存

## 日志查看

```bash
adb logcat -s "TaplusFix"
# 或查看 Xposed 日志
adb logcat -s "Xposed"
```

## 卸载

- LSPosed 管理器取消勾选，或直接卸载 APK。

## 风险

- JPEG 有损压缩 quality=100：画质损失几乎不可感知
- 阻止 `setBitmap(null)`：唯一副作用是 bitmap 多存活一段时间，GC 会自动回收
- 模块仅在 `com.miui.contentextension` 进程中生效，不影响其他应用

## 许可

MIT
