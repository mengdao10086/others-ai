## 构建

LSPosed 模块构建（GitHub Actions 自动触发）：
```yaml
# .github/workflows/build.yml
# modules = LSPosed模块/
# signing = taplusfix.jks（仓库内确定性 keystore）
```

## 规则

- 版本变更记录到 `CHANGELOG.md`。
- 修改 LSPosed 模块代码前需评估影响范围。

## 项目结构

```
mi-portal-enhanced-ai/
├── LSPosed模块/           # LSPosed Android Studio 项目
├── decompile/             # 反编译分析产出
├── 运行逻辑分析.md
├── LSPosed修改可行性分析.md
├── .github/workflows/     # CI 构建
└── README.md
```
