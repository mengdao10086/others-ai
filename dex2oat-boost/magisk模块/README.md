# dex2oat-boost（纯 root · Magisk / KernelSU 模块）

**不依赖 LSPosed**。安装期不编译，装完后延迟补编译：

1. **安装期彻底不编译**：把 7 个安装期 dexopt reason 的 `pm.dexopt.*` 置为 `skip`（逻辑取自 Scene Install Boost）。
2. **装后补编译**：常驻轮询 `/data/app`，发现新装/更新 → **倒计时 3 个周期**（期间再来新装会重置）→ `cmd package compile -m speed <包名>`。
3. **动态并行**：编译进行中，每周期读 `/proc/stat` 算 CPU 4–7 的使用率，**< 50% 且队列里还有包** → 再起一个编译进程（上限 3）。

> 依据（已源码级核实，见方案存放区《安装器dex2oat-hook-ART源码核实.md》）：`pm.dexopt.<reason>` 由 PMS/ART **每次 dexopt 现读、无缓存**，运行期改后下一次安装即生效、无需重启。

---

## 一、目录结构

| 路径 | 说明 |
|---|---|
| `源码/` | 模块本体——**这里才是刷入包的内容** |
| `源码/module.prop` | 模块元信息（id=`dex2oat-boost`） |
| `源码/config.prop` | 可调参数（轮询间隔、倒计时周期、并发上限、CPU 阈值等） |
| `源码/service.sh` | 开机服务：等开机完成 → 启动守护进程，退出即重启（看门狗） |
| `源码/bin/dex2oat-boost-daemon.sh` | 守护进程：降档 + 轮询 + 倒计时 + 并行编译 |
| `源码/customize.sh` / `源码/uninstall.sh` | 刷入时设权限 / 卸载时停进程并还原属性 |
| `源码/META-INF/…` | Magisk 安装入口 |
| `构建/build.sh` | 打包成可刷入 zip（需本机 python3） |
| `产物/dex2oat-boost-magisk.zip` | 打包产物 |
| `测试/dex2oat-boost-magisk测试.sh` | 离线自测（PC 上跑，不需要真机） |
| `测试/dex2oat-boost-magisk结果.log` | 自测输出 |

## 二、打包

```bash
sh 构建/build.sh
# 产物：产物/dex2oat-boost-magisk.zip
```

## 三、安装 / 卸载

1. 把 `产物/dex2oat-boost-magisk.zip` 用 **Magisk / KernelSU 管理器**（模块 → 从本地安装）刷入。
2. **重启设备**（属性设置与守护进程都在开机后生效）。
3. **降档属性是运行期的**，重启后自动回归系统默认；停用模块后重启即恢复原状。
4. 卸载：管理器里卸载，或运行 `uninstall.sh`（停进程 + 从日志还原本次开机的属性原值 + 删 `/cache/dex2oat-boost.log`）。

## 四、工作流程

```
开机
 └─ service.sh（看门狗）
     └─ bin/dex2oat-boost-daemon.sh
         ├─ ① 写 7 个 pm.dexopt.* = skip          ← 安装期不再编译
         ├─ ② 每 POLL_INTERVAL 秒扫 /data/app
         │     发现新的 <包名>-<hash> 目录 → 入队
         ├─ ③ 倒计时 START_DELAY_CYCLES 个周期
         │     期间再来新装 → 倒计时重置为 3
         └─ ④ 倒计时结束 → 逐个编译
                ├─ pm path 校验代码路径已切到新目录（覆盖安装防编旧版）
                ├─ cmd package compile -m speed <包名>
                └─ 每周期看 CPU 4–7：< 50% 且有剩余包 → 再起一个（最多 3 并发）
```

### 倒计时为什么是 3 个周期

安装完成后 PackageManager 还要把代码路径切到新目录、清理旧目录。3 × 5 s = 15 s 的窗口既是防抖（连续安装多个包时合并成一批），也避免在 PM 还没切换完成时编译。

### 动态并行的边界

- 第一个编译任务**无条件启动**；**第二个**必须满足「CPU 4–7 使用率 < 50%」。
- 上限由 `MAX_PARALLEL` 控制（默认 3）。
- **注意**：`cmd package compile` 走 PackageManagerService，多个并发请求**可能被 PMS / installd 串行排队**，未必真正并行；真机效果需实测。

## 五、配置（`源码/config.prop`）

| 键 | 默认 | 说明 |
|---|---|---|
| `POLL_INTERVAL` | `5` | 轮询间隔（秒） |
| `DOWNGRADE_ENABLE` | `1` | 是否写入降档属性 |
| `INSTALL_FILTER` | `skip` | 安装期降到的编译档 |
| `DOWNGRADE_REASONS` | 7 个 reason | 对哪些 reason 降档 |
| `RECOMPILE_FILTER` | `speed` | 装后重编译到的编译档 |
| `RECOMPILE_FORCE` | `0` | 1 = 加 `-f` 强制重编译 |
| `START_DELAY_CYCLES` | `3` | 发现新装后等几个周期再编译 |
| `MAX_PARALLEL` | `3` | 并行编译上限 |
| `CPU_CORE_SET` | `4-7` | 负载判定的核心集合（`4-7` 或单核 `4`；留空 = 全部核） |
| `CPU_LOAD_THRESHOLD` | `50` | 低于该百分比才允许再开一个 |
| `READY_CHECK` | `1` | 编译前用 `pm path` 校验 |
| `COMPILE_RETRY_MAX` | `3` | 编译失败重试上限 |
| `PENDING_MAX_CYCLES` | `120` | 等待「就绪」的上限（轮） |
| `MAX_LOG_BYTES` / `LOG_KEEP_LINES` | `262144` / `400` | 日志体积上限与轮转保留行数 |

