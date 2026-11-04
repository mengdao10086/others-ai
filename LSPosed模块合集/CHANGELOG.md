# 变更记录

## 2.3.2 — 2026-11-04

- 设置页「启动」按钮在自动触发的分析运行中仍可点击：点击只发 `AICR_BIND_BIG`，把分析线程绑到 CPU 4-6，不重启分析；绑定后按钮显示「已加速」并置灰，分析停止后恢复
- 状态广播新增 `big_bound` 字段；aicr 收到绑核请求时立即回报一次，不等 10 秒心跳
- `AicrCpuAffinity` 新增 `isManualBound()` 暴露大核绑定状态；旧版广播缺字段时按未绑核处理

## 2.3.1 — 2026-11-04

- 运行时降耗：窗口收尾轮询自适应（运行 3s／空闲 60s）并缓存 Context、系统服务与反射结果；状态广播 5s→10s、进度重算 30s→60s；相册侧落盘改为状态变化即写、否则 30s 节流
- 设置页轮询 1s→2s，`setSummary` 文本未变时跳过；蓝牙解锁 Toast 按 resId 缓存判定
- 写回路径别名改为一次性构建小写键表后 O(1) 查找，无命中不拷贝原 map
- 诊断类移入 `src/diag/java` 与 `diag` 构建类型，release 通过反射可选加载，不再打包；`AicrProgressDiagnostics.logDiagLine` 与 `AisearchTaskDiagnosticHook` 增加 `ENABLED` 早退
- 精简安装成功、例行注入与每次查询成功的噪声日志，保留错误、失败与生命周期日志

## 2.3.0 — 2026-11-04

- 写回路径大小写别名修复：`getMediaFeatureListByPath` 返回后按 `equalsIgnoreCase` 为输入路径补别名键，修复只差大小写导致的逐条 miss（`WriteBackPathAliasHook`，默认开启）
- 设置页三段式进度：显示「分析中／已完成 x · 待处理 y · 失败 z」，明细 30 秒重算并复用缓存
- 搜索页进度常驻：进度满值不再隐藏提示条，显示「本地分析已完成」
- 设置页按钮宽度按文字实测，去掉行尾箭头
- 待处理查询改写：`ManagerDao_Impl.calculate` 摘掉恒为 -1 的 `pet/iaa/crop` 条件，缩小每轮候选集（`ENABLE_PENDING_TRIM`，默认开启）
- 诊断探针默认关闭：`StageWriteProbe`、`FaceInitProbe`、`WriteBackProbe`、`AicrProgressDiagnostics` 各加 `ENABLED=false`，保留代码，改 true 重新编译即可打开

## 2.2.0 — 2026-11-03

### 2026-11-04 写回路径别名修复（`-别名修复.apk`）

- 根因：相册查询 `COLLATE NOCASE` 命中，但 `saveFaceResult` 用大小写敏感 `HashMap.get`，只差大小写的路径逐条 miss
- 新增 `WriteBackPathAliasHook`：`getMediaFeatureListByPath` 返回后按 `equalsIgnoreCase` 为输入路径补别名键，`ENABLE_PATH_ALIAS=false` 可关闭
- 探针先注册、alias 后注册，利用 Xposed after 后注册先执行，让探针看到修复后的 map；异常保持原返回值

### 2026-11-04 写回键比对（`-键比对.apk`，只读诊断）

- map 非空时 `writeback probe` 追加 `in=[#1 输入路径 | #2 ...]` 与 `key=[#1 map 键 | #2 ...]`，各截断 120 字符，用于逐字比对
- 保留原有 `req/rows/map/sample`、空 map 的 `paths/diag` 与每进程 60 秒限流

### 2026-11-04 相册写回探针（`-相册写回探测.apk`，只读诊断）

- 去掉 `StageWriteProbe` 测试期的 face/pet 阈值 50 提前冲刷：删除 `DEBUG_BATCH_THRESHOLD`、batchPic 提前调聚类与清空入参逻辑，只保留四个落点计数
- 相册侧新增 `WriteBackProbe`：hook `AlgoUtils.getMediaFeatureListByPath` 与其 cursor 处理器，输出 `req/rows/map/sample`，map 为空时用前 2 条请求路径做 loose/filtered 只读查询
- 样本含 `realPath/localFile/thumbnailFile/microthumbfile`（各截断 100 字符）；每进程每 60 秒最多一行

### 2026-11-04 写回失败原因（`-写回诊断.apk`，只读诊断）

- tick 行新增 `reason=<write_fail_reason>`（截断 60 字符，无则 `-`）与 `paths=[前 2 条 invalid_paths/传入路径]`（各截断 80 字符）
- `wb` 计数按相册实际协议修正：face writer 不返回 `write_success_path_list`，改为结合 `write_face_result`/`invalid_paths` 与请求路径数推算成功条数
- 静态结论：相册逐条校验只认 `gallery_cloud` 的 `realPath`（localFile/thumbnailFile/microthumbfile）并叠加 localGroupId/localFlag/serverStatus 过滤；`face_executed` 不是拒收条件

### 2026-11-04 聚类与写回计数（`-聚类计数.apk`，只读诊断）

- tick 行新增 `cluster=N/lastPaths=N`：`analyticCluster` 本窗口调用次数与传入路径数
- tick 行新增 `wb=ok:N/fail:N/empty:N`：`method_face_write_back` 返回的成功/失败路径条数与空/异常次数；在调用方 hook `ContentResolver.call` 取返回 Bundle
- 未调用时输出 `cluster=0` / `wb=-`；hook 缺失仍只记 `faceInit hook failed: <name>`

### 2026-11-04 失败口径修正（`-UI2.apk`）

- 三段式统计中某阶段 `state=-1` 占全库 ≥90% 时判为「不适用」并整体排除（如 pet 分支不执行时的批量 -1），排除阶段每阶段只记一次日志；全部排除时退回旧口径

### 2026-11-04 UI 调整（`-UI.apk`）

- 设置页「AI 内容分析」按钮宽度改为按文字实测：宽度 = 文本宽 + 32dp 高度，左右圆角贴住文字；高度仍 32dp
- 去掉该行行尾「>」：按钮可用时清除 Preference 级点击监听（miuix 据此隐藏箭头），行点击改由 itemView 承接，启动/停止切换不变
- 取消中的按钮文案由「正在停止」改为「停止中」，按新文案自适应宽度

### 2026-11-04 分析链路计数（`-计数.apk`，只读诊断）

- 新增 `traversalPic` 进入计数，并记录 `migrated`、`pictureCount`、`isVector` 当前值
- 新增 `ManagerDao_Impl.calculate` 返回列表大小（`calcRows`）与调用次数
- 新增 `batchPic` 实体采样：`faceState` 的 -1/0/1/10 分布、`uriId` 范围、`wouldFace`；字段反射失败只报列表大小
- `FACEINIT tick` 改为每进程每 60 秒最多一行窗口汇总；一次性 `FACEINIT` 行保留
- hook 缺失统一记 `faceInit hook failed: <name>`，不改变 aicr 行为

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
