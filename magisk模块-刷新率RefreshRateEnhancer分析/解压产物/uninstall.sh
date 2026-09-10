#!/system/bin/sh

if [ -f /data/local/tmp/refresh165_guard.pid ]; then
    old="$(cat /data/local/tmp/refresh165_guard.pid 2>/dev/null)"
    [ -n "$old" ] && kill "$old" 2>/dev/null || true
fi
pm uninstall dev.xiaomiext.homehz >/dev/null 2>&1 || true
rm -f /data/local/tmp/refresh165_enhancer.log \
      /data/local/tmp/refresh165_enhancer_action.log \
      /data/local/tmp/refresh165_enhancer_mount.log \
      /data/local/tmp/refresh165_detected_rate \
      /data/local/tmp/refresh165_global165_apk.sha256 \
      /data/local/tmp/refresh165_homehz_apk.sha256 \
      /data/local/tmp/refresh165_guard.pid 2>/dev/null || true
