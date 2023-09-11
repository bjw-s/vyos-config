#!/bin/bash
#
# Description: Backup config directory and configuration commands to a USB device
#

dest="/media/usb-backup"
disk="/dev/disk/by-id/usb-USB_SanDisk_3.2Gen1_0401853931cd180d6b2371659b9f24f92dd8e4bd8a39ebee5f7163a1785d2ff3221700000000000000000000dcdd864500076b1883558107c0accd55-0:0-part2"
user="vyos"

# Mount a formatted exfat USB
if ! findmnt -M "${dest}"; then
    sudo mkdir -p "${dest}"
    sudo mount.exfat-fuse -o "rw,uid=${user},gid=vyattacfg" "${disk}" "${dest}"
fi

# Backup
if findmnt -M "${dest}"; then
    timestamp="$(date +%Y%m%d%H%M%S)"

    # VyOS Commands
    mkdir -p "${dest}/vyos/"
    /opt/vyatta/bin/vyatta-op-cmd-wrapper show configuration commands | gzip -3 -c > "${dest}/vyos/vyos-commands.${timestamp}.gz"

    # VyOS /config
    tar --exclude="overlay*" --exclude="unifi*" -zvcf "${dest}/vyos/vyos-config.${timestamp}.tar.gz" /config

    # Unifi backups
    mkdir -p "${dest}/unifi/"
    rsync -r /config/containers/unifi/data/backup/autobackup/ "${dest}/unifi/"

    # Delete backups older than 1 month
    find "${dest}" -type f -mtime +30 -delete

    # Sync the filesystem
    sync
    # Unmount the USB drive
    sudo umount "${dest}"
fi
