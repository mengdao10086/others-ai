#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：从 raw arm64 Image 提取 __ksymtab / __kcrctab，解析导出符号 CRC
import sys, struct, re

KERNEL = sys.argv[1]
data = open(KERNEL, 'rb').read()
L = len(data)
print("kernel size", L)

MASK32 = 0xffffffff

def u32(off):
    return struct.unpack_from('<I', data, off)[0]

def s32(off):
    return struct.unpack_from('<i', data, off)[0]

def cstr(off, maxlen=256):
    e = data.find(b'\0', off, min(off+maxlen, L))
    if e < 0:
        return None
    if e == off:
        return ''
    ss = data[off:e]
    for c in ss:
        if c < 0x20 or c > 0x7e:
            return None
    return ss.decode('ascii')

def find_string_offsets(name):
    needle = name.encode() + b'\0'
    res = []
    start = 0
    while True:
        i = data.find(needle, start)
        if i < 0:
            break
        res.append(i)
        start = i+1
    return res

def entry_valid(E):
    if E < 0 or E+12 > L:
        return None
    vo = s32(E); no = s32(E+4); nso = s32(E+8)
    val = (E + vo) & MASK32
    namep = (E + 4 + no) & MASK32
    nsp = (E + 8 + nso) & MASK32
    if not (0 <= val < L):
        return None
    if not (0 <= namep < L):
        return None
    nm = cstr(namep)
    if nm is None or len(nm) == 0:
        return None
    if nsp != E+8:
        ns = cstr(nsp)
        if ns is None:
            return None
    return (val, namep, nm)

def locate_entry(name):
    # return list of (entry_off, value_file_off) for ksymtab entries referencing name
    outs = []
    for N in find_string_offsets(name):
        # scan 4-byte aligned q where u32(q)+q == N
        # iterate
        # use bytes scanning for speed: build target low 4 bytes
        for q in range(0, L-4, 4):
            if (u32(q) + q) & MASK32 == N:
                E = q - 4
                if E < 0:
                    continue
                v = entry_valid(E)
                if v and v[1] == N:
                    outs.append((E, v[0], N))
    return outs

targets = ["module_layout","crypto_register_alg","crypto_unregister_alg","zstd_init_cctx",
           "zstd_compress_cctx","zstd_cctx_workspace_bound","zstd_get_params","zstd_is_error",
           "zstd_decompress_dctx","zstd_dctx_workspace_bound","vzalloc","vfree","kfree_sensitive",
           "kzalloc","crypto_alloc_comp","crypto_has_alg","param_ops_uint","param_ops_string","__stack_chk_fail"]

# speed: single pass, collect target N -> name
tN = {}
for t in targets:
    for N in find_string_offsets(t):
        tN.setdefault(N, t)

print("candidate string offsets:")
for N, t in sorted(tN.items(), key=lambda x:x[0]):
    print("  0x%08x %s" % (N, t))

matches = {}
for q in range(0, L-4, 4):
    v = (u32(q) + q) & MASK32
    if v in tN:
        E = q - 4
        if E < 0:
            continue
        ev = entry_valid(E)
        if ev and ev[1] == v:
            matches.setdefault(tN[v], []).append((E, ev[0], v))

print("\nksymtab entries found:")
for t in targets:
    if t in matches:
        for (E, val, N) in matches[t]:
            print("  %-32s entry=0x%08x value_fileoff=0x%08x nameoff=0x%08x" % (t, E, val, N))
    else:
        print("  %-32s (none)" % t)
