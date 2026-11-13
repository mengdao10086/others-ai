# Minimal PE import table + IAT call-site scanner (read-only).
# Usage: python -I pe_scan.py <exe|dll> [--imports] [--calls FUNC_SUBSTR] [--near]
import sys, struct, re, os

def u16(b,o): return struct.unpack_from('<H',b,o)[0]
def u32(b,o): return struct.unpack_from('<I',b,o)[0]
def u64(b,o): return struct.unpack_from('<Q',b,o)[0]

def parse(path):
    b=open(path,'rb').read()
    if b[:2]!=b'MZ': raise SystemExit('not PE')
    e=u32(b,0x3c)
    assert b[e:e+4]==b'PE\0\0'
    coff=e+4
    nsec=u16(b,coff+2); optsz=u16(b,coff+16)
    opt=coff+20
    magic=u16(b,opt)
    pe32plus = magic==0x20b
    imgrva = u32(b,opt+(112 if pe32plus else 96)+8)  # data dir index 1
    secs=[]
    so=opt+optsz
    for i in range(nsec):
        o=so+i*40
        name=b[o:o+8].rstrip(b'\0').decode('latin1')
        vsize=u32(b,o+8); va=u32(b,o+12); rsize=u32(b,o+16); roff=u32(b,o+20)
        secs.append((name,va,vsize,roff,rsize))
    return b, pe32plus, imgrva, secs

def rva2off(secs, rva):
    for name,va,vsize,roff,rsize in secs:
        if va <= rva < va+max(vsize,rsize):
            return roff+(rva-va)
    return None

def read_str(b,off):
    if off is None: return None
    end=b.find(b'\0',off)
    return b[off:end].decode('latin1')

def imports(path):
    b,pe32plus,imgrva,secs=parse(path)
    off=rva2off(secs,imgrva)
    out=[]  # (dll, func, iat_rva)
    if off is None: return out,secs,pe32plus
    d=off
    while True:
        oft=u32(b,d); name=rva2off(secs,u32(b,d+12)); firstthunk=u32(b,d+16)
        if name is None: break
        dll=read_str(b,name)
        t=rva2off(secs, oft or firstthunk)
        iat=firstthunk
        j=0
        while True:
            if pe32plus:
                v=u64(b,t+j*8)
                isord = v & (1<<63)
                rva=v & 0x7fffffffffffffff
            else:
                v=u32(b,t+j*4)
                isord = v & (1<<31)
                rva=v & 0x7fffffff
            if v==0: break
            if isord:
                fn='#%d'%(rva & 0xffff)
            else:
                no=rva2off(secs,rva)
                fn=read_str(b,no+2) if no else None
            out.append((dll,fn,iat+j*(8 if pe32plus else 4)))
            j+=1
        d+=20
    return out,secs,pe32plus

def scan_calls(path, funcs, near=False):
    b,pe32plus,imgrva,secs=parse(path)
    opt=u32(b,0x3c)+4+20
    imagebase = u64(b,opt+24) if pe32plus else u32(b,opt+28)
    out,_,_=imports(path)
    targets=[(d,f,iat) for d,f,iat in out if f and any(s.lower() in f.lower() for s in funcs)]
    # collect all rip-relative indirect call/jmp sites once
    sites_all=[]
    for name,sva,vsize,roff,rsize in secs:
        if not roff or rsize==0: continue
        chunk=b[roff:roff+rsize]
        for opc,kind in ((b'\xff\x15','call'),(b'\xff\x25','jmp')):
            idx=0
            while True:
                i=chunk.find(opc,idx)
                if i<0: break
                if i+6<=len(chunk):
                    disp=struct.unpack_from('<i',chunk,i+2)[0]
                    va=sva+i
                    if pe32plus:
                        tgt=imagebase+va+6+disp
                    else:
                        tgt=(disp & 0xffffffff)  # absolute VA operand in 32-bit
                    sites_all.append((tgt, va, kind))
                idx=i+1
    res=[]
    for dll,fn,iat in targets:
        absva=imagebase+iat
        sites=[(hex(va),kind) for tgt,va,kind in sites_all if tgt==absva]
        res.append((dll,fn,hex(absva),sites))
    return res

if __name__=='__main__':
    path=sys.argv[1]
    mode=sys.argv[2] if len(sys.argv)>2 else '--imports'
    if mode=='--imports':
        imps,_,_=imports(path)
        for dll,fn,iat in imps:
            print(f'{dll}!{fn} iat={iat:#x}')
    elif mode=='--calls':
        funcs=sys.argv[3].split(',')
        for dll,fn,iat,sites in scan_calls(path,funcs):
            print(f'{dll}!{fn} iat={iat} sites={len(sites)} {sites[:20]}')
