# K60 上自定义 zram lz4 压缩等级 —— 可行性分析

基于 boot_Nemo.img md5 `f125f9948087c7bc0fe3e21e91000935`（解包 kernel md5 `3e52a6eb6e3b57d5ae48378483474d1e`，38,623,744 B）。

- 分析日期：2026-11-15
- 目标内核：`5.10.257-android12-9-Kirara-26Y08Alkane-nemo`（`nemo@NetizenNemo-PC`，clang 18 + PGO/BOLT/LTO/MLGO + CFI）
- zram：`vendor_dlkm` 的 `zram.ko`，md5 `21a25de3ee61c6f1ac198316c9573b1e`，vermagic `5.10.160-gki-gf555d54c041a`
- 方式：只读分析（raw Image 字符串/符号/capstone 反汇编 + IKCONFIG + 公开源码）；未刷机、未写系统分区、未改任何原始镜像
- 前序结论沿用：boot_Nemo 有 zstd 的本地补丁 `/sys/module/zstd/parameters/compression_level`；zram `comp_algorithm_store` 只做 `crypto_has_alg` 检查、无白名单；zram 后端名单 = lzo / lzo-rle / lz4 / zstd。

---

## 一、一句话结论

**C ——「lz4 可调压缩等级」这个命题不成立。**

- `lz4` 的 crypto 封装是 **LZ4 快速模式**，压缩调用里 acceleration 写死为 `1`，**没有等级（level）概念**，也没有任何 sysfs / 模块参数。
- 唯一带等级的是 **`lz4hc`**（`LZ4_compress_HC(..., level, ...)`，level 1–12），但本机 **没有注册 `lz4hc` crypto 算法**：`CONFIG_CRYPTO_LZ4HC` 未开，Image 里没有 `lz4hc-generic` / `lz4hc-scomp`，也没有 `lz4hc_init/mod_init`。
- zram 的 `comp_algorithm` 显示名单只有 `lzo lzo-rle lz4 zstd`，**没有 lz4hc**；但该名单只是显示用，真正拦截的是 `crypto_has_alg(name, 2, 0xf)`。若 `lz4hc` 已注册，`echo lz4hc` 本身是能写进去的。
- **没有像 zstd 那样的 lz4 隐藏补丁**：全内核只有 `zstd.compression_level` 一个压缩等级参数。

> 补充（不是结论）：如果退一步问「能不能**补一个可调级的 lz4hc 后端**」，技术上可行（B），但那是新增一个 crypto 算法，不是「调 lz4」，代价与 zstd-cl 报告的编模块路径相同。详见 §4。

---

## 二、lz4 / lz4hc 注册现状（本机实测）

### 2.1 IKCONFIG（`config_IKCONFIG.txt`）

| 行号 | 配置 | 含义 |
|---|---|---|
| 6280 | `CONFIG_CRYPTO_LZ4=y` | crypto 层 `lz4` 已编入内核 |
| 6281 | `# CONFIG_CRYPTO_LZ4HC is not set` | crypto 层 `lz4hc` **未编入** |
| 6282 | `CONFIG_CRYPTO_ZSTD=y` | zstd 已编入 |
| 6401 | `CONFIG_LZ4_COMPRESS=y` | LZ4 库（快速模式）已编入 |
| 6402 | `CONFIG_LZ4HC_COMPRESS=y` | **LZ4HC 库**已编入（供 f2fs 等使用） |
| 6403 | `CONFIG_LZ4_DECOMPRESS=y` | LZ4 解压库已编入 |
| 5882 | `CONFIG_F2FS_FS_LZ4HC=y` | f2fs 可用 lz4hc |

**关键区分**：`CONFIG_LZ4HC_COMPRESS=y` 只说明 LZ4HC 的**算法库**在；`CONFIG_CRYPTO_LZ4HC` 才决定是否把 `lz4hc` 注册成 **crypto 算法**给 zram 用。本机是「库在、crypto 注册不在」。

### 2.2 boot_Nemo Image 里实际注册的 lz4 变体

**字符串（file offset）：**

