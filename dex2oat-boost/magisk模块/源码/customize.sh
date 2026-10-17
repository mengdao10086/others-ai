#!/system/bin/sh
# dex2oat-boost 模块安装脚本（Magisk/KernelSU 刷入时执行）

# ui_print 兜底（离线/非刷入环境）
if ! command -v ui_print >/dev/null 2>&1; then
    ui_print() { echo "$1"; }
fi

# 设置权限（用 chmod，避免依赖 set_perm）
chmod 0755 "$MODPATH/service.sh" 2>/dev/null
chmod 0755 "$MODPATH/uninstall.sh" 2>/dev/null
chmod 0755 "$MODPATH/bin/dex2oat-boost-daemon.sh" 2>/dev/null
chmod 0644 "$MODPATH/config.prop" 2>/dev/null
chmod 0644 "$MODPATH/module.prop" 2>/dev/null

ui_print ""
ui_print "=============================="
ui_print "  dex2oat Boost（纯 root）"
ui_print "  ① 安装期把 7 个 pm.dexopt.* 置为 skip（装得快）"
ui_print "  ② 新装后倒计时 3 周期，再按 CPU 负载动态并行编译为 speed"
ui_print "  不依赖 LSPosed。重启后生效。"
ui_print "=============================="
ui_print "  日志：/data/adb/dex2oat-boost/dex2oat-boost.log"
ui_print "  配置：模块目录/config.prop（改后重启生效）"
ui_print ""
ui_print "- 安装完成，重启后生效"
