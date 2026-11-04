# 相册内容分析控制（归档）

> 该功能已并入 `LSPosed模块合集` 2.1.0：源码与安装包统一由 [`../LSPosed模块合集/`](../LSPosed模块合集/) 提供，独立工程 `com.mengdao.galleryanalyze` 不再发布。本目录只保留开发记录。

## 目录内容

| 路径 | 说明 |
|---|---|
| [`设计方案.md`](设计方案.md) | 功能设计：20:00–06:00 夜间自动触发、相册设置页手动启动 / 停止、状态显示、未决项 |
| [`_分析/`](_分析/) | 反编译与中间物（不入库）；技术底稿见 `_分析/report.md`：相册 `CardUpdateWorker` 分析流水线、aicr 交互、LSPosed 落点与风险 |
| `lsp模块/` | 旧独立工程源码（只读保留），作用域 `com.miui.gallery` + `com.xiaomi.aicr` |

后续变更只记在 [`../LSPosed模块合集/CHANGELOG.md`](../LSPosed模块合集/CHANGELOG.md)。