| 偏移 | 字符串 | 来源 |
|---|---|---|
| `0x023dad38` | `lz4-scomp` | `crypto/lz4.c` 的 scomp 驱动名 |
| `0x023daeb8` | `lz4-generic` | `crypto/lz4.c` 的 comp 驱动名 |
| — | `lz4hc-generic` / `lz4hc-scomp` | **搜不到** |
| `0x01c92370` | `invalid lz4hc compress level: %d` | f2fs 的 lz4hc 等级校验 |

**符号（vmlinux-to-elf 还原 kallsyms）：**

注册相关：

| 符号 | 地址 | 说明 |
|---|---|---|
| `lz4_mod_init` | `0xffffffc00a0af010` | 模块初始化，注册 alg + scomp |
| `lz4_alloc_ctx` / `lz4_free_ctx` | `0xffffffc0088540a8` / `0xffffffc008854148` | scomp 上下文 |
| `lz4_scompress` / `lz4_sdecompress` | `0xffffffc0088541b0` / `0xffffffc008854208` | scomp 压/解压 |
| `lz4_compress_crypto` / `lz4_decompress_crypto` | `0xffffffc008854260` / `0xffffffc0088542b8` | comp 压/解压 |
| `lz4_init` / `lz4_exit` | `0xffffffc008854310` / `0xffffffc0088543cc` | cra_init/cra_exit（vmalloc 上下文） |

`lz4_mod_init` 反汇编（`0xffffffc00a0af010`，file offset `0x20af1d0`）：

```
0xffffffc00a0af020: adrp x0, ...          ; &alg_lz4
0xffffffc00a0af028: bl  0xffffffc00882ccc0 ; crypto_register_alg(&alg_lz4)
0xffffffc00a0af02c: cbnz w0, out
0xffffffc00a0af034: adrp x0, ...          ; &scomp
0xffffffc00a0af03c: mov w9, #0xb          ; CRYPTO_ALG_TYPE_SCOMPRESS
0xffffffc00a0af040: ldr w8, [x0, #0x20]   ; cra_flags
0xffffffc00a0af044: bfxil w8, w9, #0, #4  ; 填入 type 0xb
0xffffffc00a0af050: str x9, [x0, #0x138]  ; cra_type = crypto_scomp_type
0xffffffc00a0af058: bl  0xffffffc00882ccc0 ; crypto_register_alg(&scomp.base)
```

即 `lz4_mod_init` 注册了 **comp（`lz4`/`lz4-generic`）** 与 **scomp（`lz4`/`lz4-scomp`）** 两个算法（`crypto_register_scomp` 被内联成对 base 的改标志 + `crypto_register_alg`）。

**LZ4HC 只有库、没有 crypto 注册**：搜 `lz4hc` 只得到 5 个符号，全是库函数或 f2fs 的：

| 符号 | 地址 | 说明 |
|---|---|---|
| `f2fs_set_lz4hc_level` | `0xffffffc0087612c0` | f2fs 挂载选项解析 |
| `LZ4HC_compress_generic` | `0xffffffc008935c04` | 库 |
| `LZ4HC_compress_generic_noDictCtx` | `0xffffffc0089395b4` | 库 |
| `LZ4HC_compress_optimal` | `0xffffffc00893d36c` | 库 |
| `LZ4HC_searchExtDict` | `0xffffffc008940aa8` | 库 |

没有 `lz4hc_init` / `lz4hc_exit` / `lz4hc_alloc_ctx` / `lz4hc_scompress` / `lz4hc_mod_init`。

### 2.3 lz4 快速模式确实没有等级

`lz4_compress_crypto`（`0xffffffc008854260`）：

```
0xffffffc008854278: ldr  w4, [x4]            ; *dlen
0xffffffc008854280: mov  x2, x3              ; dst
0xffffffc008854284: mov  w3, w8              ; slen
0xffffffc008854288: mov  w5, #1              ; acceleration = 1（写死）
0xffffffc00885428c: bl   0xffffffc00892b564  ; LZ4_compress_fast_extState
```

`lz4_scompress`（`0xffffffc0088541b0`）同样 `mov w5, #1` 后调用 `LZ4_compress_fast_extState`。**acceleration 固定 1，没有 level 入参，也没有读任何全局变量。**

