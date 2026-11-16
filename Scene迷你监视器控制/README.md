# Scene 迷你监视器控制（LSPosed）

独立 LSPosed 模块，只包含 Scene（`com.omarea.vtools`）迷你监视器的两项增强：

| 功能 | 说明 |
|------|------|
| 截屏隐藏 | 窗口挂载后按视图资源 entry 名识别迷你监视器，给根 `SurfaceControl` 设置 `SKIP_SCREENSHOT`，系统截屏不再包含该浮窗 |
| 跳过 2 秒占位 | hook `Timer.schedule(TimerTask,long,long)`，仅把 `(2000L, 1500L)` 的初始延迟改为 0，周期与任务不变 |

判据与合集一致：`fw_mini_col3_value` + `fw_cpu_freq` 双重确认，`(2000, 1500)` 参数匹配，不依赖 Scene 的混淆类名。任何反射或 hook 失败只吞掉异常，不影响 Scene。

## 启用

1. 安装 APK。
2. 在 LSPosed 中启用模块，作用域只勾 `com.omarea.vtools`。
3. 重启 Scene 进程或手机。

> **冲突提示**：若已给「MIUI 模块合集」勾选了 `com.omarea.vtools`，两个模块会重复 hook 同一功能，只能二选一：停用其中一个模块，或在 LSPosed 中取消其中一个模块的 `com.omarea.vtools` 作用域。

## 构建

```bash
cd lsp模块
JAVA_HOME=D:/tools/jdk-17.0.2 ./gradlew :app:assembleRelease
```

- AGP 8.2.2 / Gradle 8.9 / JDK 17
- compileSdk 34、minSdk 29、targetSdk 34
- 签名使用仓库内密钥 `lsp模块/app/scenemonitor.jks`
- 产物：`lsp模块/app/build/outputs/apk/release/app-release.apk`

## 日志

日志统一走 `SceneLog`，`ENABLED=false` 默认关闭，release 构建由编译期常量折叠剔除日志代码与字符串。排查时改 `SceneLog.ENABLED = true` 重新编译，输出到 LSPosed 日志，tag 为 `SceneMonitor`。

## 代码结构

```
app/src/main/java/com/mengdao/scenemonitor/
├─ SceneMonitorModule.java              # 单入口，仅处理 com.omarea.vtools 主进程
├─ SceneLog.java                        # 日志开关（ENABLED=false）
└─ hook/
   ├─ SceneHooks.java                   # 功能级 try/catch
   ├─ MiniMonitorScreenshotSkipHook.java # SKIP_SCREENSHOT 截屏排除
   └─ MiniMonitorRefreshDelayHook.java   # 跳过重开 2 秒占位
```
