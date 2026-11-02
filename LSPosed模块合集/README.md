# MIUI 模块合集（LSPosed）

单 APK 合并三个原有模块：

| 功能 | 作用域 | 说明 |
|------|--------|------|
| 传送门保存增强 | `com.miui.contentextension` | PNG→JPEG、MIME 修正、阻止 `setBitmap(null)` 清空新 bitmap |
| 状态栏点击回顶屏蔽 | `com.android.systemui` | 屏蔽单击/双击状态栏触发的自动回顶，不影响双击锁屏等手势 |
| 屏蔽蓝牙解锁 Toast | `com.android.systemui` | 吞掉「已通过蓝牙设备解锁」提示；不改 HyperCeiler 的注册链路 |
| 相册内容分析控制 | `com.miui.gallery` + `com.xiaomi.aicr` | 相册设置页「其他设置」里加一行，手动启停内容分析；触发转交 aicr，回传真实状态；手动启动绑 aicr 大核 4-6，其它分析与停止后绑 0-3 |

各功能常开，无开关；是否生效由 LSPosed 中勾选的作用域决定。

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

1. **先卸载独立模块** `com.mengdao.galleryanalyze`（相册内容分析控制）与两个旧模块，避免同功能重复 hook。
2. 安装 `MIUI模块合集-v2.1.0.apk`，在 LSPosed 启用模块。
3. 作用域勾选 `com.miui.contentextension`、`com.android.systemui`、`com.miui.gallery`、`com.xiaomi.aicr`，重启对应进程或手机。
4. 日志：`adb logcat -s TaplusFix StatusBarClickBlock LSPosedToolkit GalleryAnalyze`

## 回滚

卸载 `com.mengdao.lsposedtoolkit`，重新安装 `D:\下载\Edge` 中的旧模块 APK，并在 LSPosed 中重新启用对应模块。

## 代码结构

```
app/src/main/java/com/mengdao/lsposedtoolkit/
├─ ModuleEntry.java                       # 单入口，按包名分发
├─ hook/
│  ├─ ContentExtensionHooks.java          # 传送门 Hook 组（功能级 try/catch）
│  ├─ SystemUiHooks.java                  # 系统界面 Hook 组
│  ├─ taplus/TaplusSaveFormatHook.java    # PNG→JPEG + MIME
│  ├─ taplus/TaplusRaceFixHook.java       # setBitmap(null) 竞态修复
│  ├─ systemui/StatusBarClickBlockHook.java
│  └─ systemui/BleUnlockToastHook.java    # 屏蔽蓝牙解锁 Toast
└─ gallery/                               # 相册内容分析控制
   ├─ GalleryHooks.java                   # 相册侧 Hook 组装配
   ├─ SettingsHook.java                   # 设置页追加行与启停按钮
   ├─ AnalyzeControl.java                 # 启动/停止/状态
   ├─ AicrProtocol.java                   # 与 aicr 的跨进程约定
   ├─ AicrTrigger.java                    # 拉起 aicr 保活服务（广播兜底）
   ├─ AicrStateReceiver.java              # 接收 aicr 回传的进度
   ├─ PowerGateHook.java                   # 充电/高电量门禁放宽
   ├─ ExecDirectlyLogHook.java             # execDirectly 决策日志
   ├─ LegacyNightWorkCleanupHook.java      # 清理 1.x 遗留周期任务
   ├─ Reflect.java                         # 沿父类/接口找方法
   └─ aicr/                                # aicr 侧（仅 :searchDataService）
      ├─ AicrHooks.java
      ├─ AiCrSearchDataBaseServiceHook.java # 主通道：保活服务 onStartCommand
      ├─ AisearchTriggerReceiverHook.java   # 备用通道：显式广播
      ├─ AicrTriggerDispatcher.java         # 两条通道共用的 provider 调用
      ├─ AicrStateReporter.java             # 状态/进度回传相册
      ├─ AicrWindowEndGuard.java            # 06:00 收尾停一次
      └─ AisearchTaskDiagnosticHook.java    # 只读诊断
```

## 变更

见 [CHANGELOG.md](CHANGELOG.md)。
