# dex2oat-boost（纯 root · Magisk / KernelSU 模块）

**不依赖 LSPosed**。纯 root 实现两件事：

1. **安装期全局降档**：开机把 `pm.dexopt.install`（及 `install-fast`）置为 `verify` —— 新装更快。
2. **装后重编译**：常驻守护，每 5 秒轮询 `/data/app`，发现**新增/变更**的包目录 → `cmd package compile -m speed -f <包名>`，把新装/更新过的包重编译成 `speed`。

与同项目下的 **LSPosed 版（`lsp模块/`）完全相互独立**：二者可各自单独使用，互不依赖、互不修改。两者都启用时会各编译一次（见〈与 LSPosed 版共存〉）。

> 依据（已源码级核实，见方案存放区《安装器dex2oat-hook-ART源码核实.md》）：`pm.dexopt.<reason>` 由 PMS/ART **每次 dexopt 现读、无缓存**，运行期改后**下一次安装即生效、无需重启**。安装场景与 reason 的对应见 ART `DexManager.getCompilationReasonForInstallScenario`：默认场景 → `install`，快速场景 → `install-fast`，批量/恢复 → `install-bulk*`。

---

## 一、目录结构

| 路径 | 说明 |
|---|---|
| `module.prop` | 模块元信息（id=`dex2oat-boost`） |
| `config.prop` | 可调参数（轮询间隔、降档的原因列表、日志上限等） |
| `service.sh` | 开机服务：等开机完成 → 启动守护进程，退出即重启（看门狗） |
| `bin/dex2oat-boost-daemon.sh` | 守护进程：轮询 `/data/app` 并重编译 |
| `customize.sh` | 刷入时设置权限、打印提示 |
| `uninstall.sh` | 卸载：停进程、还原属性（当前开机）、删工作目录 |
| `META-INF/…/update-binary`、`updater-script` | Magisk 安装入口（结构同 b6x 2.x Magisk 模块模板） |
| `build.sh` | 打包成可刷入 zip（需本机 python3） |
| `测试/dex2oat-boost-magisk测试.sh` | 离线自测（PC 上跑，不需要真机） |

## 二、打包

```bash
sh build.sh
# 产物：magisk模块/dex2oat-boost-magisk.zip
```

## 三、安装

1. 把 `dex2oat-boost-magisk.zip` 用 **Magisk / KernelSU 管理器**（模块 → 从本地安装）刷入。
2. **重启设备**（属性设置与守护进程都在开机后生效）。
3. 关机/启用切换：在管理器里启用/停用即可；**降档属性是运行期的，重启后自动回归系统默认**，停用后重启即恢复原状。

## 四、卸载

管理器里卸载模块，或运行模块 `uninstall.sh`。卸载会：停掉守护进程与看门狗、把降档属性还原为本次开机记录的原值（仅在当前这次开机有效；不重启也无残留）、删除 `/data/adb/dex2oat-boost/`。

## 五、验证

```bash
# 1) 属性已降档（应为 verify）
su -c 'getprop pm.dexopt.install'
su -c 'getprop pm.dexopt.install-fast'

# 2) 守护进程在跑
su -c 'ps -A | grep dex2oat-boost-daemon'

# 3) 装一个 APK 后，观察日志出现该包被重编译
su -c 'tail -n 50 /data/adb/dex2oat-boost/dex2oat-boost.log'
#   期望类似：已重编译 com.example.app -> speed（~~xxxx==/com.example.app-yyy）

# 4) 确认某个包被编译成 speed 特征：看其 oat 目录
su -c 'dumpsys package com.example.app | grep -i codePath'
su -c 'ls -l /data/app/~~*/com.example.app-*/oat/arm64/'
#   speed 档会生成 .odex（非 .vdex-only 的 verify 结果）；也可用：
su -c 'cmd package dump com.example.app | grep -i filter'
```

## 六、日志

| 文件 | 内容 |
|---|---|
| `/data/adb/dex2oat-boost/dex2oat-boost.log` | 守护主日志：属性写入、每个包的重编译/等待/重试/放弃 |
| `/data/adb/dex2oat-boost/service.log` | 看门狗日志：守护进程重启记录 |

