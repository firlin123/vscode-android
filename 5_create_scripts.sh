#!/data/data/com.termux/files/usr/bin/bash

# Create the script to install Node.js
echo '#!/bin/bash' > '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_node_install'
echo 'apt update' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_node_install'
echo 'apt install -y curl' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_node_install'
echo 'curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n | bash -s lts' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_node_install'

# Create the script to install code-server
echo '#!/bin/bash' > '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_install'
echo 'apt update' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_install'
echo 'apt install -y curl' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_install'
echo 'curl -fsSL https://code-server.dev/install.sh | sh' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_install'

# Create the script to start code-server
echo '#!/bin/bash' > '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_start'
echo 'code-server --auth none --disable-telemetry --disable-update-check --disable-workspace-trust --disable-getting-started-override --bind-addr 0.0.0.0:8080 --app-name "Android code-server"' >> '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_start'

# Make the scripts executable
chmod  755 '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_node_install'
chmod  755 '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_install'
chmod  755 '/data/data/com.termux/files/home/ubuntu-base-22.04/bin/android_code_server_start'