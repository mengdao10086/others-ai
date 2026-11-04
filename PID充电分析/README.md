# PID充电分析（PID_CHG_MOD）

第三方 Magisk 模块「PID 充电模块」（作者 log）的存档与配套笔记。模块开机后运行 aarch64 可执行文件 `PID_MODv12091623`，用 PID 方式调节充电电流，使电池温度贴近设定值；支持游戏 / 旁路、夜间模式、最低充电功率、CPU / GPU 统一调频等配置。

- 当前版本：`4.4`（versionCode `251209`）。
- 仅支持米系手机 / 平板（`customize.sh` 校验厂商）。
- 要求 KernelSU versionCode ≥ 11874 或 Magisk ≥ 26000，Android API ≥ 30。

## 目录结构

| 路径 | 说明 |
|---|---|
| `magisk模块/` | 模块本体：`module.prop`、`META-INF/`、`customize.sh`、`service.sh`、`action.sh`、`uninstall.sh`、`PID_MODv12091623`、`lib/func.sh`、`lib/libz.so.1` |
| `magisk模块/VERSION` | 上游 1.0–4.3 版本说明 |
| `pid_strings.txt`、`mt_strings.txt` | 从模块与二进制中提取的字符串笔记 |
| `内测热更新脚本.sh` | 从 QQ 接收目录取新版 `PID_MODv*`，替换后重启服务，无需重启手机 |
| `米系简易内阻计算v1.5.sh` | 设备端内阻估算程序（实际是 ELF aarch64 可执行文件）；按提示将电量控制在 45–75%、拔掉充电器后运行 |
| `支持log.png`、`组织.jpg` | 说明图与组织信息图 |

## 构建 / 安装

仓库里没有构建脚本，`magisk模块/` 就是解包后的模块目录。需要重新打包时，在 `magisk模块/` 内把全部内容压成 zip（`META-INF/` 位于 zip 根），在 Magisk / KernelSU 中刷入。

安装后配置：`/data/adb/modules/PID_CHG_MOD/配置`；游戏 / 旁路配置：同目录 `GAME_list`；日志：同目录 `PID_log`。
