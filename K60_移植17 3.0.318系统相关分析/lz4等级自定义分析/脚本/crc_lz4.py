#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：提取指定导出符号在 boot_Nemo 内核侧的 CRC（MODVERSIONS）
import sys, struct
K = sys.argv[1]
S = int(sys.argv[2], 16)      # ksymtab start (file offset)
KS = int(sys.argv[3], 16)     # kcrctab start (file offset)
data = open(K, 'rb').read(); L = len(data); M = 0xffffffff

def u32(o): return struct.unpack_from('<I', data, o)[0]
def s32(o): return struct.unpack_from('<i', data, o)[0]
def cstr(o, ml=256):
    e = data.find(b'\0', o, min(o + ml, L))
    if e < 0: return None
    if e == o: return ''
    ss = data[o:e]
    if any(c < 0x20 or c > 0x7e for c in ss): return None
    return ss.decode()
def ev(E):
    if E < 0 or E + 12 > L: return None
    vo = s32(E); no = s32(E + 4); nso = s32(E + 8)
    val = (E + vo) & M; np = (E + 4 + no) & M; ns = (E + 8 + nso) & M
    if not (0 <= val < L and 0 <= np < L): return None
    nm = cstr(np)
    if not nm: return None
    if ns != E + 8 and cstr(ns) is None: return None
    return (val, np, nm)

targets = [
 "module_layout",
 "crypto_register_alg","crypto_unregister_alg",
 "crypto_register_scomp","crypto_unregister_scomp",
 "crypto_alloc_comp","crypto_free_comp","crypto_has_alg",
 "LZ4_compress_HC","LZ4_compress_HC_extStateHC","LZ4_compress_HC_continue",
 "LZ4_loadDictHC","LZ4_saveDictHC","LZ4_compress_default","LZ4_compress_fast",
 "kzalloc","kfree","vzalloc","vfree","param_ops_int","param_ops_uint",
 "__stack_chk_fail",
]
tN = {}
for n in targets:
    nd = n.encode() + b'\0'; st = 0
    while True:
        i = data.find(nd, st)
        if i < 0: break
        tN.setdefault(i, n); st = i + 1
hits = {}
for q in range(0, L - 4, 4):
    v = (u32(q) + q) & M
    if v in tN:
        E = q - 4
        if E < 0: continue
        r = ev(E)
        if r and r[1] == v:
            nm = tN[v]; idx = (E - S)
            if idx % 12 == 0:
                hits.setdefault(nm, []).append((E, idx // 12))
print("%-32s %-12s %s" % ("symbol", "ksymtab_idx", "crc"))
for n in targets:
    if n in hits:
        E, idx = hits[n][0]
        print("%-32s %-12d 0x%08x" % (n, idx, u32(KS + idx * 4)))
    else:
        print("%-32s %-12s %s" % (n, "-", "(not exported / not found)"))
