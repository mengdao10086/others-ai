#!/system/bin/sh

REFRESH_STATE_FILE="${REFRESH_STATE_FILE:-/data/local/tmp/refresh165_detected_rate}"

log_refresh() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $*" >> "${LOG_FILE:-/data/local/tmp/refresh165_enhancer.log}"
    log -t refresh165_enhancer "$*" 2>/dev/null || true
}

is_hz() {
    [ -n "$1" ] || return 1
    case "$1" in
        *[!0-9]*) return 1 ;;
    esac
    [ "$1" -ge 60 ] && [ "$1" -le 240 ]
}

consider_hz() {
    hz="$1"
    is_hz "$hz" || return 0
    if [ -z "$REFRESH_MAX" ] || [ "$hz" -gt "$REFRESH_MAX" ]; then
        REFRESH_MAX="$hz"
    fi
}

detect_panel_refresh_from_sysfs() {
    REFRESH_MAX=
    for status in /sys/class/drm/card*-DSI-*/status /sys/class/drm/card*-eDP-*/status; do
        [ -e "$status" ] || continue
        [ "$(cat "$status" 2>/dev/null)" = "connected" ] || continue
        modes="${status%/status}/modes"
        [ -f "$modes" ] || continue
        while IFS= read -r mode || [ -n "$mode" ]; do
            [ -n "$mode" ] || continue
            case "$mode" in
                *[0-9]x[0-9]*x[0-9]*)
                    hz="${mode##*x}"
                    hz="${hz%%[!0-9]*}"
                    consider_hz "$hz"
                    ;;
            esac
        done < "$modes"
    done
    [ -n "$REFRESH_MAX" ] && echo "$REFRESH_MAX"
}

detect_panel_refresh_from_dumpsys() {
    dumpsys display 2>/dev/null | tr ',' '\n' | sed -n 's/.*fps=\([0-9][0-9]*\).*/\1/p' | \
        awk '$1 >= 60 && $1 <= 240 { if ($1 > m) m = $1 } END { if (m > 0) print m }'
}

detect_panel_refresh_fallback() {
    case "$(getprop ro.product.device)" in
        songyuan) echo 185 ;;
        warsaw|prague) echo 165 ;;
        *) echo 165 ;;
    esac
}

detect_max_refresh() {
    rate="$(detect_panel_refresh_from_sysfs)"
    [ -n "$rate" ] || rate="$(detect_panel_refresh_from_dumpsys)"
    [ -n "$rate" ] || rate="$(detect_panel_refresh_fallback)"
    echo "$rate"
}

write_detected_rate() {
    rate="$1"
    echo "$rate" > "$REFRESH_STATE_FILE" 2>/dev/null || true
    if [ -n "$MODDIR" ]; then
        echo "$rate" > "$MODDIR/detected_refresh_rate" 2>/dev/null || true
    fi
}

reset_prop() {
    name="$1"
    value="$2"
    if command -v resetprop >/dev/null 2>&1; then
        resetprop -n "$name" "$value" 2>/dev/null || resetprop "$name" "$value" 2>/dev/null || setprop "$name" "$value" 2>/dev/null || true
    elif [ -x /data/adb/ksu/bin/ksud ]; then
        /data/adb/ksu/bin/ksud resetprop -n "$name" "$value" 2>/dev/null || /data/adb/ksu/bin/ksud resetprop "$name" "$value" 2>/dev/null || setprop "$name" "$value" 2>/dev/null || true
    else
        setprop "$name" "$value" 2>/dev/null || true
    fi
}

put_setting() {
    settings put "$1" "$2" "$3" >/dev/null 2>&1 || true
}

del_setting() {
    settings delete "$1" "$2" >/dev/null 2>&1 || true
}

apply_refresh_props() {
    rate="$1"
    reset_prop persist.sys.smartpower.limit.max.refresh.rate "$rate"
    reset_prop persist.sys.smartpower.limit.normal.max.refresh.rate.enable false
    reset_prop persist.sys.smartpower.limit.normal.max.refresh.rate.support "$rate"
    reset_prop persist.sys.smartpower.display.enable false
}

apply_refresh_settings() {
    rate="$1"
    put_setting system peak_refresh_rate "$rate"
    put_setting system user_refresh_rate "$rate"
    put_setting system miui_refresh_rate "$rate"
    put_setting system is_smart_fps 1
    put_setting secure peak_refresh_rate "$rate"
    put_setting secure user_refresh_rate "$rate"
    put_setting secure miui_refresh_rate "$rate"
    put_setting secure support_highfps 1
    del_setting system min_refresh_rate
    del_setting secure min_refresh_rate
    del_setting global min_refresh_rate
}

apply_refresh_unlock() {
    rate="$1"
    [ -n "$rate" ] || return 1
    write_detected_rate "$rate"
    apply_refresh_props "$rate"
    apply_refresh_settings "$rate"
    log_refresh "unlocked refresh ceiling to ${rate}Hz"
}

stop_refresh_guard() {
    pidfile="/data/local/tmp/refresh165_guard.pid"
    if [ -f "$pidfile" ]; then
        old="$(cat "$pidfile" 2>/dev/null)"
        if [ -n "$old" ] && kill -0 "$old" 2>/dev/null; then
            kill "$old" 2>/dev/null || true
        fi
        rm -f "$pidfile" 2>/dev/null || true
    fi
}

# HyperOS on Android 17 rewrites secure miui_refresh_rate back to 60 on
# launcher idle/fling. Keep the detected panel peak without hardcoding 165.
guard_refresh_settings() {
    rate="$1"
    is_hz "$rate" || return 1
    stop_refresh_guard
    pidfile="/data/local/tmp/refresh165_guard.pid"
    (
        while true; do
            cur="$(settings get secure miui_refresh_rate 2>/dev/null)"
            if [ "$cur" != "$rate" ]; then
                settings put secure miui_refresh_rate "$rate" >/dev/null 2>&1 || true
                settings put system miui_refresh_rate "$rate" >/dev/null 2>&1 || true
                settings put secure user_refresh_rate "$rate" >/dev/null 2>&1 || true
                settings put system user_refresh_rate "$rate" >/dev/null 2>&1 || true
                settings put system peak_refresh_rate "$rate" >/dev/null 2>&1 || true
                log_refresh "restored refresh settings from ${cur} to ${rate}Hz"
            fi
            sleep 0.4
        done
    ) &
    echo $! > "$pidfile"
    log_refresh "refresh settings guard pid=$! rate=${rate}Hz"
}
