# 变更记录

## 1.0.1 — 2026-11-04

- 体积优化：开启 R8 代码收缩与 dex legacy 压缩打包，APK 10,735 → 7,779 字节
- 版本号 1.0.1（versionCode 2）

## 1.0 — 2026-10-27

- 初始版本：hook `StatusBarClickTool.invokeInputManager(boolean)`，屏蔽状态栏单击/双击触发的回顶滚动
- 兜底 hook `MiuiInputManager.scrollToTop()`
- 作用域仅 `com.android.systemui`
