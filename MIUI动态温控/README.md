# MIUI动态温控（MiuiVariableThermal）

第三方 Magisk 模块存档，上游作者 top大佬（酷安）。模块通过 MIUI 云温控目录 `/data/vendor/thermal/config/` 按场景切换温控档位：

- 充电场景、游戏场景使用配置的「场景温控」；普通场景恢复系统默认温控。
- 可配置 MIUI 旁路供电（温度 / 电量 / 游戏 / 手动四种触发）与游戏场景锁定刷新率。
- 只动态修改云温控文件，不改 `/vendor/etc/` 下的系统默认温控。

当前版本：`20230324`（versionCode `2023032400`）。

## 目录结构

| 路径 | 说明 |
|---|---|
| `magisk模块/` | 模块本体 |
| `magisk模块/module.prop` | 模块元数据（id `MiuiVariableThermal`、版本、作者） |
| `magisk模块/config.conf` | 用户配置：总开关、场景档位、按时间段切档、游戏包名、旁路供电、电流模式；注释即说明 |
| `magisk模块/thermal/` | 温控文件：`thermal-charge.conf`、`thermal-app.conf`、`thermal-default.conf`，以及 1–5 档 `thermal-scene.conf` |
| `magisk模块/service.sh`、`mvt.sh` | 开机后启动监控主循环 |
| `magisk模块/upmvt.sh`、`upmvt.txt` | 上游更新检查与更新源 |
| `magisk模块/testing.sh` | 反馈问题时使用的诊断脚本 |

## 构建 / 安装

仓库里没有构建脚本，`magisk模块/` 就是解包后的模块目录。需要重新打包时，在 `magisk模块/` 内把全部内容压成 zip（`module.prop`、`META-INF/` 位于 zip 根），在 Magisk / KernelSU 中刷入并重启。

安装后配置：`/data/adb/modules/MiuiVariableThermal/config.conf`；日志：同目录 `log.log`。
