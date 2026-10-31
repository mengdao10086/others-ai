# 变更记录

## 2.0.0 — 2026-10-31

- 合并「小米传送门增强」与「状态栏点击回顶屏蔽」为单 APK
- 单入口按包名分发；传送门两项、状态栏一项各自独立类与 try/catch
- 作用域：`com.miui.contentextension` + `com.android.systemui`；`com.miui.gallery` 注释预留
- 新包名 `com.mengdao.lsposedtoolkit`，确定性签名 `app/toolkit.jks`
