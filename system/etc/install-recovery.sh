#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p18:6502656:413786aa66a4bff33c3af2f4a2a6bacf12881c1b; then
  log -t recovery "Installing new recovery image"
  applypatch EMMC:/dev/block/mmcblk0p7:5794048:189120daf2ad1e3106746f4f9fff6f017910100b EMMC:/dev/block/mmcblk0p18 413786aa66a4bff33c3af2f4a2a6bacf12881c1b 6502656 189120daf2ad1e3106746f4f9fff6f017910100b:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi

if [ -e /cache/recovery/command ] ; then
  rm /cache/recovery/command
fi

