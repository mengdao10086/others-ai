# dex2oat boost（LSPosed 模块）

作用域**只覆盖 MIUI 安装器**（`com.miui.packageinstaller`）的 LSPosed 模块：

1. **安装期降档**：安装器建会话时，把该会话的 `dexoptCompilerFilter` 反射置为 `verify`（装得快）。
2. **装后重编译**：安装完成**立即**、后台异步地，以**安装器身份**调 `IPackageManager.performDexOptMode(pkg,false,"speed",true,true,null)` 重编译为 `speed`（用得爽）。
3. **自动降级**：② 抛 `SecurityException`/失败 → 改走 root `su -c "cmd package compile -m speed -f <pkg>"`；再失败则由系统 bg-dexopt 兜底。
4. **绝不影响安装**：全程 try-catch，任何异常只记日志、no-op。

钩子细节（hook 点、隐藏 API 获取、降级路径）见 [`app/逻辑说明.md`](app/逻辑说明.md)。
验收证据与风险见实施方案存放区的《安装器dex2oat-hook-实施报告.md》。

---

## 一、环境要求

| 项 | 值 |
|---|---|
| JDK | 本机 OpenJDK **21** 已验证可用 |
| Gradle | 8.9（wrapper 自带，`gradle/wrapper/`） |
| AGP | 8.2.0 |
| compileSdk / build-tools | **34**（`local.properties` 指向本机 SDK） |
| minSdk / targetSdk | 28 / 34 |

> **为什么 `sourceCompatibility` 是 1.8**：本机只有 JDK 21，而 AGP 8.2.0 在 JDK 21 下编译
> `sourceCompatibility ≥ 9` 的工程时会触发 `JdkImageTransform`，其内部 `jlink` 因
> `core-for-system-modules.jar` 的 `ModuleTarget` 属性不含分隔符（`android`）而失败：
> `jlink: ModuleTarget is malformed: platformString missing delimiter: android`。
> 改用 Java 8 目标即可完全绕开该转换（本模块未用任何 Java 9+ 语法/API）。
> 若日后有 JDK 17，可将 `app/build.gradle.kts` 的 `compileOptions` 改回 `VERSION_11`。

## 二、编译

```bash
# 在 lsp模块 目录下
./gradlew :app:assembleRelease
# 或（供脚本/CI，指定项目目录）
bash <仓库>/杂项/dex2oat-boost/lsp模块/gradlew -p <...>/lsp模块 :app:assembleRelease
```

产物：`app/build/outputs/apk/release/app-release.apk`（约 29 KB，release 已用本工程 keystore 签名）。

## 三、部署

1. 安装 APK（`adb install -r app-release.apk`）。
2. 打开 **LSPosed 管理器 → 模块 → dex2oat boost**，启用开关。
3. 在「作用域」里勾选 **应用包管理组件**（`com.miui.packageinstaller`）。
4. **重启被勾选的应用**（或重启手机），使模块注入安装器进程。
5. **在 KernelSU/Magisk 里给「应用包管理组件」授权 root**（安装器包名 `com.miui.packageinstaller`）。

> **只需给安装器授权 root，模块自身 APK `com.mengdao.dex2oatboost` 不需要、也无法从授权中获益。**
> 原因：本模块的代码**只被 LSPosed 注入到安装器进程**里执行（模块 APK 无任何自有组件/进程：manifest 仅含
> xposed 元数据，无 Activity/Service/Receiver/Provider）。全工程唯一的 root 动作是安装器进程内执行的
> `su -c "cmd package compile …"`（`RootShell`），因此 `su` 请求的发起方永远是**安装器**；给模块 APK 授 root 对功能零影响。
>
> **判定方法（真机可验证）**：
> 1. KernelSU/Magisk 的超级用户列表里，只保留 `com.miui.packageinstaller`，撤销 `com.mengdao.dex2oatboost`。
> 2. 走一次 APK 安装，日志出现 `③ root 降级重编译成功: <pkg>` → 证实「只需安装器一个」。
> 3. 反证：只授模块、不授安装器，重复安装 → 预期 `③` 失败（`Cannot run program "su" … error=13`），坐实「模块授权无用」。

> **与「纯 root（Magisk 模块）」版本相互独立**：两者不共享任何文件/状态/配置，可各自单独使用。若**同时启用**，
> 同一次安装会被重复编译一次（结果相同，**无害但浪费**）；二选一即可。

## 四、验证

```bash
# 1) 看模块日志
adb logcat | grep -i dex2oatboost

# 2) 安装任意 APK 后，检查目标包实际编译档
adb shell dumpsys package <被装包名> | grep -i "filter"
#    期望：安装后为 speed
```

日志中应依次出现：
`已挂钩 PackageInstaller#createSession` → `① 安装期降档 verify 已设置` →
`安装完成: <pkg> → 触发重编译` → `② 零 root 重编译成功`（或 `② … 转 root 降级` → `③ …`）。

> **完成信号说明**：由「安装完成广播」（`ACTION_PACKAGE_ADDED/REPLACED`）提供，经 `triggerOnce` 幂等去重。
> 该信号为**动态注册 / 进程内**，不抵御安装器进程被杀。广播**必须动态注册**——`PACKAGE_ADDED/REPLACED`
> 是 protected-broadcast 且不在隐式广播豁免名单，**清单接收器在后台收不到**（详见 `app/逻辑说明.md`）。
> **② 的隐藏 AIDL 签名**已在 **AOSP 官方 r tag**（android-13/14/15/16.0.0_r1）核实，原文与出处见
> `../../../.claude/subagent方案存放区/安装器dex2oat-hook-ART源码核实.md` 的〈七、AOSP 官方 r tag 复核〉节；目标 ROM 是否原样保留仍以真机为准。

## 五、回滚

LSPosed 管理器里关闭模块开关，或卸载本 APK；无持久化残留。
