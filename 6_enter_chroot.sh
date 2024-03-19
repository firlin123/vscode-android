#!/data/data/com.termux/files/usr/bin/bash

# Download chroot_bash if it doesn't exist
if [ ! -f '/data/data/com.termux/files/usr/bin/chroot_bash' ]; then
    wget -O '/data/data/com.termux/files/usr/bin/chroot_bash' https://github.com/firlin123/vscode-android/releases/download/chroot_bash_v1.0.0/chroot_bash
fi

# Clean environment
unset TMPDIR
unset PREFIX
unset LD_PRELOAD
export HOME=/root
SHELL=/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Start chroot bash
/data/data/com.termux/files/usr/bin/chroot_bash '/data/data/com.termux/files/home/ubuntu-base-22.04'