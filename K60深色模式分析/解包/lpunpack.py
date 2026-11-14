#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""lpunpack.py —— Android 动态分区 (super.img / LP metadata) 解包器，纯 Python，无需 lpunpack.exe。

用途:
    # 列出分区表（不写盘）
    python -X utf8 lpunpack.py super.img --list

    # 解出全部分区到目录
    python -X utf8 lpunpack.py super.img D:/out

    # 只解指定分区（可多个；名字不带 _a/_b 时自动找 *_a）
    python -X utf8 lpunpack.py super.img D:/out system system_ext product mi_ext

设计说明:
    - 读取 geometry (offset 4096) 与 primary metadata (offset 12288)。
    - 每个逻辑分区按 partition -> extent 表逐个线性 extent 拼接，写到独立 .img。
    - target_type=0 为线性（super 内偏移）；其它类型（如 FIT/zero）会被跳过并告警。
    - 只支持 raw 格式 super.img；sparse (magic 0xED26FF3A) 会直接报错退出。
    - 输出镜像 = 分区有效数据长度（不做 4K 对齐补零），大小与 lpunpack 默认行为一致。
    - 已实测于 K60 HyperOS 移植包 (super.img 8.5GiB, LP v10.2)。

注意: Windows 中文路径请用 `python -X utf8` 运行，否则 argv 解码会乱码。
"""
import json
import os
import struct
import sys

LP_PARTITION_RESERVED_BYTES = 12288  # 4096*3
LP_GEOMETRY_OFFSET = 4096
LP_GEOMETRY_SIZE = 4096
LP_METADATA_HEADER_MAGIC = 0x414C5030
LP_GEOMETRY_MAGIC = 0x616C4467
SPARSE_MAGIC = 0xED26FF3A
SECTOR = 512
CHUNK = 64 * 1024 * 1024

DESC_NAMES = ["partitions", "extents", "groups", "block_devices", "flags", "reserved"]


def read_at(f, off, n):
    f.seek(off)
    data = f.read(n)
    if len(data) != n:
        raise ValueError("short read at %d: want %d got %d" % (off, n, len(data)))
    return data


def parse_geometry(f):
    g = read_at(f, LP_GEOMETRY_OFFSET, 52)
    magic, ssize = struct.unpack_from("<II", g, 0)
    if magic != LP_GEOMETRY_MAGIC:
        # 也可能是 sparse 镜像
        head = read_at(f, 0, 4)
        if struct.unpack_from("<I", head, 0)[0] == SPARSE_MAGIC:
            raise ValueError("这是 sparse 镜像，请先 simg2img 转 raw")
        raise ValueError("geometry magic 不匹配: 0x%08x" % magic)
    meta_max, slots, lbs = struct.unpack_from("<III", g, 40)
    return {"struct_size": ssize, "metadata_max_size": meta_max,
            "metadata_slot_count": slots, "logical_block_size": lbs}


def parse_metadata(f, base=LP_PARTITION_RESERVED_BYTES):
    h = read_at(f, base, 256)
    magic, maj, mnr, hsize = struct.unpack_from("<IHHI", h, 0)
    if magic != LP_METADATA_HEADER_MAGIC:
        raise ValueError("metadata header magic 不匹配: 0x%08x" % magic)
    tables_size = struct.unpack_from("<I", h, 44)[0]
    desc = {}
    o = 80
    for name in DESC_NAMES:
        off, num, esz = struct.unpack_from("<III", h, o)
        o += 12
        desc[name] = {"offset": off, "num": num, "entry_size": esz}
    return {"major": maj, "minor": mnr, "header_size": hsize,
            "tables_size": tables_size, "desc": desc,
            "tables_base": base + hsize}


def parse_all(f, meta):
    T = meta["tables_base"]
    d = meta["desc"]

    groups = []
    for i in range(d["groups"]["num"]):
        b = read_at(f, T + d["groups"]["offset"] + i * d["groups"]["entry_size"], d["groups"]["entry_size"])
        name = b[:36].split(b"\0")[0].decode("utf-8", "replace")
        groups.append(name)

    parts = []
    for i in range(d["partitions"]["num"]):
        b = read_at(f, T + d["partitions"]["offset"] + i * d["partitions"]["entry_size"], d["partitions"]["entry_size"])
        name = b[:36].split(b"\0")[0].decode("utf-8", "replace")
        attr, first, num, grp = struct.unpack_from("<IIII", b, 36)
        ext = []
        for j in range(num):
            eb = read_at(f, T + d["extents"]["offset"] + (first + j) * d["extents"]["entry_size"], d["extents"]["entry_size"])
            nsec, ttype, tdata, tsrc = struct.unpack_from("<QIQI", eb, 0)
            ext.append({"num_sectors": nsec, "target_type": ttype,
                        "target_data": tdata, "target_source": tsrc})
        parts.append({"name": name, "attributes": attr,
                      "group": groups[grp] if grp < len(groups) else "?",
                      "extents": ext})
    return groups, parts


def size_bytes(p):
    return sum(e["num_sectors"] for e in p["extents"]) * SECTOR


def extract_partition(f, part, out_path):
    total = size_bytes(part)
    written = 0
    unsupported = [e for e in part["extents"] if e["target_type"] != 0]
    with open(out_path, "wb") as out:
        for e in part["extents"]:
            remain = e["num_sectors"] * SECTOR
            src = e["target_data"] * SECTOR
            if e["target_type"] != 0:
                # 未知 extent 类型：写全零占位，保证后续偏移正确
                while remain > 0:
                    n = min(remain, CHUNK)
                    out.write(b"\0" * n)
                    remain -= n
                    written += n
                continue
            while remain > 0:
                n = min(remain, CHUNK)
                out.write(read_at(f, src, n))
                src += n
                remain -= n
                written += n
    return written, unsupported


def main(argv):
    if len(argv) < 2:
        print(__doc__)
        return 2
    image = argv[1]
    rest = argv[2:]
    do_list = "--list" in rest
    rest = [a for a in rest if a != "--list"]
    outdir = None if do_list else (rest[0] if rest else None)
    wanted = rest[1:] if (outdir and len(rest) > 1) else []

    with open(image, "rb") as f:
        geom = parse_geometry(f)
        meta = parse_metadata(f)
        groups, parts = parse_all(f, meta)

        print("geometry: meta_max=%d slots=%d lbs=%d" % (
            geom["metadata_max_size"], geom["metadata_slot_count"], geom["logical_block_size"]))
        print("metadata: v%d.%d groups=%s" % (meta["major"], meta["minor"], groups))
        print("%-18s %12s  %-26s %s" % ("partition", "size", "group", "extents"))
        for p in parts:
            exts = ", ".join("sector@%d+%d" % (e["target_data"], e["num_sectors"]) for e in p["extents"]) or "-"
            print("%-18s %10.1fMiB  %-26s %s" % (p["name"], size_bytes(p) / 1048576.0, p["group"], exts))
        if do_list:
            return 0

        os.makedirs(outdir, exist_ok=True)
        manifest = []
        for p in parts:
            if wanted:
                hit = p["name"] in wanted or p["name"].rsplit("_", 1)[0] in wanted
                if not hit:
                    continue
            if not p["extents"]:
                print("[skip] %s 无 extent（空槽位）" % p["name"])
                continue
            out_path = os.path.join(outdir, p["name"] + ".img")
            written, unsupported = extract_partition(f, p, out_path)
            if unsupported:
                print("[warn] %s 含 %d 个非线性 extent，已写零占位" % (p["name"], len(unsupported)))
            manifest.append({"name": p["name"], "path": out_path,
                             "size": written, "group": p["group"]})
            print("[ok] %s -> %s (%.1fMiB)" % (p["name"], out_path, written / 1048576.0))

        with open(os.path.join(outdir, "manifest.json"), "w", encoding="utf-8") as mf:
            json.dump({"image": image, "geometry": geom,
                       "metadata_version": "%d.%d" % (meta["major"], meta["minor"]),
                       "partitions": manifest}, mf, ensure_ascii=False, indent=2)
        print("manifest -> %s" % os.path.join(outdir, "manifest.json"))
    return 0


if __name__ == "__main__":
    sys.exit(main(sys.argv))
