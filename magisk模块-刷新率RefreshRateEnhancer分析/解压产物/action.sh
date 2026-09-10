#!/system/bin/sh

MODDIR="${0%/*}"
LOG_FILE="/data/local/tmp/refresh165_enhancer_action.log"
export MODDIR LOG_FILE

. "$MODDIR/refresh_lib.sh"

echo "Refresh Rate Enhancer action $(date '+%Y-%m-%d %H:%M:%S')" > "$LOG_FILE"

RATE="$(detect_max_refresh)"
apply_refresh_unlock "$RATE"

echo "detected_rate=$RATE" | tee -a "$LOG_FILE"
echo "device=$(getprop ro.product.device) model=$(getprop ro.product.model)" | tee -a "$LOG_FILE"
echo "Properties:" >> "$LOG_FILE"
getprop persist.sys.smartpower.limit.max.refresh.rate >> "$LOG_FILE" 2>&1
getprop persist.sys.smartpower.limit.normal.max.refresh.rate.enable >> "$LOG_FILE" 2>&1
getprop persist.sys.smartpower.limit.normal.max.refresh.rate.support >> "$LOG_FILE" 2>&1
echo "Refresh settings:" >> "$LOG_FILE"
echo "system peak_refresh_rate=$(settings get system peak_refresh_rate)" >> "$LOG_FILE" 2>&1
echo "system min_refresh_rate=$(settings get system min_refresh_rate)" >> "$LOG_FILE" 2>&1
echo "system user_refresh_rate=$(settings get system user_refresh_rate)" >> "$LOG_FILE" 2>&1
echo "system miui_refresh_rate=$(settings get system miui_refresh_rate)" >> "$LOG_FILE" 2>&1
echo "system is_smart_fps=$(settings get system is_smart_fps)" >> "$LOG_FILE" 2>&1
echo "secure user_refresh_rate=$(settings get secure user_refresh_rate)" >> "$LOG_FILE" 2>&1
echo "secure miui_refresh_rate=$(settings get secure miui_refresh_rate)" >> "$LOG_FILE" 2>&1
echo "Touch config mount:" >> "$LOG_FILE"
grep " /odm/firmware/.*thp_config\." /proc/self/mountinfo >> "$LOG_FILE" 2>&1 || true
echo "Hook package:" >> "$LOG_FILE"
pm path dev.xiaomiext.homehz >> "$LOG_FILE" 2>&1 || true
