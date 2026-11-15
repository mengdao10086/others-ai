#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：扫描 ELF 符号表，按子串过滤，输出 name/addr/size/type
import sys
from elftools.elf.elffile import ELFFile

path = sys.argv[1]
subs = [s.lower() for s in sys.argv[2:]]
with open(path, 'rb') as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name('.symtab')
    if symtab is None:
        print('no symtab', file=sys.stderr); sys.exit(1)
    rows = []
    for s in symtab.iter_symbols():
        nm = s.name
        if not nm:
            continue
        if subs and not any(x in nm.lower() for x in subs):
            continue
        rows.append((s['st_value'], nm, s['st_size'], s['st_info']['type']))
    rows.sort()
    print('sec\tname\taddr\tsize')
    for addr, nm, size, typ in rows:
        print('%s\t%s\t0x%016x\t0x%x' % (typ, nm, addr, size))
    print('--- %d symbols ---' % len(rows), file=sys.stderr)