公开源码同版本（`NetizenNemo/android_gki_kernel_5.10_common`，分支 `android12-5.10`）`crypto/lz4.c`：

```c
int out_len = LZ4_compress_default(src, dst, slen, *dlen, ctx);
...
.cra_name        = "lz4",
.cra_driver_name = "lz4-generic",
...
.cra_name        = "lz4",
.cra_driver_name = "lz4-scomp",
```

`LZ4_compress_default` 内部即 acceleration=1 的快速模式。

### 2.4 有等级的 lz4hc：源码本身也写死等级

公开源码 `crypto/lz4hc.c`（同一分支）：

```c
int out_len = LZ4_compress_HC(src, dst, slen, *dlen, LZ4HC_DEFAULT_CLEVEL, ctx);
...
.cra_name        = "lz4hc",
.cra_driver_name = "lz4hc-generic",
...
static int __init lz4hc_mod_init(void) { crypto_register_alg(&alg_lz4hc); crypto_register_scomp(&scomp); ... }
MODULE_ALIAS_CRYPTO("lz4hc");
```

`include/linux/lz4.h:72`：`#define LZ4HC_DEFAULT_CLEVEL 9`。

**含义**：即使把 `CONFIG_CRYPTO_LZ4HC` 打开、编出 stock `lz4hc.ko`，等级也是写死的 **9**，不是可调参数。要可调，必须自己写封装（见 §4 B）。

### 2.5 zram 侧：名单是显示的，不是拦截的

`zram.ko` 的 `zcomp_available_show`（`0x378`，file offset `0x2378`）用 4 个字面量拼显示串；重定位解码出的 `.rodata` 偏移：

| `.rodata` 内偏移 | 文件偏移 | 字符串 |
|---|---|---|
| `0x03e5` | `0x19a5` | `lzo` |
| `0x021e` | `0x17de` | `lzo-rle` |
| `0x029c` | `0x185c` | `lz4` |
| `0x04c2` | `0x1a82` | `zstd` |

**没有 `lz4hc` 字面量。** 该函数对当前算法加 `[%s] `、其余用 `%s `；若当前算法不在这 4 项里、但 `crypto_has_alg` 通过，则在末尾追加 `[comp] `（`0x4a0` 调用 `crypto_has_alg(comp,2,0xf)`，`0x4ac` 取 `[%s] ` 格式串）。所以名单**只是显示用**。

真正决定能不能写的是 `comp_algorithm_store`（`0x3c2c`，file offset `0x5c2c`）：

```
0x3c88: bl   strscpy/memcpy           ; 用户输入拷入 128B 栈缓冲
0x3c8c: bl   strlen                   ; 去尾部 '\n'
0x3cbc: mov  w1, #2                   ; CRYPTO_ALG_TYPE_COMPRESS
0x3cc0: mov  w2, #0xf                 ; CRYPTO_ALG_TYPE_MASK
0x3cc4: bl   crypto_has_alg
0x3cc8: cmp  w0, #1
0x3ccc: b.ne 0x3cfc                   ; 不通过 -> w19 = -22 (EINVAL)
0x3cd0: ... mutex_lock
0x3cdc: ldr  x8, [x21, #0x148]
0x3ce0: cbnz x8, 0x3d34               ; 已初始化 -> -EBUSY + 提示串
0x3ce4: add  x0, x21, #0x150
0x3ce8: add  x1, sp, #8
0x3cec: bl   strcpy                   ; 直接写入算法名
```

**无白名单、无等级字段**：只查 `crypto_has_alg(name,2,0xf)`。`zcomp_available_algorithm`（`0x344`）与 `zcomp_create`（`0x7b4`）也是同一检查：

```
zcomp_available_algorithm:
0x354: mov w1, #2
0x358: mov w2, #0xf
0x35c: bl  crypto_has_alg
0x360: cmp w0, #1
0x364: cset w0, eq

zcomp_create:
0x7c8: mov w1, #2
0x7cc: mov w2, #0xf
0x7d4: bl  crypto_has_alg
0x7d8: cmp w0, #1
0x7dc: b.ne 0x83c                  ; -> -EINVAL
```

