#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：解析 ELF 重定位，解码 adrp/add/call 目标符号
import sys
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection

path = sys.argv[1]
lo = int(sys.argv[2], 16); hi = int(sys.argv[3], 16)
with open(path, 'rb') as f:
    e = ELFFile(f)
    symtab = e.get_section_by_name('.symtab')
    T = {0x113:'ADR_PREL_PG_HI21',0x115:'ADD_ABS_LO12_NC',0x11b:'CALL26',
         0x101:'ABS64',0x102:'ABS32',0x105:'PREL32',0x114:'ADR_PREL_LO21',
         0x112:'ADD_ABS_LO12',0x11c:'JUMP26',0x12a:'LDST64_ABS_LO12_NC'}
    for sec in e.iter_sections():
        if not isinstance(sec, RelocationSection):
            continue
        # target section index
        info = sec['sh_info']
        tgt = e.get_section(info).name if info < e.num_sections() else '?'
        for r in sec.iter_relocations():
            off = r['r_offset']
            if not (lo <= off <= hi):
                continue
            symidx = r['r_info_sym']
            nm = symtab.get_symbol(symidx).name if symidx else ''
            t = r['r_info_type']
            print('%-28s off=0x%06x type=0x%x(%s) sym=%s add=%d' % (
                sec.name, off, t, T.get(t,'?'), nm, r['r_addend']))
