#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：定位 __ksymtab 数组起点，并用 module_layout 已知 CRC 反推 __kcrctab
import sys, struct

KERNEL = sys.argv[1]
data = open(KERNEL, 'rb').read()
L = len(data)
MASK32 = 0xffffffff

def u32(off): return struct.unpack_from('<I', data, off)[0]
def s32(off): return struct.unpack_from('<i', data, off)[0]
def cstr(off, maxlen=256):
    e = data.find(b'\0', off, min(off+maxlen, L))
    if e < 0: return None
    if e == off: return ''
    ss = data[off:e]
    for c in ss:
        if c < 0x20 or c > 0x7e: return None
    return ss.decode('ascii')

def entry_valid(E):
    if E < 0 or E+12 > L: return None
    vo=s32(E); no=s32(E+4); nso=s32(E+8)
    val=(E+vo)&MASK32; namep=(E+4+no)&MASK32; nsp=(E+8+nso)&MASK32
    if not (0<=val<L): return None
    if not (0<=namep<L): return None
    nm=cstr(namep)
    if nm is None or len(nm)==0: return None
    if nsp!=E+8 and cstr(nsp) is None: return None
    return (val,namep,nm)

# known entries from pass 1
entries = {
 'module_layout': 0x01fe2440,
 'crypto_register_alg': 0x01ff210c,
 'crypto_unregister_alg': 0x01ff231c,
 'zstd_init_cctx': 0x01fe9ef8,
 'zstd_compress_cctx': 0x01fe9e38,
 'zstd_cctx_workspace_bound': 0x01fe9e14,
 'zstd_get_params': 0x01fe9eec,
 'zstd_is_error': 0x01fe9f28,
 'zstd_decompress_dctx': 0x01fe9e80,
 'vzalloc': 0x01fe9430,
 'vfree': 0x01fe8fc8,
 'kfree_sensitive': 0x01fe12c4,
 'crypto_has_alg': 0x01ff1fec,
 'param_ops_uint': 0x01fe3868,
 'param_ops_string': 0x01fe385c,
 '__stack_chk_fail': 0x01fd965c,
}

# find array start by stepping back from lowest entry
low = min(entries.values())
E = low
valid_count = 0
while True:
    prev = E - 12
    if prev < 0: break
    if entry_valid(prev) is None: break
    E = prev
    valid_count += 1
S = E
print("array start S = 0x%08x (stepped back %d entries from 0x%08x)" % (S, valid_count, low))

# verify all entries lie on S + 12k
for k, v in sorted(entries.items(), key=lambda x:x[1]):
    idx = (v - S)
    assert idx % 12 == 0, (k, hex(v), idx)
    print("  %-28s idx=%d" % (k, idx//12))

# find end of array
E = max(entries.values())
while entry_valid(E+12) is not None:
    E += 12
S_end = E + 12
print("array end   = 0x%08x  entries=%d" % (S_end, (S_end-S)//12))

# module_layout index
ml_idx = (entries['module_layout'] - S)//12
print("module_layout idx =", ml_idx)

# scan for candidate CRC value 0x2db3247c
target_crc = 0x2db3247c
needle = struct.pack('<I', target_crc)
positions = []
st = 0
while True:
    i = data.find(needle, st)
    if i < 0: break
    positions.append(i); st = i+1
print("\noccurrences of 0x%08x: %d" % (target_crc, len(positions)), [hex(x) for x in positions[:20]])

for P in positions:
    ks = P - ml_idx*4
    if ks < 0: continue
    # validate: ks should be 4-aligned and candidate array length
    if ks % 4: continue
    print("candidate kcrctab start = 0x%08x (P=0x%08x)" % (ks, P))