`zram.ko` 未定义符号里是 `crypto_alloc_base`、`crypto_comp_compress`、`crypto_comp_decompress`、`crypto_destroy_tfm`、`crypto_has_alg`，走的是 legacy comp API，因此能接受任何注册为 **COMPRESS** 类型的算法。

**结论**：`crypto_has_alg("lz4hc",2,0xf)` 在本机为 **假**（未注册）；不是 zram 名单拦的。换言之：
- 现在 `echo lz4hc > comp_algorithm` → `-EINVAL`（算法不存在）。
- 若将来有人注册了 `lz4hc`，即使显示名单里没有，`echo lz4hc` 也能写入（store 无白名单）。

### 2.6 对照官方内核

`boot_official`（`5.10.236-android12-9-...`，kernel md5 `404c72524dfc500186a05dc13b0357a1`）同样有 `lz4-generic` / `lz4-scomp`，同样**没有** `lz4hc-generic` / `lz4hc-scomp`。即 lz4hc 未注册不是 Nemo 特有，官方也没有。

---

## 三、有没有像 zstd 那样的隐藏补丁（重点）

**没有。** 证据如下。

### 3.1 全内核只有 zstd 一个压缩等级参数

`__param_str_*` 符号共 752 个；按 `lz4|compression|level|zstd` 过滤，只命中：

| 符号 | 字符串内容 | 归属 |
|---|---|---|
| `__param_str_compression_level` (`0xffffffc009de3bd8`) | `zstd.compression_level` | **zstd（前序已定案的本地补丁）** |
| `__param_str_ignore_loglevel` | `ignore_loglevel` | 内核通用 |
| `__param_str_scsi_logging_level` | `scsi_logging_level` | SCSI |
| `__param_str_msg_level` | `msg_level` | net |

**没有任何 `__param_str_lz4*`、`__param_str_*lz4*`、`__param_str_*level*` 与 lz4 相关。**

### 3.2 字符串层面

- 搜 `compression_level` 全内核字符串：只有 `0x01de3bd8 zstd.compression_level`。
- 搜 `lz4.compression_level` / `lz4hc.` / `.level`：0 命中。
- `__param_str_compress` 的实际内容是 **`pstore.compress`**（不是 lz4）；`__param_str_num_compress_pages` 是 **`f2fs.num_compress_pages`**。均与 zram/lz4 无关。

### 3.3 符号层面

- 搜 `lz4` 共 200 个符号：没有任何 `__param_*lz4*`、`set_lz4*`、`lz4_*level*`、`lz4_acceleration`。
- 搜 `level` 只命中通用内核函数、`f2fs_set_lz4hc_level`/`f2fs_set_zstd_level`（f2fs 挂载选项）和 `LZ4_setCompressionLevel`（LZ4HC **库函数**，不是参数）。
- 搜 `accel` 只有 RCU/TTM/Wiimote/网络等，与 lz4 无关。

### 3.4 本机唯一的「lz4hc 等级入口」在 f2fs，不在 zram

公开源码 `fs/f2fs/super.c:541` `f2fs_set_lz4hc_level()`：解析 `compress_algorithm=lz4hc:<level>`，level 必须在 `LZ4HC_MIN_CLEVEL..LZ4HC_MAX_CLEVEL` 之间，写入 `F2FS_OPTION(sbi).compress_level`（`:562` 越界报 `invalid lz4hc compress level`）。对应 Image 字符串 `0x01c92370`。

这只影响 **f2fs 文件系统压缩**，与 zram 内存压缩无关，不能用来改 zram 的 lz4 等级。

### 3.5 小结

作者给 zstd 加了可调全局，**没有**给 lz4 或 lz4hc 加同类补丁。Q3 的答案是明确否定。

---

## 四、三条路代价表

