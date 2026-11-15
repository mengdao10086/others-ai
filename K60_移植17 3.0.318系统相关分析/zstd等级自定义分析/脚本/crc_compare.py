#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：解析模块 __versions，与内核 Image 的 __ksymtab/__kcrctab 逐符号比对
import sys, struct
KERNEL, MOD = sys.argv[1], sys.argv[2]
data = open(KERNEL,'rb').read().lstrip(b'\x00') if False else open(KERNEL,'rb').read()
L=len(data); M=0xffffffff
def u32(o): return struct.unpack_from('<I',data,o)[0]
def s32(o): return struct.unpack_from('<i',data,o)[0]
def cstr(o,ml=256):
    e=data.find(b'\0',o,min(o+ml,L))
    if e<0: return None
    if e==o: return ''
    ss=data[o:e]
    if any(c<0x20 or c>0x7e for c in ss): return None
    return ss.decode()
def ev(E):
    if E<0 or E+12>L: return None
    vo=s32(E);no=s32(E+4);nso=s32(E+8)
    val=(E+vo)&M;np=(E+4+no)&M;ns=(E+8+nso)&M
    if not(0<=val<L and 0<=np<L): return None
    nm=cstr(np)
    if not nm: return None
    if ns!=E+8 and cstr(ns) is None: return None
    return (val,np,nm)

def parse_elf_versions(path):
    d=open(path,'rb').read()
    if d[:4]!=b'\x7fELF': raise SystemExit('not elf')
    is64=d[4]==2; le=d[5]==1
    en='<' if le else '>'
    e_shoff=struct.unpack_from(en+'Q',d,0x28)[0]
    e_shentsize=struct.unpack_from(en+'H',d,0x3a)[0]
    e_shnum=struct.unpack_from(en+'H',d,0x3c)[0]
    e_shstrndx=struct.unpack_from(en+'H',d,0x3e)[0]
    def sh(i):
        o=e_shoff+i*e_shentsize
        name,typ,flags,addr,off,size,link,info,align,entsize=struct.unpack_from(en+'IIQQQQIIQQ',d,o)
        return dict(name=name,off=off,size=size,addr=addr)
    shstr=sh(e_shstrndx)
    def secname(nmoff):
        o=shstr['off']+nmoff; e=d.find(b'\0',o); return d[o:e].decode()
    secs=[]
    for i in range(e_shnum):
        s=sh(i); s['sname']=secname(s['name']); secs.append(s)
    vers=[s for s in secs if s['sname']=='__versions']
    if not vers: raise SystemExit('no __versions')
    v=vers[0]; ent=64
    out=[]
    for i in range(v['size']//ent):
        o=v['off']+i*ent
        crc=struct.unpack_from('<Q',d,o)[0]&0xffffffff
        nm=d[o+8:o+8+56].split(b'\0')[0].decode()
        out.append((nm,crc))
    return out

vers=parse_elf_versions(MOD)
print("module __versions entries:",len(vers))

# build target string-offset map
tN={}
for nm,crc in vers:
    needle=nm.encode()+b'\0'
    st=0
    while True:
        i=data.find(needle,st)
        if i<0: break
        tN.setdefault(i,nm); st=i+1

S=int(sys.argv[3],16) if len(sys.argv)>3 else 0x1fd8bc4
kstart=int(sys.argv[4],16) if len(sys.argv)>4 else 0x20033ec
hits={}
for q in range(0,L-4,4):
    v=(u32(q)+q)&M
    if v in tN:
        E=q-4
        if E<0: continue
        r=ev(E)
        if r and r[1]==v:
            nm=tN[v]
            idx=(E-S)
            if idx%12==0:
                idx//=12
                hits.setdefault(nm,[]).append((E,idx,u32(kstart+idx*4)))

same=0; diff=0; miss=0; diff_list=[]; miss_list=[]
for nm,crc in vers:
    if nm in hits:
        # take first
        E,idx,kcrc=hits[nm][0]
        if kcrc==crc:
            same+=1
        else:
            diff+=1; diff_list.append((nm,crc,kcrc,idx))
    else:
        miss+=1; miss_list.append(nm)
print("match=%d diff=%d miss=%d total=%d"%(same,diff,miss,len(vers)))
print("\n-- DIFF (module crc vs kernel kcrc) --")
for nm,a,b,idx in diff_list[:60]:
    print("  %-32s mod=0x%08x kern=0x%08x idx=%d"%(nm,a,b,idx))
print("\n-- MISS (no ksymtab entry found) --")
print("  "+", ".join(miss_list[:80]))
