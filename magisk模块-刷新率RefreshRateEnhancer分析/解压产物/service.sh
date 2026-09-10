#!/system/bin/sh

MODDIR="${0%/*}"
LOG_FILE="/data/local/tmp/refresh165_enhancer.log"
HOOK_PACKAGE="dev.xiaomiext.homehz"
APK_SRC="$MODDIR/hook/Global165HzHook.apk"
APK_HASH_MARK="/data/local/tmp/refresh165_global165_apk.sha256"
export MODDIR LOG_FILE

. "$MODDIR/refresh_lib.sh"

wait_boot_completed() {
    i=0
    while [ "$i" -lt 180 ]; do
        [ "$(getprop sys.boot_completed)" = "1" ] && return 0
        i=$((i + 1))
        sleep 2
    done
    return 1
}

package_path() {
    pm path "$HOOK_PACKAGE" 2>/dev/null | sed -n 's/^package://p' | head -n 1
}

file_hash() {
    sha256sum "$1" 2>/dev/null | awk '{print $1}'
}

install_hook_apk() {
    pm install -r "$APK_SRC" >> "$LOG_FILE" 2>&1 && return 0
    log_refresh "replace install failed, uninstall old hook package once"
    pm uninstall "$HOOK_PACKAGE" >> "$LOG_FILE" 2>&1 || true
    pm install "$APK_SRC" >> "$LOG_FILE" 2>&1
}

ensure_hook_installed_once_per_apk() {
    [ -f "$APK_SRC" ] || {
        log_refresh "missing hook apk: $APK_SRC"
        return 0
    }
    src_hash="$(file_hash "$APK_SRC")"
    old_hash="$(cat "$APK_HASH_MARK" 2>/dev/null)"
    [ -n "$src_hash" ] || return 0
    current_path="$(package_path)"
    case "$current_path" in
        /system/*|/product/*|/vendor/*|/odm/*|/system_ext/*)
            echo "$src_hash" > "$APK_HASH_MARK" 2>/dev/null || true
            log_refresh "$HOOK_PACKAGE resolved as mounted system app: $current_path"
            ;;
        *)
            if [ "$src_hash" = "$old_hash" ] && [ -n "$current_path" ]; then
                log_refresh "$HOOK_PACKAGE unchanged, skip package install: $current_path"
                return 0
            fi
            log_refresh "installing 165Hz hook apk once for hash=$src_hash current=${current_path:-missing}"
            install_hook_apk || true
            if [ -n "$(package_path)" ]; then
                echo "$src_hash" > "$APK_HASH_MARK" 2>/dev/null || true
            fi
            ;;
    esac
}

main() {
    sh "$MODDIR/mount_files.sh" service
    wait_boot_completed || {
        log_refresh "boot not completed, skip"
        exit 0
    }
    RATE="$(detect_max_refresh)"
    apply_refresh_unlock "$RATE"
    # Hook now reads the detected peak (144/165/185/...) instead of a
    # hardcoded 165, so install it on every supported panel.
    ensure_hook_installed_once_per_apk
    guard_refresh_settings "$RATE"
    log_refresh "service finished rate=${RATE}Hz device=$(getprop ro.product.device) sdk=$(getprop ro.build.version.sdk)"
}

main
