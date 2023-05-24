#!/bin/vbash

set interfaces ethernet eth0 description 'WAN - Fiber'
set interfaces ethernet eth0 hw-id 'e4:3a:6e:5f:33:9c'
set interfaces ethernet eth0 mtu '1508'
set interfaces ethernet eth0 vif 6 description 'Internet'
set interfaces ethernet eth0 vif 6 mtu '1508'

set interfaces ethernet eth1 address '10.1.0.1/24'
set interfaces ethernet eth1 description 'LAN'
set interfaces ethernet eth1 hw-id 'e4:3a:6e:5f:33:9d'
set interfaces ethernet eth1 vif 10 address '10.1.1.1/24'
set interfaces ethernet eth1 vif 10 description 'SERVERS'
set interfaces ethernet eth1 vif 20 address '10.1.2.1/24'
set interfaces ethernet eth1 vif 20 description 'TRUSTED'
set interfaces ethernet eth1 vif 30 address '192.168.2.1/24'
set interfaces ethernet eth1 vif 30 description 'GUEST'
set interfaces ethernet eth1 vif 40 address '10.1.3.1/24'
set interfaces ethernet eth1 vif 40 description 'IOT'
set interfaces ethernet eth1 vif 50 address '10.1.4.1/24'
set interfaces ethernet eth1 vif 50 description 'VIDEO'

set interfaces ethernet eth2 hw-id 'e4:3a:6e:5f:33:9e'
set interfaces ethernet eth3 hw-id 'e4:3a:6e:5f:33:9f'
set interfaces ethernet eth4 hw-id 'e4:3a:6e:5f:33:a0'

set interfaces ethernet eth5 hw-id 'e4:3a:6e:5f:33:a1'
set interfaces ethernet eth5 description 'WAN - Cable'
set interfaces ethernet eth5 address 'dhcp'

set interfaces pppoe pppoe0 description 'WAN - Fiber'
set interfaces pppoe pppoe0 source-interface 'eth0.6'
set interfaces pppoe pppoe0 mtu '1500'
set interfaces pppoe pppoe0 authentication user "${SECRET_ISP_AUTH_USER}"
set interfaces pppoe pppoe0 authentication password "${SECRET_ISP_AUTH_PASSWORD}"

set interfaces wireguard wg01 address '10.0.11.1/24'
set interfaces wireguard wg01 description 'WIREGUARD'
set interfaces wireguard wg01 peer ipad-bernd allowed-ips '10.0.11.4/32'
set interfaces wireguard wg01 peer ipad-bernd persistent-keepalive '15'
set interfaces wireguard wg01 peer ipad-bernd public-key 'EYuUoDoCIcSYbnjNyPSsZUcz4Yp032AHWflYlH2V1EM='
set interfaces wireguard wg01 peer iphone-bernd allowed-ips '10.0.11.2/32'
set interfaces wireguard wg01 peer iphone-bernd persistent-keepalive '15'
set interfaces wireguard wg01 peer iphone-bernd public-key '608IT2YRPTCabLMGnpYfIWhgDnEpLV5IIpYi5J7m3As='
set interfaces wireguard wg01 peer macbook-bernd allowed-ips '10.0.11.3/32'
set interfaces wireguard wg01 peer macbook-bernd persistent-keepalive '15'
set interfaces wireguard wg01 peer macbook-bernd public-key 'iWKTc88fDBhqlsAgoCXYvkBdf9wG4YBZ8XTg/+0Ln2I='
set interfaces wireguard wg01 port '51820'
set interfaces wireguard wg01 private-key "${SECRET_WIREGUARD_PRIVATE_KEY}"
