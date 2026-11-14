#!/usr/bin/env python3
"""Parse tempctrl.c: top-level function bodies, their references to file-scope
static objects, and calls into other top-level functions.

Usage: python -I analyze_functions.py <tempctrl.c> [--json out.json]
"""
import re
import sys
import json

src_path = sys.argv[1]
text = open(src_path, 'r', encoding='utf-8', errors='replace').read()
lines = text.split('\n')

# --- mask comments / string / char literals, preserving offsets & newlines ---
masked = list(text)
i = 0
n = len(text)
state = 'code'
while i < n:
    c = text[i]
    if state == 'code':
        if c == '/' and i + 1 < n and text[i+1] == '/':
            state = 'linecomment'
            masked[i] = ' '; i += 1
        elif c == '/' and i + 1 < n and text[i+1] == '*':
            state = 'blockcomment'
            masked[i] = ' '; i += 1
        elif c == '"':
            state = 'string'; masked[i] = ' '
        elif c == "'":
            state = 'char'; masked[i] = ' '
        i += 1
    elif state == 'linecomment':
        if c == '\n':
            state = 'code'
        else:
            masked[i] = ' '
        i += 1
    elif state == 'blockcomment':
        if c == '*' and i + 1 < n and text[i+1] == '/':
            masked[i] = ' '; masked[i+1] = ' '; i += 2; state = 'code'
        else:
            if c != '\n': masked[i] = ' '
            i += 1
    elif state in ('string', 'char'):
        if c == '\\' and i + 1 < n:
            masked[i] = ' '; masked[i+1] = ' '
            i += 2
        elif (state == 'string' and c == '"') or (state == 'char' and c == "'"):
            masked[i] = ' '; state = 'code'; i += 1
        else:
            if c != '\n': masked[i] = ' '
            i += 1
clean = ''.join(masked)

# mask preprocessor lines (whole logical line, incl. continuations)
clean_lines = clean.split('\n')
raw_lines = text.split('\n')
in_pp = False
for idx, ln in enumerate(clean_lines):
    if in_pp:
        clean_lines[idx] = ' ' * len(ln)
        if not raw_lines[idx].rstrip().endswith('\\'):
            in_pp = False
    elif ln.lstrip().startswith('#'):
        clean_lines[idx] = ' ' * len(ln)
        if raw_lines[idx].rstrip().endswith('\\'):
            in_pp = True
clean = '\n'.join(clean_lines)

def line_of(off):
    return clean.count('\n', 0, off)

def find_matching(off, open_ch, close_ch, forward=True):
    depth = 0
    i = off
    if forward:
        while i < n:
            if clean[i] == open_ch: depth += 1
            elif clean[i] == close_ch:
                depth -= 1
                if depth == 0: return i
            i += 1
    else:
        while i >= 0:
            if clean[i] == close_ch: depth += 1
            elif clean[i] == open_ch:
                depth -= 1
                if depth == 0: return i
            i -= 1
    return -1

# --- top-level brace depth map ---
# find function definitions: at depth 0, an identifier followed by (...), then {
depth = 0
funcs = []
i = 0
while i < n:
    c = clean[i]
    if c == '{':
        if depth == 0:
            # try to identify a function header that ends here
            close = find_matching(i, '{', '}', True)
            open_paren = clean.rfind('(', 0, i)
            close_paren = clean.rfind(')', 0, i)
            if open_paren != -1 and close_paren != -1 and close_paren < i:
                # ensure only whitespace between close_paren and {
                between = clean[close_paren+1:i]
                if between.strip() == '':
                    # identifier before '('
                    m = re.search(r'([A-Za-z_][A-Za-z0-9_]*)\s*$', clean[:open_paren])
                    if m:
                        name = m.group(1)
                        if name not in ('if', 'for', 'while', 'switch', 'return', 'sizeof'):
                            body = clean[i+1:close] if close != -1 else ''
                            funcs.append((name, line_of(i)+1, line_of(close)+1 if close != -1 else -1, body))
                            depth = 0
                            i = close + 1 if close != -1 else n
                            continue
        depth += 1
    elif c == '}':
        depth = max(0, depth - 1)
    i += 1

