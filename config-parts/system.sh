#!/bin/vbash

set system domain-name 'bjw-s.tech'
set system host-name 'gateway'

set system ipv6 disable-forwarding

set system login user vyos authentication public-keys ios key 'AAAAC3NzaC1lZDI1NTE5AAAAINllIKQjpMumg9CCz1HIEsti/cN6MpUWZbCeLiLjKH2W'
set system login user vyos authentication public-keys ios type 'ssh-ed25519'
set system login user vyos authentication public-keys personal key 'AAAAC3NzaC1lZDI1NTE5AAAAIMyYn4k4V+myBBl79Nt3t7EZugvz9A+d3ZbKyaP1w7J5'
set system login user vyos authentication public-keys personal type 'ssh-ed25519'

# set system logs logrotate messages

set system name-server '1.1.1.1'

set system sysctl parameter kernel.pty.max value '24000'

set system task-scheduler task backup-config crontab-spec '30 0 * * *'
set system task-scheduler task backup-config executable path '/config/scripts/custom-config-backup.sh'

# FIXME: https://github.com/vyos/vyos-1x/pull/1841
# set system time-zone 'Europe/Amsterdam'
