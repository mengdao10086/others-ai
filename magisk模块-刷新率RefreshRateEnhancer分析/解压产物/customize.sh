#!/system/bin/sh

ui_print "- Refresh Rate Enhancer"
ui_print "- Detected device: $(getprop ro.product.device) sdk=$(getprop ro.build.version.sdk)"

set_perm "$MODPATH/service.sh" 0 0 0755
set_perm "$MODPATH/action.sh" 0 0 0755
set_perm "$MODPATH/uninstall.sh" 0 0 0755
set_perm "$MODPATH/post-fs-data.sh" 0 0 0755
set_perm "$MODPATH/refresh_lib.sh" 0 0 0755
set_perm "$MODPATH/mount_files.sh" 0 0 0755
set_perm "$MODPATH/system.prop" 0 0 0644

APK="$MODPATH/hook/Global165HzHook.apk"
SYSAPP="$MODPATH/system/app/Global165HzHook"
mkdir -p "$SYSAPP"
if [ -f "$APK" ]; then
    cp -f "$APK" "$SYSAPP/Global165HzHook.apk"
    set_perm "$SYSAPP/Global165HzHook.apk" 0 0 0644
    ui_print "- Hook APK staged (no launcher icon, like LSPosed)"
    if [ "$(getprop sys.boot_completed)" = "1" ]; then
        ui_print "- Installing hook APK now"
        if pm install -r -g "$APK" >/dev/null 2>&1; then
            ui_print "  installed dev.xiaomiext.homehz"
        else
            pm uninstall dev.xiaomiext.homehz >/dev/null 2>&1 || true
            if pm install -g "$APK" >/dev/null 2>&1; then
                ui_print "  installed dev.xiaomiext.homehz (after replace)"
            else
                ui_print "  pm install deferred; Magisk will mount the system app on reboot"
            fi
        fi
    else
        ui_print "- Recovery/first boot: APK installs after reboot, no desktop icon"
    fi
else
    ui_print "! missing hook/Global165HzHook.apk"
fi

ui_print "- 请在系统设置中开启「性能模式」以实现全局高刷新率"
ui_print "- Enable the module in LSPosed (Home + SystemUI) after reboot"
