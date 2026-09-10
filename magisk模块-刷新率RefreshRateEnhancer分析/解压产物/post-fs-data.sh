#!/system/bin/sh

MODDIR="${0%/*}"
LOG_FILE="/data/local/tmp/refresh165_enhancer.log"
export MODDIR LOG_FILE

. "$MODDIR/refresh_lib.sh"

# One-shot: seed LSPosed scope (Home + SystemUI + android) before lspd starts.
if [ -f "$MODDIR/lspd_modules_config.db" ] && [ -d /data/adb/lspd/config ]; then
    cp -f "$MODDIR/lspd_modules_config.db" /data/adb/lspd/config/modules_config.db
    rm -f /data/adb/lspd/config/modules_config.db-wal /data/adb/lspd/config/modules_config.db-shm
    chmod 600 /data/adb/lspd/config/modules_config.db
    rm -f "$MODDIR/lspd_modules_config.db"
    log_refresh "seeded LSPosed scope for homehz (android+home+systemui)"
fi

sh "$MODDIR/mount_files.sh" post-fs-data

RATE="$(detect_panel_refresh_from_sysfs)"
[ -n "$RATE" ] || RATE="$(detect_panel_refresh_fallback)"
apply_refresh_props "$RATE"
write_detected_rate "$RATE"
log_refresh "post-fs-data props set to ${RATE}Hz"
