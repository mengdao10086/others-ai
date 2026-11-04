# 刷新率增强分析

上游 Magisk 模块 **Refresh Rate Enhancer** 的存档：只保留第三方原包与解包产物，**没有自有分析结论**。

| 项 | 值 |
|---|---|
| 模块名 / id | Refresh Rate Enhancer / `refresh165_enhancer` |
| 版本 | `2026.08.29.5`（versionCode `2026082905`） |
| 作者 | 芙里芙气@Coolapk |
| 兼容范围 | MIUI / HyperOS（上游 README 覆盖 Android 16 SDK 36 与 Android 17 SDK 37+） |
| 原包 | [`magisk模块/RefreshRateEnhancer-2026.08.29.5.zip`](magisk模块/RefreshRateEnhancer-2026.08.29.5.zip) |

## 目录内容

| 路径 | 说明 |
|---|---|
| `magisk模块/` | 上游原包 zip（本目录唯一入库内容） |
| `_分析/解压产物/` | zip 解包结果（不入库）：`module.prop`、安装 / 卸载 / 服务脚本、`refresh_lib.sh`、`hook/Global165HzHook.apk`、`hookdex/`（APK 反编译件）、`smali/`、`system/app/Global165HzHook/`、`files/odm/firmware/warsaw_gtp_thp_config.ini`、上游 `README.md` |

`_分析/解压产物/` 只是原包内容的展开，没有额外分析或修改。

## 上游说明（摘自包内 README.md）

- 把 MIUI / AOSP 全局刷新率上限保持在面板峰值（144 / 165 / 185 Hz 等），不锁定单一 Hz；应用侧刷新率投票仍生效。
- HyperOS Android 17 会把 `secure miui_refresh_rate` 改写回 60：Magisk 侧用 1 秒 settings guard，Android 17 hook 侧拦截同键的 Settings put/get。
- LSPosed Home hook（`dev.xiaomiext.homehz`）在所有支持的峰值上安装，不只 165 Hz。
- 模块 action 可免重启应用一次 Magisk 设置；替换 hook APK 后仍需重启桌面 / SystemUI 或重启手机。

以上均为上游说明，本目录不另作结论。
