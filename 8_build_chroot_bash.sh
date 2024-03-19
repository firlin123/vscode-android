#!/bin/bash

if [ -d /data/data/com.termux/files/home ]; then
    echo "This script is not intended to be run in Termux. Run it on your host machine or in chroot."
    exit 1
fi

CXX="aarch64-linux-gnu-g++"

if ! command -v $CXX &> /dev/null; then
    echo "The $CXX command is not available. Please install it. (sudo apt install g++-aarch64-linux-gnu)" >&2
    exit 1
fi

echo '#include <unistd.h>' > chroot_bash.cpp
echo '#include <stdio.h>' >> chroot_bash.cpp
echo '#include <stdlib.h>' >> chroot_bash.cpp
echo 'int main(int argc, char *argv[]) {' >> chroot_bash.cpp
echo '    if (argc != 2) {' >> chroot_bash.cpp
echo '        printf("Usage: %s <new root directory>\n", argv[0]);' >> chroot_bash.cpp
echo '        return EXIT_FAILURE;' >> chroot_bash.cpp
echo '    }' >> chroot_bash.cpp
echo '    if (chroot(argv[1]) != 0) {' >> chroot_bash.cpp
echo '        perror("chroot() failed");' >> chroot_bash.cpp
echo '        return EXIT_FAILURE;' >> chroot_bash.cpp
echo '    }' >> chroot_bash.cpp
echo '    if (chdir("/") != 0) {' >> chroot_bash.cpp
echo '        perror("chdir() failed");' >> chroot_bash.cpp
echo '        return EXIT_FAILURE;' >> chroot_bash.cpp
echo '    }' >> chroot_bash.cpp
echo '    if (execl("/bin/bash", "/bin/bash", NULL) != 0) {' >> chroot_bash.cpp
echo '        perror("execl(\"/bin/bash\") failed");' >> chroot_bash.cpp
echo '        return EXIT_FAILURE;' >> chroot_bash.cpp
echo '    }' >> chroot_bash.cpp
echo '    return EXIT_SUCCESS;' >> chroot_bash.cpp
echo '}' >> chroot_bash.cpp

$CXX -static chroot_bash.cpp -o chroot_bash