| 路径 | 是否成立 | 依据 / 代价 |
|---|---|---|
| **A 已注册且可调** | **不成立** | `lz4` 已注册，但快速模式无等级：`lz4_compress_crypto`/`lz4_scompress` 固定 `acceleration=1`；无 sysfs 节点、无模块参数、无全局变量。零成本路径不存在。 |
| **B 未注册但能补** | **技术可行，但产物是「lz4hc 后端」，不是「调 lz4」** | `lz4hc` 未注册；但 LZ4HC 库已编入且关键符号**已导出**。可写一个 out-of-tree crypto 模块：`module_param(level, int, 0644)` + `crypto_register_alg()` 注册名为 `lz4hc` 的 COMPRESS 算法，压缩回调里调 `LZ4_compress_HC(src,dst,slen,dlen,level,ctx)`（level 1–12）。代价与 zstd-cl 报告 A 路径相同：约 200–400 行 + Linux 构建环境 + 与 boot_Nemo 的 CFI/LTO/PGO/BOLT 构建链和 MODVERSIONS CRC 匹配 + 真机测试；风险中高。**直接编 stock `crypto/lz4hc.c` 只能得到固定 level 9，不能调。** |
| **C 根本不存在** | **本机现状 = 用户问题的答案** | lz4 没有等级概念；能调级的 lz4hc 本机没注册（`CONFIG_CRYPTO_LZ4HC` 未开、无 `lz4hc-generic/scomp`、无注册符号）；zram 显示名单仅 `lzo lzo-rle lz4 zstd`；无隐藏补丁。 |

### 4.1 B 路径会用到的导出符号与 CRC（boot_Nemo 内核侧，`__kcrctab` 提取）

方法：`__ksymtab` 起点 file offset `0x1fd8330`（`__ksymtab_I_BDEV`），`__kcrctab` 起点 `0x2003110`；用 `module_layout=0x57390c3f` 校验对齐。可复现脚本：`脚本/crc_lz4.py`。

| 符号 | CRC |
|---|---|
| `module_layout` | `0x57390c3f` |
| `crypto_register_alg` | `0x69d058e9` |
| `crypto_unregister_alg` | `0x5a9b4efe` |
| `crypto_register_scomp` | `0xd038d524` |
| `crypto_unregister_scomp` | `0x5429e3a4` |
| `crypto_has_alg` | `0x951a2773` |
| `LZ4_compress_HC` | `0x927798f2` |
| `LZ4_compress_HC_continue` | `0x817590ab` |
| `LZ4_loadDictHC` | `0xd2afc8f7` |
| `LZ4_saveDictHC` | `0xa3a1312e` |
| `LZ4_compress_default` | `0x1f46eb66` |
| `LZ4_compress_fast` | `0x768466b5` |
| `param_ops_int` | `0x5ec9fc13` |
| `kfree` | `0x037a0cba` |
| `vzalloc` | `0x40a9b349` |
| `vfree` | `0x999e8297` |
| `__stack_chk_fail` | `0x98a9d10c` |

注：`crypto_alloc_comp` / `crypto_free_comp` / `kzalloc` 不在导出表；若模块需要分配 scomp/comp 上下文，用 `crypto_alloc_base`（`zram.ko` 自己用的就是它）或 `vzalloc`。`LZ4HC_MEM_COMPRESS` 工作区按 lib 要求自行分配。

### 4.2 一句话取舍

如果目标只是「让 zram 更省内存」，**不要走 B**：B 要重走一遍 zstd-cl 的模块构建/CFI/CRC 风险，收益还得真机验证；现成的 `zstd` + 可写 `compression_level` 已经把这条路打通了（见 §5）。

---

## 五、若为 C：想省内存 / 省 CPU 该往哪个方向调 zstd

**zstd level 越高越省内存、越费 CPU；越低越省 CPU、越占内存。** 默认 `1` 已是最省 CPU 的一端；想省内存就从 `6–9` 起步（再往上 14–22 收益递减、CPU 明显上升），想省 CPU/电/降延迟就保持 `1–3`。4KB zram 页上的实际拐点需用 `/sys/block/zram0/mm_stat` 的 `orig_data_size`/`compr_data_size` 真机实测。

---

## 六、未验证项

