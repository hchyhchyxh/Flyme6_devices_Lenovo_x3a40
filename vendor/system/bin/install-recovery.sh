#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:26531082:37f6cd26794f5b65f285a7d793c74a59397b25be; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:22783238:7e964c7d5871a5e41ad454c3c1b6fe5b8ec684c4 EMMC:/dev/block/bootdevice/by-name/recovery 37f6cd26794f5b65f285a7d793c74a59397b25be 26531082 7e964c7d5871a5e41ad454c3c1b6fe5b8ec684c4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