# --- file-scope static object declarations ---
# Work on clean text; find top-level statements beginning with 'static' outside funcs.
func_ranges = [(f[1]-1, f[2]-1) for f in funcs if f[2] > 0]
def in_func(line_idx):
    for a, b in func_ranges:
        if a <= line_idx <= b:
            return True
    return False

static_objs = []
candidate_buf = []
start_line = None
for idx, ln in enumerate(clean_lines):
    if in_func(idx):
        candidate_buf = []; start_line = None
        continue
    if re.match(r'^\s*static\s+', ln):
        if start_line is None: start_line = idx
        candidate_buf.append(ln)
        if ';' in ln:
            decl = ' '.join(candidate_buf)
            if '(' not in decl.split('=')[0] or '=' in decl:
                # crude: functions have '(' before '=' and no '='
                pass
            decl_part = decl.split('=')[0]
            m = re.findall(r'([A-Za-z_][A-Za-z0-9_]*)\s*(?:\[[^\]]*\])?\s*(?:,|$)', decl_part)
            # keep likely variable names (exclude type keywords)
            kws = {'static','const','volatile','unsigned','signed','int','long','short','char',
                   'float','double','void','struct','union','enum','size_t','time_t','FILE',
                   'pid_t','mode_t','ssize_t','uid_t','gid_t','uint8_t','uint16_t','uint32_t',
                   'uint64_t','int8_t','int16_t','int32_t','int64_t','bool'}
            names = [x for x in m if x not in kws]
            static_objs.extend(names)
            candidate_buf = []; start_line = None
        else:
            # multi-line declaration; stop if looks like function
            if re.search(r'\([^;]*$', ln):
                candidate_buf = []; start_line = None
    else:
        if candidate_buf:
            candidate_buf = []; start_line = None

static_set = set(static_objs)
func_names = set(f[0] for f in funcs)

io_tokens = ['fopen','fclose','open(','close(','read(','write(','fread','fwrite','fprintf',
             'printf','sprintf','snprintf','opendir','readdir','execv','fork','system(','popen',
             'socket','select','syscall','access(','stat(','lstat','fstat','chmod','chown',
             'clock_gettime','gettimeofday','usleep','sleep(','alarm(','kill(','waitpid',
             'flock','fcntl','fgets','fgetc','fputs','fputc','fflush','fsync','dup2']

def refs(body):
    ids = set(re.findall(r'\b([A-Za-z_][A-Za-z0-9_]*)\b', body))
    return ids

results = []
for name, ln_start, ln_end, body in funcs:
    ids = refs(body)
    hits = sorted(ids & static_set)
    calls = sorted(ids & func_names - {name})
    iohits = sorted(t for t in io_tokens if t.rstrip('(') in ids or t in body)
    results.append({
        'name': name, 'start': ln_start, 'end': ln_end,
        'lines': ln_end - ln_start + 1 if ln_end > 0 else 0,
        'static_refs': hits,
        'calls': calls,
        'io': iohits,
        'body': body,
        'pure0': (not hits) and (not iohits),
    })

pure = [r for r in results if r['pure0']]
print(f"total functions: {len(results)}")
print(f"file-scope static object names: {len(static_set)}")
print(f"zero-static-ref functions: {len([r for r in results if not r['static_refs']])}")
print(f"zero-static + zero-io functions: {len(pure)}")
print("\n=== PURE (no static refs, no io tokens) ===")
for r in sorted(pure, key=lambda x: x['start']):
    print(f"{r['start']:5d}-{r['end']:5d} {r['lines']:4d}L {r['name']:40s} calls={','.join(r['calls'])}")

print("\n=== zero-static but has io ===")
for r in sorted([r for r in results if not r['static_refs'] and r['io']], key=lambda x: x['start']):
    print(f"{r['start']:5d}-{r['end']:5d} {r['lines']:4d}L {r['name']:40s} io={','.join(r['io'])} calls={','.join(r['calls'])}")

if '--json' in sys.argv:
    out = sys.argv[sys.argv.index('--json')+1]
    json.dump({'functions': results, 'statics': sorted(static_set)}, open(out, 'w'), indent=1)
