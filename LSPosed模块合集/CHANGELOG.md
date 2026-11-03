# 变更记录

## 未发布

- 相册分析：06:00 收尾从定时停一次改为 06:00 后轮询到「屏幕亮或未充电」再停一次，处理日期落盘，当天只停一次
- 相册分析：手动启动时只把 aicr 的 `AISearchWorkThr` 线程绑到 CPU 4-6，并在分析期间每 3 秒重绑（aicr 自己会把该线程绑回低核）；其它分析开始与停止后绑到 0-3（新增 arm64 原生库 `libmengdao_cpuaff.so`）
- 相册设置页状态：相册进程启动即注册接收器、状态落盘并在下次启动恢复、进入设置页主动查询 aicr；状态查询改用进程内实时值，修复开机误显示「分析中」
- 体积精简：classes.dex 改为压缩打包、启用 R8（含入口/回调/JNI keep 规则）、strip 原生库；APK 98,847 → 36,711 B

## 2.1.1 — 2026-11-01

- 新增「屏蔽蓝牙解锁 Toast」：`Toast.makeText` 命中 `miui_keyguard_ble_unlock_succeed_msg` 后记下该 Toast，`Toast.show` 时置空
- 只做抑制，不改 HyperCeiler 的注册链路；作用域仍是 `com.android.systemui`
- 模块介绍追加该项

## 2.1.0 — 2026-11-01

- 并入「相册内容分析控制」（原独立模块 `com.mengdao.galleryanalyze` 2.0.6）
- 新增作用域 `com.miui.gallery` 与 `com.xiaomi.aicr`；相册侧只在主进程安装，aicr 侧只在 `:searchDataService` 安装
- 新增 `gallery/` 与 `gallery/aicr/` 两组 hook；跨进程广播 action 迁到 `com.mengdao.lsposedtoolkit.action.*`
- 相册设置页「其他设置」新增一行：启动 / 停止，状态跟随 aicr 真实进度
- aicr 侧新增 06:00 时间窗收尾（仍在跑就停一次）
- `xposeddescription` 改为「传送门保存增强 + 屏蔽状态栏点击回顶 + 相册内容分析控制」

## 2.0.0 — 2026-10-31

- 合并「小米传送门增强」与「状态栏点击回顶屏蔽」为单 APK
- 单入口按包名分发；传送门两项、状态栏一项各自独立类与 try/catch
- 作用域：`com.miui.contentextension` + `com.android.systemui`；`com.miui.gallery` 注释预留
- 新包名 `com.mengdao.lsposedtoolkit`，确定性签名 `app/toolkit.jks`
