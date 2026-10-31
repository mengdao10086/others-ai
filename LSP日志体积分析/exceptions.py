#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""按异常单元重建 HyperCeiler systemui 异常堆栈并归类。

单元定义：一条 E 级业务消息记录 + 其续行 + 紧随其后的「带头部堆栈帧记录」及其续行。
"""
import re
import sys
import json
from collections import defaultdict, Counter

LOG = r"D:/下载/LocalSend/ea61e5470491e2ba50cf8f14f0a392dd.log"
HEADER_RE = re.compile(
    r'^\[ (?P<ts>\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{3})'
    r'\s+(?P<uid>\d+):\s+(?P<pid>\d+):\s+(?P<tid>\d+)'
    r' (?P<level>[VDIWEF])/(?P<tag>\S+) \] '
    r'\((?P<proc>.*?)\)\[(?P<bracket>[^\]]*)\]'
    r'(?: (?P<msg>.*))?$'
)
STACK_RE = re.compile(r'^\s*at [\w$.\-]+[.(]')
EXC_RE = re.compile(r'\b((?:[a-zA-Z_$][\w$]*\.)+(?:[A-Z][\w$]*)?(?:Exception|Error|Throwable))\b')
HC_FRAME_RE = re.compile(r'^\s*at (com\.sevtinge\.hyperceiler[\w.$]*)\.([\w$<>]+)\(')
RULE_FRAME_RE = re.compile(r'^\s*at (com\.sevtinge\.hyperceiler\.libhook\.(?:rules|app)[\w.$]*)\.([\w$<>]+)\(')


def main():
    raw = open(LOG, 'rb').read()
    parts = raw.split(b'\n')
    if raw.endswith(b'\n'):
        parts = parts[:-1]

    records = []
    cur = None
    last_ts = None
    call_root = None
    for i, b in enumerate(parts):
        nb = len(b) + 1
        s = b.decode('utf-8', 'replace').rstrip('\r')
        m = HEADER_RE.match(s)
        if m:
            g = m.groupdict()
            bracket = g['bracket']
            module = bracket.split(',')[0].strip() if bracket else ''
            callid = bracket.split(',')[2].strip() if bracket.count(',') >= 2 else ''
            if callid:
                # callid 形如 1334-1a18cf04694-2-9,0 (方括号内逗号分段)，取前 4 段为根
                call_root = '-'.join(callid.split('-')[:4])
            cur = {
                'lineno': i + 1, 'ts': g['ts'], 'level': g['level'], 'proc': g['proc'],
                'module': module, 'callid': callid, 'callroot': call_root,
                'msg': g['msg'] or '', 'bytes': nb, 'lines': [(i + 1, s)],
                'cont_bytes': 0, 'cont_lines': 0,
            }
            records.append(cur)
        else:
            if cur is None:
                continue
            cur['cont_bytes'] += nb
            cur['cont_lines'] += 1
            cur['lines'].append((i + 1, s))

    # 业务错误记录：HyperCeiler + systemui + E + 非堆栈帧
    def is_stack_record(r):
        return STACK_RE.match(r['msg'].strip()) is not None

    def is_biz_error(r):
        return (r['module'] == 'com.sevtinge.hyperceiler'
                and r['proc'] == 'com.android.systemui'
                and r['level'] == 'E'
                and not is_stack_record(r))

    units = []
    i = 0
    while i < len(records):
        r = records[i]
        if not is_biz_error(r):
            i += 1
            continue
        unit = {
            'start_line': r['lineno'], 'ts': r['ts'], 'msg': r['msg'],
            'lines': list(r['lines']), 'bytes': r['bytes'] + r['cont_bytes'],
            'records': 1, 'stack_records': 0,
            'end_line': r['lineno'],
        }
        j = i + 1
        while j < len(records) and is_stack_record(records[j]):
            rr = records[j]
            unit['lines'].extend(rr['lines'])
            unit['bytes'] += rr['bytes'] + rr['cont_bytes']
            unit['records'] += 1
            unit['stack_records'] += 1
            unit['end_line'] = rr['lines'][-1][0]
            j += 1
        units.append(unit)
        i = j

    # 统计未归属的堆栈帧记录
    assigned = set()
    for u in units:
        pass
    total_stack_records = sum(1 for r in records if is_stack_record(r))
    # 归类
    grouped = defaultdict(lambda: {'units': [], 'bytes': 0, 'lines': 0, 'records': 0})
    unit_rows = []
    for u in units:
        text = '\n'.join(s for _, s in u['lines'])
        exc = None
        for _, s in u['lines']:
            mm = EXC_RE.search(s)
            if mm:
                exc = mm.group(1)
                break
        hc_frames = []
        rule_frames = []
        for _, s in u['lines']:
            mm = HC_FRAME_RE.match(s)
            if mm:
                hc_frames.append(f'{mm.group(1)}.{mm.group(2)}')
            mr = RULE_FRAME_RE.match(s)
            if mr:
                rule_frames.append(f'{mr.group(1)}.{mr.group(2)}')
        top_hc = hc_frames[0] if hc_frames else '<无 HyperCeiler 帧>'
        rule = rule_frames[0] if rule_frames else '<无业务规则帧>'
        key = (exc or '<无异常类>', top_hc)
        g = grouped[key]
        g['units'].append(u)
        g['bytes'] += u['bytes']
        g['lines'] += len(u['lines'])
        g['records'] += u['records']
        unit_rows.append({
            'start_line': u['start_line'], 'end_line': u['end_line'], 'ts': u['ts'],
            'bytes': u['bytes'], 'lines': len(u['lines']), 'records': u['records'],
            'stack_records': u['stack_records'],
            'exc': exc or '<无异常类>', 'top_hc': top_hc, 'rule': rule,
            'msg': u['msg'][:160],
            'hc_frames': hc_frames, 'rule_frames': rule_frames,
        })

    print(f'records={len(records)} biz_units={len(units)} stack_records_total={total_stack_records} '
          f'assigned_stack_records={sum(u["stack_records"] for u in units)}')
    print('\n=== UNITS ===')
    for k, u in enumerate(unit_rows, 1):
        print(f'{k:2d} L{u["start_line"]}-{u["end_line"]} {u["ts"]} B={u["bytes"]:6d} lines={u["lines"]:4d} '
              f'rec={u["records"]:2d} stackrec={u["stack_records"]:2d} | {u["exc"]} | topHC={u["top_hc"]} | rule={u["rule"]}')
        print(f'    msg={u["msg"]}')
    print('\n=== GROUPED ===')
    for (exc, top), g in sorted(grouped.items(), key=lambda kv: -kv[1]['bytes']):
        print(f'{len(g["units"]):2d}x B={g["bytes"]:6d} lines={g["lines"]:4d} rec={g["records"]:3d} | {exc} | {top}')
        print(f'    rules={Counter(x["rule"] for x in unit_rows if (x["exc"], x["top_hc"]) == (exc, top)).most_common()}')
    with open('exceptions.json', 'w', encoding='utf-8') as f:
        json.dump({'units': unit_rows,
                   'groups': [{'exc': k[0], 'top_hc': k[1], 'count': len(v['units']),
                               'bytes': v['bytes'], 'lines': v['lines'], 'records': v['records'],
                               'rules': Counter(x['rule'] for x in unit_rows if (x['exc'], x['top_hc']) == k).most_common()}
                              for k, v in sorted(grouped.items(), key=lambda kv: -kv[1]['bytes'])]},
                  f, ensure_ascii=False, indent=2)


if __name__ == '__main__':
    main()
