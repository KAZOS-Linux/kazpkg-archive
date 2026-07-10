#!/bin/bash

# ۱. بارگذاری موتور و ابزارهای کمکی شما
source .engine
source .lib-tools

clean

echo "--- Starting Raw Debian Live Packager (Manual Mode) ---"

# ۲. تنظیم خودکار مخزن
mirror:source "http://deb.debian.org/debian" "debian"
mirror:default "debian" "bookworm" "main" "i386"

# ۳. بروزرسانی دیتابیس موتور
echo "[*] Updating mirror database..."
mirror:update || { log:failure "pack-live-base" "Failed to update mirror database."; exit 1; }

ROOTFS_PACKAGES=(
    base-files
    base-passwd
    passwd

    bash
    dash

    coreutils
    util-linux

    libc6
    libc-bin

    systemd
    systemd-sysv
    dbus
    udev

    live-boot

    kmod

    e2fsprogs
    dosfstools

    pciutils
    usbutils

    network-manager
    dhcpcd

    nano
    less
)

# ۵. حل وابستگی‌ها و دانلود بسته‌های خام
echo "[*] Resolving dependencies and downloading raw packages (this may take a while)..."
for pkg in "${ROOTFS_PACKAGES[@]}"; do
    color:print "-> Fetching package and dependencies for: ${pkg}" "${purple}"
    pkg:mirror:depends "${pkg}"
done

# ۶. بسته‌بندی در قالب آرشیو یکپارچه
echo "[*] Packaging everything into a portable bundle..."
archive:create "live-os"

color:print "Success! 'raw-debian-live.zip' is ready. Extract it to your target rootfs folder." "${green}"
color:print "REMINDER: Do NOT use initramfs-tools scripts. You will build initrd manually from cpio." "${yellow}"