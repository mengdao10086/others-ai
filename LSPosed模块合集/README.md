# MIUI 模块合集（LSPosed）

单 APK 合并多个原有模块，包含六项功能：

| 功能 | 作用域 | 说明 |
|------|--------|------|
| 传送门保存增强 | `com.miui.contentextension` | PNG→JPEG、MIME 修正、阻止 `setBitmap(null)` 清空新 bitmap |
| 状态栏点击回顶屏蔽 | `com.android.systemui` | 屏蔽单击/双击状态栏触发的自动回顶，不影响双击锁屏等手势 |
| 屏蔽蓝牙解锁 Toast | `com.android.systemui` | 吞掉「已通过蓝牙设备解锁」提示；不改 HyperCeiler 的注册链路 |
| 相册内容分析控制 | `com.miui.gallery` + `com.xiaomi.aicr` | 相册设置页「其他设置」里加一行，可手动启停内容分析；包含分析进度展示与写回路径兼容修复；触发转交 aicr，回传真实状态；手动启动只把 aicr 分析线程绑 4-6 并每 3 秒重绑，其它与停止后绑 0-3；自动触发的分析运行中「启动」仍可点，点击把线程绑 4-6 后按钮显示「已加速」并置灰 |
| 最近任务上滑杀后台 | `android`（system_server） | 省电策略为无限制的应用在 `killOnce` 处跳过；默认启用，无模块级开关 |
| Scene 迷你监视器增强 | `com.omarea.vtools` | 截屏时通过 `SurfaceControl` 的 `SKIP_SCREENSHOT` 标志把迷你监视器排除出系统截屏；重开时跳过 2 秒占位，立即刷新；默认启用，无模块级开关 |

各功能默认启用，无模块级开关；是否生效由 LSPosed 中勾选的作用域决定。

## 构建

```bash
JAVA_HOME=D:/tools/jdk-17.0.2 ./gradlew :app:assembleRelease
```

- AGP 8.2.2 / Gradle 8.9 / JDK 17
- compileSdk 34、minSdk 29、targetSdk 34
- 签名使用仓库内确定性密钥 `lsp模块/app/toolkit.jks`
- 项目路径含中文，`gradle.properties` 已设 `android.overridePathCheck=true`

产物：`lsp模块/app/build/outputs/apk/release/app-release.apk`

诊断探针放在独立 source set，release 包不含这些类；需要时构建 `:app:assembleDiag`（`src/diag/java`，不混淆）。

## 安装与验证

设备侧操作由用户自行处理。参考步骤：

1. 合集已包含原独立模块的全部功能；`com.mengdao.galleryanalyze` 等旧独立模块仅作存档，若曾安装请卸载，避免同功能重复 hook。
2. 安装 `D:\下载\Edge` 中的最新模块 APK，在 LSPosed 启用模块。
3. 作用域勾选 `com.miui.contentextension`、`com.android.systemui`、`com.miui.gallery`、`com.xiaomi.aicr`、`android`、`com.omarea.vtools`，重启对应进程或手机。
4. 日志：`adb logcat -s TaplusFix StatusBarClickBlock LSPosedToolkit GalleryAnalyze`；状态/触发日志同一 key 5 分钟最多一条，debug 日志默认关闭（`Logs.ENABLED=false`）

## 回滚

卸载 `com.mengdao.lsposedtoolkit`，重新安装 `D:\下载\Edge` 中的旧模块 APK，并在 LSPosed 中重新启用对应模块。

## 代码结构

```
app/src/main/java/com/mengdao/lsposedtoolkit/
├─ ModuleEntry.java                       # 单入口，按包名分发
├─ Logs.java                              # 统一日志出口（debug 开关 + 状态限频）
├─ hook/
│  ├─ ContentExtensionHooks.java          # 传送门 Hook 组（功能级 try/catch）
│  ├─ SystemUiHooks.java                  # 系统界面 Hook 组
│  ├─ taplus/TaplusSaveFormatHook.java    # PNG→JPEG + MIME
│  ├─ taplus/TaplusRaceFixHook.java       # setBitmap(null) 竞态修复
│  ├─ systemui/StatusBarClickBlockHook.java
│  ├─ systemui/BleUnlockToastHook.java    # 屏蔽蓝牙解锁 Toast
│  ├─ scene/                              # Scene 迷你监视器增强（作用域 com.omarea.vtools）
│  │  ├─ MiniMonitorScreenshotSkipHook.java  # SKIP_SCREENSHOT 截屏排除
│  │  └─ MiniMonitorRefreshDelayHook.java    # 跳过重开 2 秒占位
│  └─ systemserver/                       # 最近任务上滑杀后台（作用域 android）
│     ├─ NoSwipeToKillHook.java
│     └─ PowerPolicyReader.java
└─ gallery/                               # 相册内容分析控制
   ├─ GalleryHooks.java                   # 相册侧 Hook 组装配
   ├─ SettingsHook.java                   # 设置页追加行、进度与启停按钮
   ├─ SearchProgressPinHook.java          # 搜索页进度常驻
   ├─ AnalyzeControl.java                 # 启动/停止/状态
   ├─ AicrProtocol.java                   # 与 aicr 的跨进程约定
   ├─ AicrTrigger.java                    # 拉起 aicr 保活服务（广播兜底）
   ├─ AicrStateReceiver.java              # 接收 aicr 回传的进度
   ├─ WriteBackPathAliasHook.java         # 写回路径大小写别名修复
   ├─ DozeWhitelist.java                  # 手动分析期间的 Doze 白名单
   ├─ PowerGateHook.java                  # 充电/高电量门禁放宽
   ├─ ExecDirectlyLogHook.java            # execDirectly 决策日志
   ├─ LegacyNightWorkCleanupHook.java     # 清理 1.x 遗留周期任务
   ├─ WriteBackProbe.java                 # 写回只读探针（默认关闭）
   ├─ Reflect.java                        # 沿父类/接口找方法
   └─ aicr/                               # aicr 侧（仅 :searchDataService）
      ├─ AicrHooks.java
      ├─ AiCrSearchDataBaseServiceHook.java # 主通道：保活服务 onStartCommand
      ├─ AisearchTriggerReceiverHook.java   # 备用通道：显式广播
      ├─ AicrTriggerDispatcher.java         # 两条通道共用的 provider 调用
      ├─ AicrStateReporter.java             # 状态/进度回传相册
      ├─ RecentsLock.java                   # 分析期间最近任务锁定
      ├─ AicrCpuAffinity.java               # 分析线程 CPU 亲和
      ├─ PendingQueryTrimHook.java          # 摘掉 pet/iaa/crop 恒 -1 条件
      └─ AicrWindowEndGuard.java            # 06:00 后亮屏/未充电时收尾停一次
```

```
app/src/diag/java/com/mengdao/lsposedtoolkit/gallery/aicr/   # 仅 diag 构建
├─ DiagnosticsBootstrap.java        # 反射入口，release 中不存在
├─ AisearchTaskDiagnosticHook.java  # 只读心跳诊断
├─ AicrProgressDiagnostics.java     # 进度采样诊断
├─ StageWriteProbe.java             # 阶段写入探针
├─ FaceInitProbe.java               # 人脸初始化探针
└─ DbStateSnapshot.java             # 数据库状态分布快照
```

`WriteBackProbe`、`StageWriteProbe`、`FaceInitProbe`、`AicrProgressDiagnostics` 等探针默认关闭（`ENABLED=false`），需要时改 `true` 后用 diag 构建。

## 变更

见 [CHANGELOG.md](CHANGELOG.md)。
