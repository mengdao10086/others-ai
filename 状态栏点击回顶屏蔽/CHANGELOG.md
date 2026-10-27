# 变更记录

## 1.0 — 2026-10-27

- 初始版本：hook `StatusBarClickTool.invokeInputManager(boolean)`，屏蔽状态栏单击/双击触发的回顶滚动
- 兜底 hook `MiuiInputManager.scrollToTop()`
- 作用域仅 `com.android.systemui`
