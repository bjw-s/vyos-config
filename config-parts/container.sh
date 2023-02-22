#!/bin/vbash

# Container networks
set container network services prefix '10.5.0.0/24'

# dnsdist
set container name dnsdist cap-add 'net-bind-service'
set container name dnsdist environment TZ value 'Europe/Amsterdam'
set container name dnsdist image 'docker.io/powerdns/dnsdist-17:1.7.3'
set container name dnsdist memory '0'
set container name dnsdist network services address '10.5.0.4'
set container name dnsdist restart 'on-failure'
set container name dnsdist shared-memory '0'
set container name dnsdist volume config destination '/etc/dnsdist/dnsdist.conf'
set container name dnsdist volume config source '/config/dnsdist/dnsdist.conf'

# haproxy-k8s-api
set container name haproxy-k8s-api image 'docker.io/library/haproxy:2.7.3'
set container name haproxy-k8s-api memory '0'
set container name haproxy-k8s-api network services address '10.5.0.2'
set container name haproxy-k8s-api restart 'on-failure'
set container name haproxy-k8s-api shared-memory '0'
set container name haproxy-k8s-api volume config destination '/usr/local/etc/haproxy/haproxy.cfg'
set container name haproxy-k8s-api volume config source '/config/haproxy/haproxy.cfg'

# node-exporter
set container name node-exporter environment procfs value '/host/proc'
set container name node-exporter environment rootfs value '/host/rootfs'
set container name node-exporter environment sysfs value '/host/sys'
set container name node-exporter image 'quay.io/prometheus/node-exporter:v1.5.0'
set container name node-exporter memory '0'
set container name node-exporter network services address '10.5.0.7'
set container name node-exporter restart 'on-failure'
set container name node-exporter shared-memory '0'
set container name node-exporter volume procfs destination '/host/proc'
set container name node-exporter volume procfs mode 'ro'
set container name node-exporter volume procfs source '/proc'
set container name node-exporter volume rootfs destination '/host/rootfs'
set container name node-exporter volume rootfs mode 'ro'
set container name node-exporter volume rootfs source '/'
set container name node-exporter volume sysfs destination '/host/sys'
set container name node-exporter volume sysfs mode 'ro'
set container name node-exporter volume sysfs source '/sys'

# speedtest-exporter
set container name speedtest-exporter image 'ghcr.io/miguelndecarvalho/speedtest-exporter:v3.5.3'
set container name speedtest-exporter memory '0'
set container name speedtest-exporter network services address '10.5.0.8'
set container name speedtest-exporter restart 'on-failure'
set container name speedtest-exporter shared-memory '0'

# udp-broadcast-relay-mdns
set container name udp-broadcast-relay-mdns allow-host-networks
set container name udp-broadcast-relay-mdns cap-add 'net-raw'
set container name udp-broadcast-relay-mdns environment CFG_DEV value 'eth1.20;eth1.40'
set container name udp-broadcast-relay-mdns environment CFG_ID value '2'
set container name udp-broadcast-relay-mdns environment CFG_MULTICAST value '224.0.0.251'
set container name udp-broadcast-relay-mdns environment CFG_PORT value '5353'
set container name udp-broadcast-relay-mdns environment SEPARATOR value ';'
set container name udp-broadcast-relay-mdns image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-mdns memory '0'
set container name udp-broadcast-relay-mdns restart 'on-failure'
set container name udp-broadcast-relay-mdns shared-memory '0'

# udp-broadcast-relay-sonos
set container name udp-broadcast-relay-sonos allow-host-networks
set container name udp-broadcast-relay-sonos cap-add 'net-raw'
set container name udp-broadcast-relay-sonos environment CFG_DEV value 'eth1.20;eth1.40'
set container name udp-broadcast-relay-sonos environment CFG_ID value '1'
set container name udp-broadcast-relay-sonos environment CFG_MULTICAST value '239.255.255.250'
set container name udp-broadcast-relay-sonos environment CFG_PORT value '1900'
set container name udp-broadcast-relay-sonos environment SEPARATOR value ';'
set container name udp-broadcast-relay-sonos image 'ghcr.io/onedr0p/udp-broadcast-relay-redux:1.0.27'
set container name udp-broadcast-relay-sonos memory '0'
set container name udp-broadcast-relay-sonos restart 'on-failure'
set container name udp-broadcast-relay-sonos shared-memory '0'

# unifi
set container name unifi environment RUNAS_UID0 value 'false'
set container name unifi environment TZ value 'Europe/Amsterdam'
set container name unifi environment UNIFI_GID value '999'
set container name unifi environment UNIFI_STDOUT value 'true'
set container name unifi environment UNIFI_UID value '999'
set container name unifi image 'ghcr.io/jacobalberty/unifi-docker:v7.3.83'
set container name unifi memory '0'
set container name unifi network services address '10.5.0.10'
set container name unifi restart 'on-failure'
set container name unifi shared-memory '0'
set container name unifi volume data destination '/unifi'
set container name unifi volume data source '/config/unifi/data'

# vector-agent
set container name vector-agent environment VECTOR_CONFIG value '/etc/vector/vector.yaml'
set container name vector-agent environment VECTOR_WATCH_CONFIG value 'true'
set container name vector-agent image 'docker.io/timberio/vector:0.27.0-debian'
set container name vector-agent memory '0'
set container name vector-agent network services address '10.5.0.9'
set container name vector-agent restart 'on-failure'
set container name vector-agent shared-memory '0'
set container name vector-agent volume config destination '/etc/vector/vector.yaml'
set container name vector-agent volume config source '/config/vector-agent/vector.yaml'
set container name vector-agent volume data destination '/var/lib/vector'
set container name vector-agent volume data source '/config/vector-agent/data'
set container name vector-agent volume logs destination '/var/log'
set container name vector-agent volume logs mode 'ro'
set container name vector-agent volume logs source '/var/log'

# vyos-coredns
set container name vyos-coredns cap-add 'net-bind-service'
set container name vyos-coredns image 'ghcr.io/k8s-at-home/coredns:v1.9.3'
set container name vyos-coredns memory '0'
set container name vyos-coredns network services address '10.5.0.3'
set container name vyos-coredns restart 'on-failure'
set container name vyos-coredns shared-memory '0'
set container name vyos-coredns volume config destination '/config'
set container name vyos-coredns volume config source '/config/coredns'