1. **无真机态**：没有 `cat /sys/module/zstd/parameters/compression_level`、`cat /sys/block/zram0/comp_algorithm`、`ls /sys/module/zstd/parameters/`；路径与默认值沿用前序报告的离线推导。也未经 `uname -r` 确认设备当前跑的是 boot_Nemo 而不是官方内核。
2. **`crypto_has_alg("lz4hc",2,0xf)` 未在真机执行**：结论来自 IKCONFIG + 注册字符串/符号缺失，不是运行时调用；理论上若有未见过的第三方模块在开机后注册 lz4hc，结论会变（ROM 的 `vendor_dlkm` 里没有 lz4hc 相关 `.ko`，`modules.load` 也只有 lzo/lzo-rle）。
3. **B 路径未实际编译/加载**：模块与 boot_Nemo 的 CFI/LTO/PGO/BOLT/MODVERSIONS 兼容性未验证；`LZ4_compress_HC` 在本内核 lib 版本下的 `ctx` 工作区大小（`LZ4HC_MEM_COMPRESS` / `LZ4_STREAMHCSIZE`）未逐值核对。
4. **zram 的 comp/scomp 选择细节**：`zcomp_create` 的 `crypto_alloc_base` 调用参数（type/mask）未逐字段解码；但 `comp_algorithm_store` 的 `crypto_has_alg(name,2,0xf)` 门禁已足以判定写入是否被接受。
5. **f2fs 的 lz4hc 等级范围**：只确认了 `LZ4HC_DEFAULT_CLEVEL=9`；`LZ4HC_MIN_CLEVEL`/`LZ4HC_MAX_CLEVEL` 的具体值未从源码/二进制确认（公开头文件抓取时未命中）。
6. **实际压缩率/延迟**：lz4、lz4hc、zstd 在 4KB zram 页上的压缩率与 CPU 开销未 A/B 实测。
7. **官方内核的完整配置**：boot_official 只做了 lz4 注册串对照，未解 IKCONFIG；其 `CONFIG_CRYPTO_LZ4HC` 状态未直接确认（但无 lz4hc 注册串）。

---

## 七、证据索引

