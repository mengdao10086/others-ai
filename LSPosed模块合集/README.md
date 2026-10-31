# MIUI 模块合集（LSPosed）

单 APK 合并两个原有模块：

| 功能 | 作用域 | 说明 |
|------|--------|------|
| 传送门保存增强 | `com.miui.contentextension` | PNG→JPEG、MIME 修正、阻止 `setBitmap(null)` 清空新 bitmap |
| 状态栏点击回顶屏蔽 | `com.android.systemui` | 屏蔽单击/双击状态栏触发的自动回顶，不影响双击锁屏等手势 |

各功能常开，无界面、无开关；是否生效由 LSPosed 中勾选的作用域决定。
`com.miui.gallery` 已在 `res/values/arrays.xml` 中注释预留，等相册功能实现后再启用。

## 构建

```bash
JAVA_HOME=D:/tools/jdk-17.0.2 ./gradlew :app:assembleRelease
```

- AGP 8.2.2 / Gradle 8.9 / JDK 17
- compileSdk 34、minSdk 29、targetSdk 34
- 签名使用仓库内确定性密钥 `lsp模块/app/toolkit.jks`
- 项目路径含中文，`gradle.properties` 已设 `android.overridePathCheck=true`

产物：`lsp模块/app/build/outputs/apk/release/app-release.apk`

## 安装与验证

设备侧操作由用户自行处理。参考步骤：

1. 在 LSPosed 中停用/卸载两个旧模块，避免同名功能重复 hook。
2. 安装 `MIUI模块合集-v2.0.0.apk`，在 LSPosed 启用模块。
3. 作用域勾选 `com.miui.contentextension` 与 `com.android.systemui`，重启对应进程或手机。
4. 日志：`adb logcat -s TaplusFix StatusBarClickBlock LSPosedToolkit`

## 回滚

卸载 `com.mengdao.lsposedtoolkit`，重新安装 `D:\下载\Edge` 中的旧模块 APK，并在 LSPosed 中重新启用对应模块。

## 代码结构

```
app/src/main/java/com/mengdao/lsposedtoolkit/
├─ ModuleEntry.java                       # 单入口，按包名分发
└─ hook/
   ├─ ContentExtensionHooks.java          # 传送门 Hook 组（功能级 try/catch）
   ├─ SystemUiHooks.java                  # 系统界面 Hook 组
   ├─ taplus/TaplusSaveFormatHook.java    # PNG→JPEG + MIME
   ├─ taplus/TaplusRaceFixHook.java       # setBitmap(null) 竞态修复
   └─ systemui/StatusBarClickBlockHook.java
```

## 变更

见 [CHANGELOG.md](CHANGELOG.md)。
