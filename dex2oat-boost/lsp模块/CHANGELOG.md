# CHANGELOG

## [1.0] - 2026-10-11

首个版本。作用域 `com.miui.packageinstaller`，零 root 优先。

- ① 安装期降档：hook 框架类 `PackageInstaller#createSession(SessionParams)`，反射置 `dexoptCompilerFilter="verify"`，
  并按 `sessionId` 记录被装包名。
- ② 装后重编译：安装完成立即、后台异步，以安装器身份调 `IPackageManager.performDexOptMode(pkg,false,"speed",true,true,null)`。
- ③ 自动降级：② 抛 `SecurityException`/失败 → `su -c "cmd package compile -m speed -f <pkg>"`；再失败交由系统 bg-dexopt。
- ④ 全程 try-catch，任何异常只记日志、no-op，绝不影响安装。
- 完成信号双源：安装完成广播（`ACTION_PACKAGE_ADDED/REPLACED`）+ `Session#commit` 兜底轮询，`triggerOnce` 幂等去重。
- 编译：Gradle 8.9 / AGP 8.2.0 / compileSdk 34；`sourceCompatibility=1.8`（规避 JDK 21 下 AGP 8.2 的 jlink 转换失败）。

### 后续调整（同版本内）

- **改名**：工程目录改为 `dex2oat-boost/`；Java 包名改为 `com.mengdao.dex2oatboost`；应用显示名 → `dex2oat boost`。（新旧名对照见方案存放区《安装器dex2oat-hook-实施报告.md》的「改名」节。）
- **去界面**：删除 `MainActivity` 及 manifest 的 `MAIN`/`LAUNCHER` intent-filter；无桌面快捷方式，仅由 LSPosed 管理器识别（`xposedmodule` 等元数据保留）。
- **可观测性**：`Mlog` 改双通道输出（`android.util.Log` + `XposedBridge.log`）；`handleLoadPackage` 最前面无条件记一行启动日志，便于确认模块是否被注入。
- 签名 A 已由 **AOSP 官方 r tag**（android-13/14/15/16.0.0_r1）复核（详见方案存放区 `安装器dex2oat-hook-ART源码核实.md` §七）。

### 2026-10-12 调整（同版本内）

- **诊断增强（保留）**：② 前打「调用方对照」一组数据（`sdk`/`myUid`/`callingUid`/`pkg`/`installingPkg`/`initiatingPkg`/`installerUid`）；② 异常改为打**真实异常原文**（类名 + message + 前 8 行堆栈），取代原先自贴的「安装者例外不成立」标签；③ 失败时补 `PATH`、`su` 解析结果、候选路径存在性。
- **移除 A16 上失效的 commit 兜底**：`PackageInstaller.Session` 在 Android 16 只剩一个 `IPackageInstallerSession` binder 字段、**无 int 会话 id 字段**（AOSP `android-16.0.0_r1` 已核），原「hook `Session#commit` 读会话 id」路径取不到值、恒为空转，故连同 `CommitFallback`、`SessionIdResolver` 一并**整体移除**；完成信号只保留真机已验证的安装完成广播。删除随之失效的 `InstallCompleteReceiver.isFreshlyInstalled`。
- **文档**：`README.md` §三 新增「只需给安装器授权 root、模块 APK 无需 root」及真机判定方法，并注明与纯 root（Magisk 模块）版**相互独立**、同启会重复编译；`app/逻辑说明.md` 同步（类表、完成信号、② 触发原因改为应用休眠门禁）。