| # | 命令 / 文件 | 输出摘要 |
|---|---|---|
| 1 | `md5sum boot_Nemo.img` | `f125f9948087c7bc0fe3e21e91000935` |
| 2 | `md5sum 解包/boot_Nemo/kernel` | `3e52a6eb6e3b57d5ae48378483474d1e` |
| 3 | `strdump.py kernel "Linux version 5.10"` | `5.10.257-android12-9-Kirara-26Y08Alkane-nemo`，clang 18 + pgo/bolt/lto/mlgo |
| 4 | `md5sum zram.ko` | `21a25de3ee61c6f1ac198316c9573b1e`；vermagic `5.10.160-gki-gf555d54c041a` |
| 5 | `grep -nE "LZ4" config_IKCONFIG.txt` | 6280 `CONFIG_CRYPTO_LZ4=y`；6281 `# CONFIG_CRYPTO_LZ4HC is not set`；6401–6403 LZ4/ LZ4HC/ LZ4_DECOMPRESS 库 = y |
| 6 | kernel strings | `0x023dad38 lz4-scomp`、`0x023daeb8 lz4-generic`；无 `lz4hc-generic/scomp` |
| 7 | kernel strings | `0x01c92370 invalid lz4hc compress level: %d`（f2fs） |
| 8 | kallsyms 符号 | `lz4_mod_init=0xffffffc00a0af010`、`lz4_compress_crypto=0xffffffc008854260`、`lz4_scompress=0xffffffc0088541b0` |
| 9 | `disasm lz4_mod_init` | 调 `crypto_register_alg` 两次；第二次把 `cra_flags` 置 type `0xb`、`cra_type` 置 scomp 类型（即 comp + scomp 各一） |
| 10 | `disasm lz4_compress_crypto` | `mov w5,#1` → `LZ4_compress_fast_extState`（acceleration=1，无 level） |
| 11 | `disasm lz4_scompress` | 同上，`mov w5,#1` |
| 12 | lz4hc 符号扫描 | 仅 `f2fs_set_lz4hc_level` + 4 个 `LZ4HC_*` 库函数；无 `lz4hc_*init/alloc_ctx/scompress` |
| 13 | `strdump.py zram.ko` + `.rodata` 重定位 | 显示名单字面量：`lzo`(ro+0x3e5)、`lzo-rle`(0x21e)、`lz4`(0x29c)、`zstd`(0x4c2)；无 `lz4hc` |
| 14 | `disasm comp_algorithm_store` (`0x3c2c`) | strscpy→strlen→`crypto_has_alg(name,2,0xf)`→`strcpy`；失败 `-EINVAL`；无白名单 |
| 15 | `disasm zcomp_available_algorithm` (`0x344`) | `crypto_has_alg(name,2,0xf)` |
| 16 | `disasm zcomp_create` (`0x7b4`) | `crypto_has_alg(name,2,0xf)`；失败 `-EINVAL` |
| 17 | `disasm zcomp_available_show` (`0x378`) | 4 个固定字面量 + 未知但对 `crypto_has_alg` 通过的 comp 追加 `[comp]`；名单非拦截 |
| 18 | zram.ko 未定义符号 | `crypto_alloc_base`、`crypto_comp_compress`、`crypto_comp_decompress`、`crypto_destroy_tfm`、`crypto_has_alg`（legacy comp API） |
| 19 | `__param_str_*` 扫描（752 个） | 只有 `zstd.compression_level` 与 lz4 无关；无 `lz4.*` |
| 20 | `__param_str_compress`/`num_compress_pages` 内容 | `pstore.compress` / `f2fs.num_compress_pages`，非 lz4 |
| 21 | kernel strings `compression_level` | 仅 `0x01de3bd8 zstd.compression_level` |
| 22 | 公开源码 `crypto/lz4hc.c` | `LZ4_compress_HC(..., LZ4HC_DEFAULT_CLEVEL, ctx)`；`cra_name="lz4hc"`，`cra_driver_name="lz4hc-generic"`；`MODULE_ALIAS_CRYPTO("lz4hc")` |
| 23 | 公开源码 `include/linux/lz4.h:72` | `#define LZ4HC_DEFAULT_CLEVEL 9` |
| 24 | 公开源码 `crypto/lz4.c` | `LZ4_compress_default(...)`；`lz4`/`lz4-generic` + `lz4`/`lz4-scomp` |
| 25 | 公开源码 `fs/f2fs/super.c:541,1041` | `f2fs_set_lz4hc_level()` 解析 `lz4hc:<level>`；仅 f2fs 用 |
| 26 | `crc_lz4.py`（S=0x1fd8330, KS=0x2003110） | 见 §4.1 CRC 表；`module_layout=0x57390c3f` 校验通过 |
| 27 | boot_official strings | 有 `lz4-generic`/`lz4-scomp`，无 `lz4hc-*`；kernel md5 `404c72524dfc500186a05dc13b0357a1` |

### 本次写入（白名单自查）

- 新增：`杂项\K60_移植17 3.0.318系统相关分析\lz4等级自定义分析\` 下：`lz4等级可行性.md`、`boot_Nemo.elf`（vmlinux-to-elf 产物，47,477,572 B）、`脚本\strdump.py`、`脚本\symscan.py`、`脚本\disasm.py`、`脚本\reloc.py`、`脚本\crc_lz4.py`，以及从 zstd 报告**复制**来的 4 个脚本（原文件未改）
- 修改：`.claude/subagent方案存放区/派单台账.md` 中 `19c64a-10` 单行
- 未改动：`zstd等级自定义分析\**`、`zstd-cl适配分析\**`、`D:\下载\Mi\备份\**`
- 环境副作用（不在仓库内）：`pip install pyelftools`（用于解析 ELF 符号/重定位）；临时文件在 `/tmp`（`lz4hc.c`、`lz4.c`、`f2fs_super.c`）与 `%TEMP%`
- 未刷机、未写系统分区、未提交、未推送

---

## 附：给用户的一句话

这机器上「lz4 调等级」是伪命题：lz4 是快速模式、没有等级；有等级的 lz4hc 内核根本没注册（`CONFIG_CRYPTO_LZ4HC` 没开），zram 名单里也没有它，而且没有隐藏补丁。要省内存，直接用你已经能改的 zstd 等级往高调（6–9 起步）；要省 CPU，保持默认 1 就是最省的一档。
