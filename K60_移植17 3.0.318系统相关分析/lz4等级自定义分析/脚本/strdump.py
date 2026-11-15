#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# 只读：like strings(1), printable ASCII runs with file offsets; optional grep
import sys

path = sys.argv[1]
subs = [s.lower() for s in sys.argv[2:]] if len(sys.argv) > 2 else []
MIN = 4
data = open(path, 'rb').read()
L = len(data)

def flush(buf, start, out):
    if len(buf) >= MIN:
        s = bytes(buf).decode('latin-1')
        if not subs or any(x in s.lower() for x in subs):
            out.append('0x%08x %s' % (start, s))

out = []
buf = bytearray()
start = 0
for i, b in enumerate(data):
    if 0x20 <= b <= 0x7e or b == 9:
        if not buf:
            start = i
        buf.append(b)
    else:
        flush(buf, start, out)
        buf = bytearray()
flush(buf, start, out)
print('\n'.join(out))
print('--- TOTAL %d strings (filtered=%s) ---' % (len(out), subs), file=sys.stderr)
