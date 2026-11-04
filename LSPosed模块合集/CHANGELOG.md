# 变更记录

## 2.2.0 — 2026-11-03

### 2026-11-04 预检常驻（`-预检常驻.apk`）

- 搜索页 AI 分析进度常驻：进度满值（100%）时不再隐藏提示条，显示「本地分析已完成」；只拦截「满值导致隐藏」这一种情况，进度未满、CTA 未确认、能力不支持时行为不变；hook 失效自动退回现状
- 设置页状态改为三段式「分析中 已完成 x · 待处理 y · 失败 z」：`state` 1/10 计完成、-1 计失败、总数减出待处理并 clamp 到 0；失败计数每阶段多查一次，明细查询超过 2 秒后降级为旧「已处理 / 总数 / 阶段」
- 明细重算收紧到 30 秒一次（状态切换/首次除外），设置页主动查询复用缓存；所有 Room 查询仍在原有后台线程

- 人脸初始化预检（`-人脸预检.apk`，只读诊断，不改变行为）：记录 `face`/`face_config` 就绪键、`checkInit` 结果、模型路径长度、`loadModelSo`/`initCluster` 返回码、`analyticImage` 调用与 null 计数；DIAG 行追加 `faceInit=` 字段
- 并入「屏蔽最近任务上滑杀后台」：省电策略为无限制的应用在 system_server 的 `killOnce` 处跳过；内存策略未命中时回退查询 powerkeeper provider，结果缓存 30 秒；默认启用，新增作用域 `android`
- 相册分析进度：负载过高/等待恢复状态显示为暂停；进度改 30 秒重算、状态仍 1 秒巡检；展示改为「已处理 x / y 张 · 阶段」，无明细时退回一位小数百分比；新增分析任务进出心跳日志

## 2.1.1 — 2026-11-01

- 新增「屏蔽蓝牙解锁 Toast」：`Toast.makeText` 命中 `miui_keyguard_ble_unlock_succeed_msg` 后记下该 Toast，`Toast.show` 时置空
- 只做抑制，不改 HyperCeiler 的注册链路；作用域仍是 `com.android.systemui`
- 模块介绍追加该项
- 相册分析：06:00 收尾从定时停一次改为 06:00 后轮询到「屏幕亮或未充电」再停一次，处理日期落盘，当天只停一次
- 相册分析：手动启动时只把 aicr 的 `AISearchWorkThr` 线程绑到 CPU 4-6，并在分析期间每 3 秒重绑（aicr 自己会把该线程绑回低核）；其它分析开始与停止后绑到 0-3（新增 arm64 原生库 `libmengdao_cpuaff.so`）
- 相册设置页状态：相册进程启动即注册接收器、状态落盘并在下次启动恢复、进入设置页主动查询 aicr；状态查询改用进程内实时值，修复开机误显示「分析中」
- 体积精简：classes.dex 改为压缩打包、启用 R8（含入口/回调/JNI keep 规则）、strip 原生库；APK 98,847 → 36,711 B
- 日志精简：各 hook 组装载成功的逐条日志合并为每组一条，失败分支仍单独记录
- 相册分析：手动启动时把 aicr 加入电池优化白名单与最近任务锁定，停止时撤销；先读后写，用户已有设置不动

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