上限：主日志默认 **256 KB**（`MAX_LOG_BYTES`），超过即轮转保留末尾 400 行；看门狗日志 64 KB。

## 七、配置（`config.prop`）

| 键 | 默认 | 说明 |
|---|---|---|
| `POLL_INTERVAL` | `5` | 轮询间隔（秒） |
| `DOWNGRADE_ENABLE` | `1` | 是否写入降档属性 |
| `INSTALL_FILTER` | `verify` | 降档到的编译档 |
| `DOWNGRADE_REASONS` | `install install-fast` | 对哪些 reason 降档 |
| `RECOMPILE_FILTER` | `speed` | 装后重编译到的编译档 |
| `COMPILE_RETRY_MAX` | `6` | 编译失败重试上限 |
| `PENDING_MAX_CYCLES` | `120` | 等待「就绪」的上限（轮，1 轮=间隔秒） |
| `MAX_LOG_BYTES` / `LOG_KEEP_LINES` | `262144` / `400` | 日志体积上限与轮转保留行数 |

改完**重启生效**。

## 八、设计取舍（关键点）

### 8.1 基线与去重（最重要）

- **首次运行只建立基线**：把当前 `/data/app` 下所有包目录的相对路径记入 `state.tsv`，**不编译任何既有应用**。
- **去重键 = `<~~父目录>/<包名>-<hash>` 相对路径**。安装与覆盖更新都会生成**新的目录名**（父目录或 hash 变化），因此键一变即视为「新增/变更」；同状态重复轮询不会再编译。
- **覆盖安装**天然被识别（新 hash → 新键）。
- 基线持久化在 `/data/adb/dex2oat-boost/state.tsv`，跨重启有效；模块被更新/重装导致基线丢失时，只是重新建一次基线（安全，不会误编译）。
- 基线每轮与「当前扫描结果」求交（`grep -F -x -f`）后修剪，自动剔除已卸载的包，避免状态无限增长。**扫描失败或空结果时跳过本轮、不改动基线**，防止把瞬时读不到误判成「包消失」。

### 8.2 解析 `/data/app` 目录名取包名的规则

- 兼容两种布局：`/data/app/~~<base64>==/<包名>-<hash>/` 与 `/data/app/<包名>-<hash>/`。
- 取叶子目录名后，**包名 = 第一个 `-` 之前的部分**（`${name%%-*}`）。依据：**Android 包名不允许含 `-`**，而 `<hash>` 是 URL-safe base64、**可能含 `-`**；故必须按「第一个 `-`」切，不能按「最后一个 `-`」切。
- **健壮性**：包名须只含 `[A-Za-z0-9_.]`、含点、无首尾点/连续点；不满足的目录（无 `-`、含 `..`、`staging` 之类）一律跳过。顶层非 `~~` 且无 `-` 的条目也被跳过。

### 8.3 就绪门禁（避免编译到升级前的旧版本）

覆盖安装时新目录会先出现、PM 稍后才把该包的代码路径切过去。若此时就编译，可能编译到**旧版本**。故：

- 编译前用 `pm path <包名>` 取当前代码路径，**只有该路径指向本候选目录 `<…/包名-hash/>` 时才算「就绪」**并编译；
- 未就绪则**等待**（不计入编译失败重试），最多等 `PENDING_MAX_CYCLES`（默认 120 轮 = 10 分钟）后放弃；
- 这样覆盖更新只会在新版本真正生效后编译一次正确的版本。

### 8.4 是否处理 `install-fast` / `install-bulk*`

- **`install`（默认安装场景）**是普通安装读到的 reason，**必处理**。
- **`install-fast`** 是 `INSTALL_SCENARIO_FAST` 场景用到的 reason，同属「交互式安装、要装得快」，**一并降档**。
- **`install-bulk*`（批量/恢复安装）默认不动**：这些发生在换机恢复等场景，把它们的初档改掉影响面更大；而装后守护**仍会把它们重编译为 `speed`**，功能上不漏。若确需，把它们加进 `DOWNGRADE_REASONS` 即可。
- 「不改会不会漏」：对**普通用户安装（经安装器/文件管理器）**，`install` 覆盖，不漏；对恢复/批量场景，**只少了「装得快」**，不会少了「用得爽」。

