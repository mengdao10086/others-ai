#!/system/bin/sh
# Xiaomi 18 Pro (hongkong) zstd-cl — provide the algorithm; best-effort apply to
# zram0, failure ignored. Module enable/disable is handled by KernelSU itself.
MODDIR=${0%/*}
insmod "$MODDIR/zstd_cl.ko"
echo zstd-cl > /sys/block/zram0/comp_algorithm 2>/dev/null