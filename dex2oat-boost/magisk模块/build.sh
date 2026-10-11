#!/bin/sh
# 构建可刷入的 dex2oat-boost 模块 zip（纯 root 版）。
# 用法：sh build.sh [输出zip路径]
# 依赖本机 python3/python（仅用于打包，控制权限位）。
set -e

HERE="$(cd "$(dirname "$0")" && pwd)"
OUT="${1:-$HERE/dex2oat-boost-magisk.zip}"

PY="$(command -v python3 2>/dev/null || command -v python 2>/dev/null || true)"
[ -n "$PY" ] || { echo "错误：需要 python3（或 python）来打包"; exit 1; }

"$PY" - "$HERE" "$OUT" <<'PYEOF'
import sys, os, zipfile, stat

src, out = sys.argv[1], sys.argv[2]
files = [
    "module.prop",
    "customize.sh",
    "service.sh",
    "uninstall.sh",
    "config.prop",
    "bin/dex2oat-boost-daemon.sh",
    "META-INF/com/google/android/update-binary",
    "META-INF/com/google/android/updater-script",
]

def perm_for(rel):
    if rel.endswith(".sh") or rel.endswith("update-binary"):
        return 0o755
    return 0o644

with zipfile.ZipFile(out, "w", zipfile.ZIP_DEFLATED) as z:
    for rel in files:
        path = os.path.join(src, *rel.split("/"))
        if not os.path.isfile(path):
            raise SystemExit("缺少文件：" + path)
        with open(path, "rb") as f:
            data = f.read()
        zi = zipfile.ZipInfo(rel, date_time=(2026, 10, 12, 0, 0, 0))
        zi.compress_type = zipfile.ZIP_DEFLATED
        zi.external_attr = (stat.S_IFREG | perm_for(rel)) << 16
        z.writestr(zi, data)
print("已生成：" + out)
PYEOF

ls -l "$OUT"
