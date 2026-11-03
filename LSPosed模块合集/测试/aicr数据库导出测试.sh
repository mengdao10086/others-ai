#!/system/bin/sh
# aicr 分析数据库导出
#   作用：把 admin_index.db（含 WAL/SHM）拷到脚本同目录，并统计文件大小
#   用法（需 root）：su -c 'sh /storage/emulated/0/一键另存/测试/aicr数据库导出测试.sh'
#   结果：同目录 aicr数据库导出结果.log + admin_index.db*

DIR=$(cd "$(dirname "$0")" && pwd)
OUT="$DIR/aicr数据库导出结果.log"
DBDIR=/data/data/com.xiaomi.aicr/databases

log() { echo "$@" >> "$OUT"; }

: > "$OUT"
log "===== aicr 数据库导出 $(date '+%Y-%m-%d %H:%M:%S') ====="

if [ ! -d "$DBDIR" ]; then
    log "目录不存在：$DBDIR"
    exit 1
fi

log "目录内容："
ls -l "$DBDIR" >> "$OUT" 2>&1

for f in admin_index.db admin_index.db-wal admin_index.db-shm; do
    [ -f "$DBDIR/$f" ] || continue
    cp "$DBDIR/$f" "$DIR/$f" 2>/dev/null && log "已拷贝 $f -> $DIR/$f" || log "拷贝失败 $f"
done

log ""
log "导出文件："
ls -l "$DIR"/admin_index.db* >> "$OUT" 2>&1

# 有 sqlite3 就当场统计（多数 ROM 没有，失败不影响导出）
if command -v sqlite3 >/dev/null 2>&1; then
    log ""
    log "===== 状态分布 ====="
    for col in face_state ocr_state tag_state pet_state clip_state quality_State; do
        log "-- $col"
        sqlite3 "$DIR/admin_index.db" "SELECT $col, COUNT(*) FROM gallery GROUP BY $col ORDER BY 2 DESC;" >> "$OUT" 2>&1
    done
    log "-- store_state"
    sqlite3 "$DIR/admin_index.db" "SELECT store_state, COUNT(*) FROM gallery GROUP BY store_state;" >> "$OUT" 2>&1
else
    log ""
    log "（本机无 sqlite3，已导出 db 文件，请在电脑上分析）"
fi

log ""
log "===== 结束 ====="
echo "结果已写入：$OUT"
