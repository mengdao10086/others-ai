#!/system/bin/sh

MODDIR="${0%/*}"
PAYLOAD="$MODDIR/files"
LOG_FILE="/data/local/tmp/refresh165_enhancer_mount.log"
PHASE="${1:-manual}"

log_msg() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')][$PHASE] $*" >> "$LOG_FILE"
    log -t refresh165_enhancer "[$PHASE] $*" 2>/dev/null || true
}

mount_one() {
    src="$1"
    rel="${src#$PAYLOAD/}"
    dst="/$rel"
    count=0

    if [ ! -f "$dst" ]; then
        log_msg "skip missing target: $dst"
        return 0
    fi

    chown 0:0 "$src" 2>/dev/null || true
    chmod 0644 "$src" 2>/dev/null || true
    chcon --reference "$dst" "$src" 2>/dev/null || chcon u:object_r:vendor_file:s0 "$src" 2>/dev/null || true

    while grep -q " $dst " /proc/self/mountinfo 2>/dev/null; do
        umount "$dst" 2>/dev/null || umount -l "$dst" 2>/dev/null || break
        count=$((count + 1))
        [ "$count" -gt 8 ] && {
            log_msg "too many bind layers: $dst"
            return 1
        }
    done

    if mount --bind "$src" "$dst" 2>>"$LOG_FILE"; then
        src_label="$(toybox ls -lZ "$src" 2>/dev/null)"
        dst_label="$(toybox ls -lZ "$dst" 2>/dev/null)"
        log_msg "mounted: $dst"
        log_msg "source label=$src_label"
        log_msg "target label=$dst_label"
    else
        log_msg "mount failed: $dst"
    fi
}

[ -d "$PAYLOAD" ] || {
    log_msg "payload directory missing"
    exit 0
}

find "$PAYLOAD" -type f | while IFS= read -r src; do
    mount_one "$src"
done
