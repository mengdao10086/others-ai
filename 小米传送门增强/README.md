
小米系统应用 `com.miui.contentextension`（传送门/Taplus）v4.1.3 的逆向分析和功能修复。

- 完整运行逻辑分析（架构、初始化、拾取流程、悬浮窗、剪贴板）
- **LSPosed 增强模块**：保存格式 PNG→JPEG + 修复保存竞态 Bug
- 构建方式：GitHub Actions（`.github/workflows/build.yml`）

详见 [LSPosed模块说明](LSPosed模块/README.md)、[运行逻辑分析](运行逻辑分析.md)、[修改可行性分析](LSPosed修改可行性分析.md)。

## 项目结构

```
mi-portal-enhanced-ai/
├── LSPosed模块/           # LSPosed Android Studio 项目
├── decompile/             # 反编译分析产出
├── 运行逻辑分析.md
├── LSPosed修改可行性分析.md
├── .github/workflows/     # CI 构建
├── CHANGELOG.md
├── CLAUDE.md
└── README.md
```
