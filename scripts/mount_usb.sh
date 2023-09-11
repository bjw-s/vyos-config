#!/bin/bash
#
# Description: Backup VyOS configuration to a USB device
#
dest="/media/usb-backup"
disk="/dev/disk/by-id/usb-USB_SanDisk_3.2Gen1_0401853931cd180d6b2371659b9f24f92dd8e4bd8a39ebee5f7163a1785d2ff3221700000000000000000000dcdd864500076b1883558107c0accd55-0:0-part2"
user="vyos"

# Mount a formatted exfat USB
if ! findmnt -M "${dest}"; then
    sudo mkdir -p "${dest}"
    sudo mount.exfat-fuse -o "rw,uid=${user},gid=vyattacfg" "${disk}" "${dest}"
fi