### 8.5 属性写入：`resetprop -n` 还是 `setprop`

- 优先用 **`resetprop -n`**（`/data/adb/ksu/bin/resetprop` 或 `/data/adb/magisk/resetprop`，再退 PATH）；不存在时退回 `setprop`。
- **为什么必须带 `-n`**：`resetprop` 的 `-n`（`--skip-svc`）= **跳过 property_service、直接 mmap 写属性区**（KernelSU `resetprop` 的选项说明即「Skip property_service (force direct mmap operation)」）。**不带 `-n`** 时走 `__system_property_set` → property_service，**受 SELinux 约束**；`pm.dexopt.*` 的属性上下文是 `pm_prop`，root 域能否对其 `property { set }` 无法离线证实，很可能被拒而**静默降档失败**。带 `-n` 直写属性区即绕过该约束。
- **推理链（`-n` 不触发 property change 广播是否要紧？）**：`pm.dexopt.<reason>` 由 ART/PMS **每次 dexopt 现读** `/system` 属性区（`ReasonMapping.getCompilerFilterForReason` → `SystemProperties.get`，无缓存）。`resetprop -n` 直接改属性区值、**不触发 property change 回调**——但本属性只被「现读」，**只要属性区值变了就足够**，不需要广播。
  - **前提与限制**：该推理成立的前提是「读取方确实现读属性区」（已由 A15/A16 源码核实）。若某 ROM 的 ART Service 改走**缓存副本**（本模块在所验 ROM/源码上未见此行为），则需触发更新或重启才生效——这一点**以真机 `getprop` + 实际安装验证为准**。
- 写入前用 `getprop` **记录原值**到 `orig_props.txt`；写入后用 `getprop` **回读校验**并**区分成功/失败**：读到目标值 → 记「`旧 -> 新`」；否则记「设置失败（当前 '...'，目标 '...'）」。
- **无需还原**：`pm.dexopt.*` 是**运行期属性**（非 `persist.`），重启即回归系统默认。`uninstall.sh` 里的还原只是对「当前这次开机」的兜底。

### 8.5b 基线的健壮性

- `state.tsv` **不存在、为 0 字节、或整份无有效键**时，一律按「首次」处理：重建基线、**不编译任何既有应用**（避免空文件被当成「全部新增」而把设备上的应用全编译一遍）。
- 基线**原子写入**（先写 `state.tsv.tmp` 再 `mv` 覆盖），避免写到一半被中断导致截断；且**内容不变时不落盘**，减少 5 秒轮询带来的无谓 flash 写入。
- 垃圾行/截断行充其量只让对应的个别包被判为「新增」再编译一次（有界、自愈），不会放大成全量重编译。

### 8.6 异常自愈

- 守护主循环 `while true; do one_cycle || log …; sleep N; done`：**单轮内部任何非致命错误只记日志、不退出**（脚本不使用 `set -e`，错误只返回不 `exit`）。
- `service.sh` 是**看门狗**：守护进程一旦退出即 5 秒后重启。
- 日志按体积轮转，避免无限增长。

### 8.7 与 LSPosed 版共存

两个模块若**同时启用**：LSPosed 版在安装期 hook 会话降档、装完立即重编译；本模块也会对同一个包再 `compile -f` 一次。**后果：同一包被重编译两次（多一次 CPU/IO，结果幂等、无害）**。按任务要求**不做互斥逻辑**。建议二选一。

## 九、已知限制 / 未验证项

- **未做真机验证**（开发环境无设备）：脚本语法与离线自测通过，但真机上的属性写入权限（`resetprop`/`setprop` 对 `pm.dexopt.*` 是否放行）、`/data/app` 目录名解析、`cmd package compile` 行为均需真机按〈五、验证〉复核。
- 依赖 KernelSU/Magisk 的 `service.sh` 开机执行机制；换 root 方案或 OTA 后需重新部署。
- `/data/app` 的 `~~<base64>==` 段是否每次安装都稳定、`<hash>` 的确切字符集，建议真机上以 `ls /data/app` 实测（本模块按「第一个 `-` 前为包名」处理，已对 hash 含 `-` 的情形安全）。
