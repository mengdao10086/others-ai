# dex2oat-boost

让 MIUI / HyperOS 上「**装得快**」与「**用得爽**」兼得：把安装期 dexopt 降为 `skip`（装得快），装完后轮询 `/data/app` 补编译为 `speed`（用得爽）。

本仓库提供 **Magisk 模块** 实现路线：

| 方案 | 目录 | 原理一句话 | 适用场景 | 产物 |
|---|---|---|---|---|
| **Magisk 模块（纯 root）** | `magisk模块/` | 逻辑取自 Scene Install Boost：7 个 `pm.dexopt.*` 置为 `skip` + 轮询 `/data/app`，新装后倒计时 3 周期再编译为 `speed`，并按 CPU 负载动态并行 | 有 KernelSU / Magisk | `产物/dex2oat-boost-magisk.zip` |

- **产物落地**：打包产物同步到 `D:\下载\Edge\`（仓库只留源码与 `build.sh`；`*.zip` 已被 `.gitignore` 忽略）。
- **原 LSPosed 方案（方案 A）已于 2026-11-04 移除**，变更记录见 [`CHANGELOG.md`](CHANGELOG.md)。

## 从这里开始

- **上机操作（分步清单：命令 + 期望输出 + 不符时走哪条）** → [`上机指南.md`](上机指南.md)
- **模块明细** → 安装 / 卸载 / 配置 / 设计取舍：[`magisk模块/README.md`](magisk模块/README.md)
- **版本变更** → [`CHANGELOG.md`](CHANGELOG.md)

## 目录结构

| 路径 | 说明 |
|---|---|
| `magisk模块/` | **Magisk / KernelSU 模块工程**（纯 shell）。分 `源码/`（模块文件）、`构建/`（`build.sh`）、`产物/`（zip）、`测试/` 四层 |
| `上机指南.md` | 分步上机清单（**操作类信息的唯一出处**） |
| `真机验证清单.md` | 原清单的跳转落点（内容已并入 `上机指南.md`） |
| `dex2oat-boost测试.sh` | 原方案 A 的真机诊断脚本（已随方案 A 一同退役，仅存档） |
| `_分析/` | **反编译与临时件**（不入库）：`com.miui.packageinstaller` 反编译产物、离线单测、验证脚本、构建日志 |

## 方案与结论文档（在方案存放区）

Magisk 方案：

- 方案：[`dex2oat-boost-root需求压缩与纯root复评-方案.md`](../../.claude/subagent方案存放区/dex2oat-boost-root需求压缩与纯root复评-方案.md)
- 实施报告：[`dex2oat-boost-magisk版-实施报告.md`](../../.claude/subagent方案存放区/dex2oat-boost-magisk版-实施报告.md)
- 独立验证报告：[`dex2oat-boost-两版-验证报告.md`](../../.claude/subagent方案存放区/dex2oat-boost-两版-验证报告.md)（含已移除的原方案 A 对照）

## 一句话状态

Magisk 方案 **离线自测通过**（`sh -n` + 22→29 项离线仿真自测全绿）。
**真机行为尚未在目标设备完整验证**——「未验证项」与逐项判定见 [`上机指南.md`](上机指南.md)。
