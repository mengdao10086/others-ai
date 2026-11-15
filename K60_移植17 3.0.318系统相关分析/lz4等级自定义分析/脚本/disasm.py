#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：用 capstone 反汇编 ELF 中指定符号（按符号表地址定位所在段/文件偏移）
import sys, struct
from elftools.elf.elffile import ELFFile
from capstone import Cs, CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN

path = sys.argv[1]
name = sys.argv[2]
maxins = int(sys.argv[3]) if len(sys.argv) > 3 else 80

with open(path, 'rb') as f:
    elf = ELFFile(f)
    symtab = elf.get_section_by_name('.symtab')
    sym = None
    for s in symtab.iter_symbols():
        if s.name == name:
            sym = s; break
    if sym is None:
        # try startswith
        cands = [s for s in symtab.iter_symbols() if s.name.startswith(name)]
        if not cands:
            print('symbol not found:', name, file=sys.stderr); sys.exit(1)
        sym = cands[0]
        print('# matched:', sym.name, file=sys.stderr)
    addr = sym['st_value']
    size = sym['st_size']
    shndx = sym['st_shndx']
    if isinstance(shndx, str):
        sec = elf.get_section_by_name(shndx)
    else:
        sec = elf.get_section(shndx)
    if sec is None:
        print('no section for symbol (shndx=%r)' % (shndx,), file=sys.stderr); sys.exit(1)
    off = sec['sh_offset'] + (addr - sec['sh_addr'])
    # size unknown often 0; take up to next symbol in same section or cap
    if size == 0:
        nxt = None
        for s in symtab.iter_symbols():
            if s['st_shndx'] != shndx:
                continue
            v = s['st_value']
            if v > addr and (nxt is None or v < nxt):
                nxt = v
        size = (nxt - addr) if nxt else 256
        if size > 4096: size = 4096
    with open(path, 'rb') as g:
        g.seek(off)
        code = g.read(size)
    print('# %s addr=0x%x size=0x%x sec=%s fileoff=0x%x' % (sym.name, addr, size, sec.name, off))
    md = Cs(CS_ARCH_ARM64, CS_MODE_LITTLE_ENDIAN)
    md.detail = True
    n = 0
    for insn in md.disasm(code, addr):
        print('0x%x:\t%s\t%s' % (insn.address, insn.mnemonic, insn.op_str))
        n += 1
        if n >= maxins: break