改完**重启生效**。

## 六、设计取舍

### 6.1 `skip` 而不是 `verify`

- `skip` 连 vdex 都不生成，安装最快、首次启动最慢，靠 15 s 后的 `speed` 补回来。
- `verify` 保留 vdex，首次启动快一些但安装稍慢。
- 本模块取 Scene 的做法：**最激进的一档**。想保守可把 `INSTALL_FILTER` 改成 `verify`。

### 6.2 `speed` 与 `speed -f` 的区别

| | `-m speed` | `-m speed -f` |
|---|---|---|
| 含义 | 编译过滤器 = 全量 AOT | 同一过滤器 + 强制重编译 |
| 无 `-f` | 系统判断当前产物是否已满足 `speed`；满足则**直接返回 Success，实际什么都没做** | — |
| 有 `-f` | — | 无条件重跑 dex2oat |

- 默认 `RECOMPILE_FORCE=0`：安装期已 `skip`，正常不会留下低档产物，不需要强制。
- 若某 ROM 忽略属性、安装期仍生成了低档产物，可设 `RECOMPILE_FORCE=1`。
- **`Success` 不代表真的编译了**，要确认得看 `oat/arm64/` 产物时间戳或 `dumpsys package dexopt`。

### 6.3 基线与去重

- **首次运行只建立基线**：把当前 `/data/app` 下所有包目录记入 `state.tsv`，**不编译任何既有应用**。
- **去重键 = `<~~父目录>/<包名>-<hash>` 相对路径**。安装与覆盖更新都会生成新的目录名，键一变即视为「新增/变更」。
- 基线每轮与当前扫描结果求交后修剪，自动剔除已卸载的包。扫描失败或空结果时跳过本轮、不改动基线。

### 6.4 解析 `/data/app` 目录名取包名

- 兼容 `/data/app/~~<base64>==/<包名>-<hash>/` 与 `/data/app/<包名>-<hash>/` 两种布局。
- **包名 = 第一个 `-` 之前的部分**。包名不允许含 `-`，而 `<hash>` 是 URL-safe base64、可能含 `-`，所以必须按第一个 `-` 切。
- 包名须只含 `[A-Za-z0-9_.]` 且含点；不满足的目录一律跳过。

### 6.5 就绪门禁

覆盖安装时新目录先出现、PM 稍后才切换代码路径。编译前用 `pm path <包名>` 确认路径已指向本候选目录，未就绪则等待（最多 `PENDING_MAX_CYCLES` 轮），避免编到旧版本。

### 6.6 状态与异常自愈

- **持久状态只有两个文件**，放在模块 `bin/` 下：`state.tsv`（基线）、`queue.tsv`（待编译，每行 `键 等待轮数 失败次数`）。
- 运行中任务只在内存里；**队列条目在编译成功前不删除**，进程重启后会自动继续，不需要额外的对账文件。
- **临时文件在 `bin/.tmp/`**（每次启动清空）：`job.N.rc` 存编译退出码与结束时刻，`q` 是改写队列的中转文件。
- **唯一的日志在 `/cache/dex2oat-boost.log`**，守护与看门狗共用，看门狗行带 `service.sh：` 前缀。行首时间为 `日 时:分:秒`。
- 原属性值写进日志的 `orig <键>=<值>` 行；卸载脚本从日志里取每个键**第一次**出现的值来还原。
- 守护主循环单轮内任何非致命错误只记日志、不退出；`service.sh` 是看门狗，进程退出 5 秒后重启。
- 日志按体积轮转。

## 七、验证

```sh
# 1) 属性已降档（应为 skip）
su -c 'getprop pm.dexopt.install'
su -c 'getprop pm.dexopt.install-create-dm'

# 2) 守护进程在跑
su -c 'ps -A | grep dex2oat-boost-daemon'

# 3) 装一个 APK，看日志
su -c 'tail -f /cache/dex2oat-boost.log'
#   期望：<时间> <包名> dex2oat   →  编译结束  <时间> <包名> speed（时间为编译结束时刻）

# 4) 确认产物与编译档
su -c 'ls -l /data/app/~~*/<包名>-*/oat/arm64/'
su -c 'cmd package dump <包名> | grep -i filter'
```

## 八、已知限制

- **未做真机验证**：离线自测（34 项）覆盖逻辑与路径解析，但真机上的属性写入权限、`/data/app` 解析、`cmd package compile` 并发行为均需按〈七、验证〉复核。
- **并行未必生效**：见 §四「动态并行的边界」。
- 依赖 KernelSU / Magisk 的 `service.sh` 开机执行机制；换 root 方案或 OTA 后需重新部署。
- 本模块与同项目的 **LSPosed 版（`../lsp模块/`）相互独立**；两者同时启用会对同一个包各编译一次（幂等、无害、浪费 CPU/IO），建议二选一。
