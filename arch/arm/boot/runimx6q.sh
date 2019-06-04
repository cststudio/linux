#!/bin/bash
qemu-system-arm -M sabrelite -nographic -m 512M \-kernel ./zImage \-dtb ./dts/imx6q-sabrelite.dtb \-append "earlyprintk=vga log_buf_len=25M console=ttymxc0,115200 rootfstype=ext3 root=/dev/mmcblk1 rw rootwait init=/sbin/init" \-drive file=rootfs.img,format=raw,id=mycard -device sd-card,drive=mycard \-net nic,macaddr=6c:61:74:65:6c:65 -net tap,ifname=tap0
