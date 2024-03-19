#!/data/data/com.termux/files/usr/bin/bash

# Mount the Ubuntu base chroot
mount -o bind /dev '/data/data/com.termux/files/home/ubuntu-base-22.04/dev'
mount -o bind /dev/pts '/data/data/com.termux/files/home/ubuntu-base-22.04/dev/pts'
mount -o bind /proc '/data/data/com.termux/files/home/ubuntu-base-22.04/proc'
mount -o bind /sys '/data/data/com.termux/files/home/ubuntu-base-22.04/sys'
mount -o bind /sdcard '/data/data/com.termux/files/home/ubuntu-base-22.04/mnt'
