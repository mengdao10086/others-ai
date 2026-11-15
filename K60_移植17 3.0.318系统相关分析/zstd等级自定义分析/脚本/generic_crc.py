#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 通用：对任意 raw arm64 Image 求 module_layout 的内核侧 CRC
import sys, struct
K=sys.argv[1]
data=open(K,'rb').read(); L=len(data); M=0xffffffff
def u32(o):return struct.unpack_from('<I',data,o)[0]
def s32(o):return struct.unpack_from('<i',data,o)[0]
def cstr(o,ml=256):
    e=data.find(b'\0',o,min(o+ml,L))
    if e<0:return None
    if e==o:return ''
    ss=data[o:e]
    if any(c<0x20 or c>0x7e for c in ss):return None
    return ss.decode()
def ev(E):
    if E<0 or E+12>L:return None
    vo=s32(E);no=s32(E+4);nso=s32(E+8)
    val=(E+vo)&M;np=(E+4+no)&M;ns=(E+8+nso)&M
    if not(0<=val<L and 0<=np<L):return None
    nm=cstr(np)
    if not nm:return None
    if ns!=E+8 and cstr(ns) is None:return None
    return (val,np,nm)
names=["module_layout","memcpy","memmove","memset","__stack_chk_fail","__stack_chk_guard","bcmp","strncmp","strlen"]
tN={}
for n in names:
    st=0;nd=n.encode()+b'\0'
    while True:
        i=data.find(nd,st)
        if i<0:break
        tN.setdefault(i,n);st=i+1
hits={}
for q in range(0,L-4,4):
    v=(u32(q)+q)&M
    if v in tN:
        E=q-4
        if E<0:continue
        r=ev(E)
        if r and r[1]==v:
            hits.setdefault(tN[v],[]).append(E)
print("kernel size",L)
for n in names:
    print(" ",n,[hex(x) for x in hits.get(n,[])])
# S: step back from min entry
alle=[e for v in hits.values() for e in v]
if not alle: raise SystemExit("no entries")
low=min(alle); E=low
while ev(E-12) is not None: E-=12
S=E
print("S=",hex(S))
# known CRCs from libc symbols to derive kstart
known={"memcpy":0x4829a47e,"memmove":0x5a9f1d63,"memset":0xdcb764ad,"__stack_chk_fail":0x98a9d10c,"__stack_chk_guard":0x8f678b07,"bcmp":0x263c3152}
cand=[]
for nm,crc in known.items():
    if nm not in hits: continue
    E=hits[nm][0]; idx=(E-S)//12
    needle=struct.pack('<I',crc)
    st=0
    while True:
        i=data.find(needle,st)
        if i<0:break
        cand.append(i-idx*4); st=i+1
from collections import Counter
c=Counter(cand)
print("kstart candidates:",[(hex(k),n) for k,n in c.most_common(6)])
if c:
    ks=c.most_common(1)[0][0]
    print("chosen kstart",hex(ks))
    for nm in ["module_layout","memcpy","memset","__stack_chk_fail"]:
        if nm in hits:
            E=hits[nm][0]; idx=(E-S)//12
            print("  %-20s idx=%-6d crc=0x%08x"%(nm,idx,u32(ks+idx*4)))
