# 变更记录

## 1.0.1 — 2026-11-04

- 体积优化：开启 R8 代码收缩与 dex legacy 压缩打包，APK 10,729 → 7,747 字节
- 删除未引用的 assets/lsposed_scope（作用域以 res/values/arrays.xml 为准）
- 版本号 1.0.1（versionCode 2）

## 1.0.0 — 2026-07-11

- 初始创建：小米传送门增强 LSPosed 模块（PNG→JPEG + 竞态修复）
- 确定性签名：`taplusfix.jks` 确保每次 CI 构建签名一致
- GitHub Actions 自动构建 APK
