#!/data/data/com.termux/files/usr/bin/bash

# Set up DNS
echo "nameserver 8.8.8.8" > '/data/data/com.termux/files/home/ubuntu-base-22.04/etc/resolv.conf'
echo "nameserver 8.8.4.4" >> '/data/data/com.termux/files/home/ubuntu-base-22.04/etc/resolv.conf'

# Create script that will clean env before starting bash
echo '#!/bin/bash' > '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo 'unset PATH' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo 'unset TMPDIR' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo 'unset PREFIX' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo 'export HOME=/root' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo 'export SHELL=/bin/bash' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo 'export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
echo '/bin/bash' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'

# Create script that will fix net groups
echo '#!/bin/bash' > '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group() {' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '  if ! getent group "$1" > /dev/null; then' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '    groupadd -g $2 $1' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '    echo "Group $1 added"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '  fi' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '}' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group() {' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '  if ! groups "$1" | grep -qw "$2"; then' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '    gpasswd -a $1 $2' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '    echo "User $1 added to group $2"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '  fi' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo '}' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_system" 1000' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_radio" 1001' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_bluetooth" 1002' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_graphics" 1003' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_input" 1004' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_audio" 1005' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_camera" 1006' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_log" 1007' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_compass" 1008' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_mount" 1009' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_wifi" 1010' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_adb" 1011' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_install" 1012' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_media" 1013' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_dhcp" 1014' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_sdcard_rw" 1015' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_vpn" 1016' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_keystore" 1017' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_usb" 1018' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_drm" 1019' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_mdnsr" 1020' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_gps" 1021' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_unused1" 1022' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_media_rw" 1023' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_mtp" 1024' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_unused2" 1025' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_drmrpc" 1026' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_nfc" 1027' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_sdcard_r" 1028' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_shell" 2000' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_cache" 2001' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_diag" 2002' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_bt_admin" 3001' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_bt" 3002' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_inet" 3003' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_raw" 3004' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_admin" 3005' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_bw_stats" 3006' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_bw_acct" 3007' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_net_bt_stack" 3008' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_misc" 9998' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_group "aid_nobody" 9999' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_bt_admin"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_bt"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_inet"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_raw"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_admin"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_bw_stats"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_bw_acct"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'add_user_to_group "root" "aid_net_bt_stack"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
echo 'usermod -g aid_inet _apt' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'

# Set permissions
chmod  755 '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_bash_setup'
chmod  755 '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_fix_net_groups'
