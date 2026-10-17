# dex2oat-boost

让 MIUI / HyperOS 上「**装得快**」与「**用得爽**」兼得：安装期把 dexopt 会话降档为 `verify`（装得快），装完立即重编译为 `speed`（用得爽）。

本仓库提供**两条完全独立的实现路线**，按你手上的条件**二选一**：

| 方案 | 目录 | 原理一句话 | 适用场景 | 产物 |
|---|---|---|---|---|
| **A · LSPosed 模块** | `lsp模块/` | 注入 MIUI 安装器（`com.miui.packageinstaller`）进程：安装期降档 + 装完以安装器身份重编译；失败自动降级 root | 已装 LSPosed（Zygisk 系），愿意给**安装器**授权 root | `app-release.apk`（29,095 B；Edge 落地名 `dex2oat-boost-v1.0.apk`） |
| **C · 纯 root / Magisk 模块** | `magisk模块/` | 逻辑取自 Scene Install Boost：7 个 `pm.dexopt.*` 置为 `skip` + 轮询 `/data/app`，新装后倒计时 3 周期再编译为 `speed`，并按 CPU 负载动态并行 | 有 KernelSU / Magisk、不装或不想用 LSPosed | `产物/dex2oat-boost-magisk.zip` |

- **两者完全独立**：不共享任何文件 / 状态 / 配置，可各自单独使用，互不依赖、互不修改。
- **同时启用**：同一次安装会被**重复编译一次**（结果幂等，**无害但浪费 CPU/IO**）。**建议二选一**。
- **产物落地**：编译 / 打包产物同步到 `D:\下载\Edge\`（仓库只留源码与 `build.sh`；`*.apk` / `*.zip` 已被 `.gitignore` 忽略）。

## 从这里开始

- **上机操作（两条路各自的分步清单：命令 + 期望输出 + 不符时走哪条）** → [`上机指南.md`](上机指南.md)
- **方案 A 明细** → 编译 / 部署 / 验证：[`lsp模块/README.md`](lsp模块/README.md)｜钩子逻辑：[`lsp模块/app/逻辑说明.md`](lsp模块/app/逻辑说明.md)｜版本变更：[`lsp模块/CHANGELOG.md`](lsp模块/CHANGELOG.md)
- **方案 C 明细** → 安装 / 卸载 / 配置 / 设计取舍：[`magisk模块/README.md`](magisk模块/README.md)
- **一键诊断脚本（手机 su 终端内跑）** → [`dex2oat-boost测试.sh`](dex2oat-boost测试.sh)

## 目录结构

| 路径 | 说明 |
|---|---|
| `lsp模块/` | **方案 A 工程**（Gradle / AGP 8.2.0，Java）。源码、构建脚本、签名 keystore 均在此 |
| `magisk模块/` | **方案 C 工程**（纯 shell 的 Magisk / KernelSU 模块）。分 `源码/`（模块文件）、`构建/`（`build.sh`）、`产物/`（zip）、`测试/` 四层 |
| `上机指南.md` | 两条路各自的分步上机清单（**操作类信息的唯一出处**，含方案 A 常见卡点速查） |
| `真机验证清单.md` | 旧方案 A 清单，**内容已并入 `上机指南.md`**；仅保留为外部旧链接的跳转落点 |
| `dex2oat-boost测试.sh` | 方案 A 真机诊断脚本（设备端 su 终端内运行，输出 `dex2oat-boost结果.log`） |
| `反编译/` | **只读参考**：`com.miui.packageinstaller` 反编译产物（不在此写东西） |
| `_scratch/` | **临时件**：离线单测、验证方测试、构建日志 |

## 方案与结论文档（在方案存放区）

方案 A：

- 方案（实施规格＝§方案 A-2）：[`安装器dex2oat-hook-方案.md`](../../.claude/subagent方案存放区/安装器dex2oat-hook-方案.md)
- 实施报告：[`安装器dex2oat-hook-实施报告.md`](../../.claude/subagent方案存放区/安装器dex2oat-hook-实施报告.md)
- 独立验证报告：[`安装器dex2oat-hook-验证报告.md`](../../.claude/subagent方案存放区/安装器dex2oat-hook-验证报告.md)
- ART 源码核实（含 A16 / lineage-23.x 复核）：[`安装器dex2oat-hook-ART源码核实.md`](../../.claude/subagent方案存放区/安装器dex2oat-hook-ART源码核实.md)
- ② 权限链定点核实（`MANAGE_APP_HIBERNATION` 专节）：[`dex2oat-boost-performDexOptMode权限链核实.md`](../../.claude/subagent方案存放区/dex2oat-boost-performDexOptMode权限链核实.md)
- 反编译侦察：[`安装器dex2oat-hook-反编译侦察.md`](../../.claude/subagent方案存放区/安装器dex2oat-hook-反编译侦察.md)
- 模块借鉴与生态侦察：[`安装器dex2oat-hook-模块借鉴与生态侦察.md`](../../.claude/subagent方案存放区/安装器dex2oat-hook-模块借鉴与生态侦察.md)

方案 C：

- 方案：[`dex2oat-boost-root需求压缩与纯root复评-方案.md`](../../.claude/subagent方案存放区/dex2oat-boost-root需求压缩与纯root复评-方案.md)
- 实施报告：[`dex2oat-boost-magisk版-实施报告.md`](../../.claude/subagent方案存放区/dex2oat-boost-magisk版-实施报告.md)

共同：

- 独立验证报告（A + C 两版）：[`dex2oat-boost-两版-验证报告.md`](../../.claude/subagent方案存放区/dex2oat-boost-两版-验证报告.md)

## 一句话状态

两方案均**真编译 / 离线自测通过**（A：Gradle 真编译 + 离线单测；C：`sh -n` + 22→29 项离线仿真自测全绿）。
**真机行为尚未在目标设备完整验证**——各自「未验证项」与逐项判定见 [`上机指南.md`](上机指南.md)。
