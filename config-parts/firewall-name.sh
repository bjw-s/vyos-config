#!/bin/vbash

# From GUEST to IOT
set firewall name guest-iot default-action 'drop'
set firewall name guest-iot description 'From GUEST to IOT'
set firewall name guest-iot enable-default-log
set firewall name guest-iot rule 100 action 'accept'
set firewall name guest-iot rule 100 description 'Rule: accept_tcp_printer_from_allowed_devices'
set firewall name guest-iot rule 100 destination group address-group 'printers'
set firewall name guest-iot rule 100 destination port 'http,9100'
set firewall name guest-iot rule 100 protocol 'tcp'
set firewall name guest-iot rule 100 source group address-group 'printer_allowed'
set firewall name guest-iot rule 101 action 'accept'
set firewall name guest-iot rule 101 description 'Rule: accept_udp_printer_from_allowed_devices'
set firewall name guest-iot rule 101 destination group address-group 'printers'
set firewall name guest-iot rule 101 destination port '161'
set firewall name guest-iot rule 101 protocol 'udp'
set firewall name guest-iot rule 101 source group address-group 'printer_allowed'
set firewall name guest-iot rule 999 action 'drop'
set firewall name guest-iot rule 999 description 'Rule: drop_invalid'
set firewall name guest-iot rule 999 state invalid 'enable'
set firewall name guest-iot rule 999 log 'enable'

# From GUEST to LAN
set firewall name guest-lan default-action 'drop'
set firewall name guest-lan description 'From GUEST to LAN'
set firewall name guest-lan enable-default-log
set firewall name guest-lan rule 999 action 'drop'
set firewall name guest-lan rule 999 description 'Rule: drop_invalid'
set firewall name guest-lan rule 999 state invalid 'enable'
set firewall name guest-lan rule 999 log 'enable'

# From GUEST to LOCAL
set firewall name guest-local default-action 'drop'
set firewall name guest-local description 'From GUEST to LOCAL'
set firewall name guest-local enable-default-log
set firewall name guest-local rule 50 action 'accept'
set firewall name guest-local rule 50 description 'Rule: accept_dhcp'
set firewall name guest-local rule 50 destination port '67,68'
set firewall name guest-local rule 50 protocol 'udp'
set firewall name guest-local rule 50 source port '67,68'
set firewall name guest-local rule 999 action 'drop'
set firewall name guest-local rule 999 description 'Rule: drop_invalid'
set firewall name guest-local rule 999 state invalid 'enable'
set firewall name guest-local rule 999 log 'enable'

# From GUEST to SERVERS
set firewall name guest-servers default-action 'drop'
set firewall name guest-servers description 'From GUEST to SERVERS'
set firewall name guest-servers enable-default-log
set firewall name guest-servers rule 999 action 'drop'
set firewall name guest-servers rule 999 description 'Rule: drop_invalid'
set firewall name guest-servers rule 999 state invalid 'enable'
set firewall name guest-servers rule 999 log 'enable'

# From GUEST to CONTAINERS
set firewall name guest-containers default-action 'drop'
set firewall name guest-containers description 'From GUEST to CONTAINERS'
set firewall name guest-containers enable-default-log
set firewall name guest-containers rule 40 action 'accept'
set firewall name guest-containers rule 40 description 'Rule: accept_dns'
set firewall name guest-containers rule 40 destination port 'domain,domain-s'
set firewall name guest-containers rule 40 protocol 'tcp_udp'
set firewall name guest-containers rule 999 action 'drop'
set firewall name guest-containers rule 999 description 'Rule: drop_invalid'
set firewall name guest-containers rule 999 state invalid 'enable'
set firewall name guest-containers rule 999 log 'enable'

# From GUEST to TRUSTED
set firewall name guest-trusted default-action 'drop'
set firewall name guest-trusted description 'From GUEST to TRUSTED'
set firewall name guest-trusted enable-default-log
set firewall name guest-trusted rule 999 action 'drop'
set firewall name guest-trusted rule 999 description 'Rule: drop_invalid'
set firewall name guest-trusted rule 999 state invalid 'enable'
set firewall name guest-trusted rule 999 log 'enable'

# From GUEST to VIDEO
set firewall name guest-video default-action 'drop'
set firewall name guest-video description 'From GUEST to VIDEO'
set firewall name guest-video enable-default-log
set firewall name guest-video rule 999 action 'drop'
set firewall name guest-video rule 999 description 'Rule: drop_invalid'
set firewall name guest-video rule 999 state invalid 'enable'
set firewall name guest-video rule 999 log 'enable'

# From GUEST to WAN
set firewall name guest-wan default-action 'accept'
set firewall name guest-wan description 'From GUEST to WAN'

# From IOT to GUEST
set firewall name iot-guest default-action 'drop'
set firewall name iot-guest description 'From IOT to GUEST'
set firewall name iot-guest enable-default-log
set firewall name iot-guest rule 999 action 'drop'
set firewall name iot-guest rule 999 description 'Rule: drop_invalid'
set firewall name iot-guest rule 999 state invalid 'enable'
set firewall name iot-guest rule 999 log 'enable'

# From IOT to LAN
set firewall name iot-lan default-action 'drop'
set firewall name iot-lan description 'From IOT to LAN'
set firewall name iot-lan enable-default-log
set firewall name iot-lan rule 999 action 'drop'
set firewall name iot-lan rule 999 description 'Rule: drop_invalid'
set firewall name iot-lan rule 999 state invalid 'enable'
set firewall name iot-lan rule 999 log 'enable'

# From IOT to LOCAL
set firewall name iot-local default-action 'drop'
set firewall name iot-local description 'From IOT to LOCAL'
set firewall name iot-local enable-default-log
set firewall name iot-local rule 50 action 'accept'
set firewall name iot-local rule 50 description 'Rule: accept_dhcp'
set firewall name iot-local rule 50 destination port '67,68'
set firewall name iot-local rule 50 protocol 'udp'
set firewall name iot-local rule 50 source port '67,68'
set firewall name iot-local rule 60 action 'accept'
set firewall name iot-local rule 60 description 'Rule: accept_ntp'
set firewall name iot-local rule 60 destination port 'ntp'
set firewall name iot-local rule 60 protocol 'udp'
set firewall name iot-local rule 100 action 'accept'
set firewall name iot-local rule 100 description 'Rule: accept_igmp'
set firewall name iot-local rule 100 protocol '2'
set firewall name iot-local rule 110 action 'accept'
set firewall name iot-local rule 110 description 'Rule: accept_mdns'
set firewall name iot-local rule 110 destination port 'mdns'
set firewall name iot-local rule 110 protocol 'udp'
set firewall name iot-local rule 110 source port 'mdns'
set firewall name iot-local rule 200 action 'accept'
set firewall name iot-local rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall name iot-local rule 200 destination port '1900,1901,1902'
set firewall name iot-local rule 200 protocol 'udp'
set firewall name iot-local rule 200 source group address-group 'sonos_players'
set firewall name iot-local rule 210 action 'accept'
set firewall name iot-local rule 210 description 'Rule: accept_discovery_from_sonos_controllers'
set firewall name iot-local rule 210 destination port '1900,1901,1902,57621'
set firewall name iot-local rule 210 protocol 'udp'
set firewall name iot-local rule 210 source group address-group 'sonos_controllers'
set firewall name iot-local rule 999 action 'drop'
set firewall name iot-local rule 999 description 'Rule: drop_invalid'
set firewall name iot-local rule 999 state invalid 'enable'
set firewall name iot-local rule 999 log 'enable'

# From IOT to SERVERS
set firewall name iot-servers default-action 'drop'
set firewall name iot-servers description 'From IOT to SERVERS'
set firewall name iot-servers enable-default-log
set firewall name iot-servers rule 100 action 'accept'
set firewall name iot-servers rule 100 description 'Rule: accept_nas_smb_from_scanners'
set firewall name iot-servers rule 100 destination group address-group 'nas'
set firewall name iot-servers rule 100 destination port 'microsoft-ds'
set firewall name iot-servers rule 100 protocol 'tcp'
set firewall name iot-servers rule 100 source group address-group 'scanners'
set firewall name iot-servers rule 200 action 'accept'
set firewall name iot-servers rule 200 description 'Rule: accept_plex_from_plex_clients'
set firewall name iot-servers rule 200 destination group address-group 'k8s_plex'
set firewall name iot-servers rule 200 destination port '32400'
set firewall name iot-servers rule 200 protocol 'tcp'
set firewall name iot-servers rule 200 source group address-group 'plex_clients'
set firewall name iot-servers rule 210 action 'accept'
set firewall name iot-servers rule 210 description 'Rule: accept_jellyfin_from_jellyfin_clients'
set firewall name iot-servers rule 210 destination group address-group 'k8s_jellyfin'
set firewall name iot-servers rule 210 destination port '8096'
set firewall name iot-servers rule 210 protocol 'tcp'
set firewall name iot-servers rule 210 source group address-group 'jellyfin_clients'
set firewall name iot-servers rule 300 action 'accept'
set firewall name iot-servers rule 300 description 'Rule: accept_mqtt_from_mqtt_clients'
set firewall name iot-servers rule 300 destination group address-group 'k8s_mqtt'
set firewall name iot-servers rule 300 destination port '1883'
set firewall name iot-servers rule 300 protocol 'tcp'
set firewall name iot-servers rule 300 source group address-group 'mqtt_clients'
set firewall name iot-servers rule 310 action 'accept'
set firewall name iot-servers rule 310 description 'Rule: accept_mqtt_from_esp'
set firewall name iot-servers rule 310 destination group address-group 'k8s_mqtt'
set firewall name iot-servers rule 310 destination port '1883'
set firewall name iot-servers rule 310 protocol 'tcp'
set firewall name iot-servers rule 310 source group address-group 'esp'
set firewall name iot-servers rule 400 action 'accept'
set firewall name iot-servers rule 400 description 'Rule: accept_k8s_ingress_from_sonos_players'
set firewall name iot-servers rule 400 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 400 destination port 'http,https'
set firewall name iot-servers rule 400 protocol 'tcp'
set firewall name iot-servers rule 400 source group address-group 'sonos_players'
set firewall name iot-servers rule 410 action 'accept'
set firewall name iot-servers rule 410 description 'Rule: accept_k8s_ingress_from_wall_displays'
set firewall name iot-servers rule 410 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 410 destination port 'http,https'
set firewall name iot-servers rule 410 protocol 'tcp'
set firewall name iot-servers rule 410 source group address-group 'wall_displays'
set firewall name iot-servers rule 420 action 'accept'
set firewall name iot-servers rule 420 description 'Rule: accept_k8s_ingress_from_allowed_devices'
set firewall name iot-servers rule 420 destination group address-group 'k8s_ingress'
set firewall name iot-servers rule 420 destination port 'http,https'
set firewall name iot-servers rule 420 protocol 'tcp'
set firewall name iot-servers rule 420 source group address-group 'k8s_ingress_allowed'
set firewall name iot-servers rule 500 action 'accept'
set firewall name iot-servers rule 500 description 'Rule: accept_vector_journald_from_allowed_devices'
set firewall name iot-servers rule 500 destination group address-group 'k8s_vector_aggregator'
set firewall name iot-servers rule 500 destination port '6002'
set firewall name iot-servers rule 500 protocol 'tcp'
set firewall name iot-servers rule 500 source group address-group 'vector_journald_allowed'
set firewall name iot-servers rule 999 action 'drop'
set firewall name iot-servers rule 999 description 'Rule: drop_invalid'
set firewall name iot-servers rule 999 state invalid 'enable'
set firewall name iot-servers rule 999 log 'enable'

# From IOT to CONTAINERS
set firewall name iot-containers default-action 'accept'
set firewall name iot-containers description 'From IOT to CONTAINERS'
set firewall name iot-containers rule 40 action 'accept'
set firewall name iot-containers rule 40 description 'Rule: accept_dns'
set firewall name iot-containers rule 40 destination port 'domain,domain-s'
set firewall name iot-containers rule 40 protocol 'tcp_udp'
set firewall name iot-containers rule 999 action 'drop'
set firewall name iot-containers rule 999 description 'Rule: drop_invalid'
set firewall name iot-containers rule 999 state invalid 'enable'
set firewall name iot-containers rule 999 log 'enable'

# From IOT to TRUSTED
set firewall name iot-trusted default-action 'drop'
set firewall name iot-trusted description 'From IOT to TRUSTED'
set firewall name iot-trusted enable-default-log
set firewall name iot-trusted rule 100 action 'accept'
set firewall name iot-trusted rule 100 description 'Rule: accept_udp_from_sonos_players_to_sonos_controllers'
set firewall name iot-trusted rule 100 destination group address-group 'sonos_controllers'
set firewall name iot-trusted rule 100 destination port '30000-65535'
set firewall name iot-trusted rule 100 protocol 'udp'
set firewall name iot-trusted rule 100 source group address-group 'sonos_players'
set firewall name iot-trusted rule 110 action 'accept'
set firewall name iot-trusted rule 110 description 'Rule: accept_tcp_from_sonos_players_to_sonos_controllers'
set firewall name iot-trusted rule 110 destination group address-group 'sonos_controllers'
set firewall name iot-trusted rule 110 destination port '1400,3400,3401,3500,30000-65535'
set firewall name iot-trusted rule 110 protocol 'tcp'
set firewall name iot-trusted rule 110 source group address-group 'sonos_players'
set firewall name iot-trusted rule 999 action 'drop'
set firewall name iot-trusted rule 999 description 'Rule: drop_invalid'
set firewall name iot-trusted rule 999 state invalid 'enable'
set firewall name iot-trusted rule 999 log 'enable'

# From IOT to VIDEO
set firewall name iot-video default-action 'drop'
set firewall name iot-video description 'From IOT to VIDEO'
set firewall name iot-video enable-default-log
set firewall name iot-video rule 100 action 'accept'
set firewall name iot-video rule 100 description 'Rule: accept_k8s_nodes'
set firewall name iot-video rule 100 protocol 'tcp'
set firewall name iot-video rule 100 source group address-group 'k8s_nodes'
set firewall name iot-video rule 999 action 'drop'
set firewall name iot-video rule 999 description 'Rule: drop_invalid'
set firewall name iot-video rule 999 state invalid 'enable'
set firewall name iot-video rule 999 log 'enable'

# From IOT to WAN
set firewall name iot-wan default-action 'accept'
set firewall name iot-wan description 'From IOT to WAN'

# From LAN to GUEST
set firewall name lan-guest default-action 'drop'
set firewall name lan-guest description 'From LAN to GUEST'
set firewall name lan-guest enable-default-log
set firewall name lan-guest rule 999 action 'drop'
set firewall name lan-guest rule 999 description 'Rule: drop_invalid'
set firewall name lan-guest rule 999 state invalid 'enable'
set firewall name lan-guest rule 999 log 'enable'

# From LAN to GUEST
set firewall name lan-iot default-action 'drop'
set firewall name lan-iot description 'From LAN to IOT'
set firewall name lan-iot enable-default-log
set firewall name lan-iot rule 999 action 'drop'
set firewall name lan-iot rule 999 description 'Rule: drop_invalid'
set firewall name lan-iot rule 999 state invalid 'enable'
set firewall name lan-iot rule 999 log 'enable'

# From LAN to LOCAL
set firewall name lan-local default-action 'drop'
set firewall name lan-local description 'From LAN to LOCAL'
set firewall name lan-local enable-default-log
set firewall name lan-local rule 50 action 'accept'
set firewall name lan-local rule 50 description 'Rule: accept_dhcp'
set firewall name lan-local rule 50 destination port '67,68'
set firewall name lan-local rule 50 protocol 'udp'
set firewall name lan-local rule 50 source port '67,68'
set firewall name lan-local rule 60 action 'accept'
set firewall name lan-local rule 60 description 'Rule: accept_ntp'
set firewall name lan-local rule 60 destination port 'ntp'
set firewall name lan-local rule 60 protocol 'udp'
set firewall name lan-local rule 999 action 'drop'
set firewall name lan-local rule 999 description 'Rule: drop_invalid'
set firewall name lan-local rule 999 state invalid 'enable'
set firewall name lan-local rule 999 log 'enable'

# From LAN to SERVERS
set firewall name lan-servers default-action 'drop'
set firewall name lan-servers description 'From LAN to SERVERS'
set firewall name lan-servers enable-default-log
set firewall name lan-servers rule 999 action 'drop'
set firewall name lan-servers rule 999 description 'Rule: drop_invalid'
set firewall name lan-servers rule 999 state invalid 'enable'
set firewall name lan-servers rule 999 log 'enable'

# From LAN to CONTAINERS
set firewall name lan-containers default-action 'accept'
set firewall name lan-containers description 'From LAN to CONTAINERS'
set firewall name lan-containers rule 40 action 'accept'
set firewall name lan-containers rule 40 description 'Rule: accept_dns'
set firewall name lan-containers rule 40 destination port 'domain,domain-s'
set firewall name lan-containers rule 40 protocol 'tcp_udp'
set firewall name lan-containers rule 999 action 'drop'
set firewall name lan-containers rule 999 description 'Rule: drop_invalid'
set firewall name lan-containers rule 999 state invalid 'enable'
set firewall name lan-containers rule 999 log 'enable'

# From LAN to TRUSTED
set firewall name lan-trusted default-action 'drop'
set firewall name lan-trusted description 'From LAN to TRUSTED'
set firewall name lan-trusted enable-default-log
set firewall name lan-trusted rule 999 action 'drop'
set firewall name lan-trusted rule 999 description 'Rule: drop_invalid'
set firewall name lan-trusted rule 999 state invalid 'enable'
set firewall name lan-trusted rule 999 log 'enable'

# From LAN to VIDEO
set firewall name lan-video default-action 'drop'
set firewall name lan-video description 'From LAN to VIDEO'
set firewall name lan-video enable-default-log
set firewall name lan-video rule 999 action 'drop'
set firewall name lan-video rule 999 description 'Rule: drop_invalid'
set firewall name lan-video rule 999 state invalid 'enable'
set firewall name lan-video rule 999 log 'enable'

# From LAN to WAN
set firewall name lan-wan default-action 'accept'
set firewall name lan-wan description 'From LAN to WAN'

# From LOCAL to GUEST
set firewall name local-guest default-action 'drop'
set firewall name local-guest description 'From LOCAL to GUEST'
set firewall name local-guest enable-default-log
set firewall name local-guest rule 999 action 'drop'
set firewall name local-guest rule 999 description 'Rule: drop_invalid'
set firewall name local-guest rule 999 state invalid 'enable'
set firewall name local-guest rule 999 log 'enable'

# From LOCAL to IOT
set firewall name local-iot default-action 'drop'
set firewall name local-iot description 'From LOCAL to IOT'
set firewall name local-iot enable-default-log
set firewall name local-iot rule 100 action 'accept'
set firewall name local-iot rule 100 description 'Rule: accept_igmp'
set firewall name local-iot rule 100 protocol '2'
set firewall name local-iot rule 110 action 'accept'
set firewall name local-iot rule 110 description 'Rule: accept_mdns'
set firewall name local-iot rule 110 destination port 'mdns'
set firewall name local-iot rule 110 protocol 'udp'
set firewall name local-iot rule 110 source port 'mdns'
set firewall name local-iot rule 200 action 'accept'
set firewall name local-iot rule 200 description 'Rule: accept_discovery_from_sonos_controllers'
set firewall name local-iot rule 200 destination port '1900,1901,1902,57621'
set firewall name local-iot rule 200 protocol 'udp'
set firewall name local-iot rule 200 source group address-group 'sonos_controllers'
set firewall name local-iot rule 999 action 'drop'
set firewall name local-iot rule 999 description 'Rule: drop_invalid'
set firewall name local-iot rule 999 state invalid 'enable'
set firewall name local-iot rule 999 log 'enable'

# From LOCAL to LAN
set firewall name local-lan default-action 'drop'
set firewall name local-lan description 'From LOCAL to LAN'
set firewall name local-lan enable-default-log
set firewall name local-lan rule 999 action 'drop'
set firewall name local-lan rule 999 description 'Rule: drop_invalid'
set firewall name local-lan rule 999 state invalid 'enable'
set firewall name local-lan rule 999 log 'enable'

# From LOCAL to SERVERS
set firewall name local-servers default-action 'drop'
set firewall name local-servers description 'From LOCAL to SERVERS'
set firewall name local-servers enable-default-log
set firewall name local-servers rule 40 action 'accept'
set firewall name local-servers rule 40 description 'Rule: accept_dns'
set firewall name local-servers rule 40 destination port 'domain,domain-s'
set firewall name local-servers rule 40 protocol 'tcp_udp'
set firewall name local-servers rule 70 action 'accept'
set firewall name local-servers rule 70 description 'Rule: accept_bgp'
set firewall name local-servers rule 70 destination port 'bgp'
set firewall name local-servers rule 70 protocol 'tcp'
set firewall name local-servers rule 100 action 'accept'
set firewall name local-servers rule 100 description 'Rule: accept_k8s_api'
set firewall name local-servers rule 100 destination port '6443'
set firewall name local-servers rule 100 protocol 'tcp'
set firewall name local-servers rule 200 action 'accept'
set firewall name local-servers rule 200 description 'Rule: accept_vector_syslog'
set firewall name local-servers rule 200 destination group address-group 'k8s_vector_aggregator'
set firewall name local-servers rule 200 destination port '6001'
set firewall name local-servers rule 200 protocol 'tcp'
set firewall name local-servers rule 999 action 'drop'
set firewall name local-servers rule 999 description 'Rule: drop_invalid'
set firewall name local-servers rule 999 state invalid 'enable'
set firewall name local-servers rule 999 log 'enable'

# From LOCAL to CONTAINERS
set firewall name local-containers default-action 'accept'
set firewall name local-containers description 'From LOCAL to CONTAINERS'
set firewall name local-containers rule 40 action 'accept'
set firewall name local-containers rule 40 description 'Rule: accept_dns'
set firewall name local-containers rule 40 destination port 'domain,domain-s'
set firewall name local-containers rule 40 protocol 'tcp_udp'
set firewall name local-containers rule 999 action 'drop'
set firewall name local-containers rule 999 description 'Rule: drop_invalid'
set firewall name local-containers rule 999 state invalid 'enable'
set firewall name local-containers rule 999 log 'enable'

# From LOCAL to TRUSTED
set firewall name local-trusted default-action 'drop'
set firewall name local-trusted description 'From LOCAL to TRUSTED'
set firewall name local-trusted enable-default-log
set firewall name local-trusted rule 100 action 'accept'
set firewall name local-trusted rule 100 description 'Rule: accept_igmp'
set firewall name local-trusted rule 100 protocol '2'
set firewall name local-trusted rule 110 action 'accept'
set firewall name local-trusted rule 110 description 'Rule: accept_mdns'
set firewall name local-trusted rule 110 destination port 'mdns'
set firewall name local-trusted rule 110 protocol 'udp'
set firewall name local-trusted rule 110 source port 'mdns'
set firewall name local-trusted rule 200 action 'accept'
set firewall name local-trusted rule 200 description 'Rule: accept_discovery_from_sonos_players'
set firewall name local-trusted rule 200 destination port '1900,1901,1902'
set firewall name local-trusted rule 200 protocol 'udp'
set firewall name local-trusted rule 200 source group address-group 'sonos_players'
set firewall name local-trusted rule 300 action 'accept'
set firewall name local-trusted rule 300 description 'Rule: accept_wireguard'
set firewall name local-trusted rule 300 source port '51820'
set firewall name local-trusted rule 300 protocol 'udp'
set firewall name local-trusted rule 999 action 'drop'
set firewall name local-trusted rule 999 description 'Rule: drop_invalid'
set firewall name local-trusted rule 999 state invalid 'enable'
set firewall name local-trusted rule 999 log 'enable'

# From LOCAL to VIDEO
set firewall name local-video default-action 'drop'
set firewall name local-video description 'From LOCAL to VIDEO'
set firewall name local-video enable-default-log
set firewall name local-video rule 999 action 'drop'
set firewall name local-video rule 999 description 'Rule: drop_invalid'
set firewall name local-video rule 999 state invalid 'enable'
set firewall name local-video rule 999 log 'enable'

# From LOCAL to WAN
set firewall name local-wan default-action 'accept'
set firewall name local-wan description 'From LOCAL to WAN'

# From SERVERS to GUEST
set firewall name servers-guest default-action 'drop'
set firewall name servers-guest description 'From SERVERS to GUEST'
set firewall name servers-guest enable-default-log
set firewall name servers-guest rule 999 action 'drop'
set firewall name servers-guest rule 999 description 'Rule: drop_invalid'
set firewall name servers-guest rule 999 state invalid 'enable'
set firewall name servers-guest rule 999 log 'enable'

# From SERVERS to IOT
set firewall name servers-iot default-action 'drop'
set firewall name servers-iot description 'From SERVERS to IOT'
set firewall name servers-iot enable-default-log
set firewall name servers-iot rule 100 action 'accept'
set firewall name servers-iot rule 100 description 'Rule: accept_k8s_nodes'
set firewall name servers-iot rule 100 protocol 'tcp'
set firewall name servers-iot rule 100 source group address-group 'k8s_nodes'
set firewall name servers-iot rule 110 action 'accept'
set firewall name servers-iot rule 110 description 'Rule: accept_k8s_nodes'
set firewall name servers-iot rule 110 protocol 'icmp'
set firewall name servers-iot rule 110 source group address-group 'k8s_nodes'
set firewall name servers-iot rule 999 action 'drop'
set firewall name servers-iot rule 999 description 'Rule: drop_invalid'
set firewall name servers-iot rule 999 state invalid 'enable'
set firewall name servers-iot rule 999 log 'enable'

# From SERVERS to LAN
set firewall name servers-lan default-action 'drop'
set firewall name servers-lan description 'From SERVERS to LAN'
set firewall name servers-lan enable-default-log
set firewall name servers-lan rule 999 action 'drop'
set firewall name servers-lan rule 999 description 'Rule: drop_invalid'
set firewall name servers-lan rule 999 state invalid 'enable'
set firewall name servers-lan rule 999 log 'enable'

# From SERVERS to LOCAL
set firewall name servers-local default-action 'drop'
set firewall name servers-local description 'From SERVERS to LOCAL'
set firewall name servers-local enable-default-log
set firewall name servers-local rule 50 action 'accept'
set firewall name servers-local rule 50 description 'Rule: accept_dhcp'
set firewall name servers-local rule 50 destination port '67,68'
set firewall name servers-local rule 50 protocol 'udp'
set firewall name servers-local rule 50 source port '67,68'
set firewall name servers-local rule 60 action 'accept'
set firewall name servers-local rule 60 description 'Rule: accept_ntp'
set firewall name servers-local rule 60 destination port 'ntp'
set firewall name servers-local rule 60 protocol 'udp'
set firewall name servers-local rule 70 action 'accept'
set firewall name servers-local rule 70 description 'Rule: accept_bgp'
set firewall name servers-local rule 70 destination port 'bgp'
set firewall name servers-local rule 70 protocol 'tcp'
set firewall name servers-local rule 80 action 'accept'
set firewall name servers-local rule 80 description 'Rule: accept_tftp'
set firewall name servers-local rule 80 destination port '69'
set firewall name servers-local rule 80 protocol 'udp'
set firewall name servers-local rule 100 action 'accept'
set firewall name servers-local rule 100 description 'Rule: accept_node_exporter_from_k8s_nodes'
set firewall name servers-local rule 100 destination port '9100'
set firewall name servers-local rule 100 protocol 'tcp'
set firewall name servers-local rule 100 source group address-group 'k8s_nodes'
set firewall name servers-local rule 110 action 'accept'
set firewall name servers-local rule 110 description 'Rule: accept_speedtest_exporter_from_k8s_nodes'
set firewall name servers-local rule 110 destination port '9798'
set firewall name servers-local rule 110 protocol 'tcp'
set firewall name servers-local rule 110 source group address-group 'k8s_nodes'
set firewall name servers-local rule 999 action 'drop'
set firewall name servers-local rule 999 description 'Rule: drop_invalid'
set firewall name servers-local rule 999 state invalid 'enable'
set firewall name servers-local rule 999 log 'enable'

# From SERVERS to CONTAINERS
set firewall name servers-containers default-action 'accept'
set firewall name servers-containers description 'From SERVERS to CONTAINERS'
set firewall name servers-containers enable-default-log
set firewall name servers-containers rule 40 action 'accept'
set firewall name servers-containers rule 40 description 'Rule: accept_dns'
set firewall name servers-containers rule 40 destination port 'domain,domain-s'
set firewall name servers-containers rule 40 protocol 'tcp_udp'
set firewall name servers-containers rule 100 action 'accept'
set firewall name servers-containers rule 100 description 'Rule: accept_k8s_nodes'
set firewall name servers-containers rule 100 protocol 'tcp'
set firewall name servers-containers rule 100 source group address-group 'k8s_nodes'
set firewall name servers-containers rule 999 action 'drop'
set firewall name servers-containers rule 999 description 'Rule: drop_invalid'
set firewall name servers-containers rule 999 state invalid 'enable'
set firewall name servers-containers rule 999 log 'enable'

# From SERVERS to TRUSTED
set firewall name servers-trusted default-action 'drop'
set firewall name servers-trusted description 'From SERVERS to TRUSTED'
set firewall name servers-trusted enable-default-log
set firewall name servers-trusted rule 999 action 'drop'
set firewall name servers-trusted rule 999 description 'Rule: drop_invalid'
set firewall name servers-trusted rule 999 state invalid 'enable'
set firewall name servers-trusted rule 999 log 'enable'

# From SERVERS to VIDEO
set firewall name servers-video default-action 'drop'
set firewall name servers-video description 'From SERVERS to VIDEO'
set firewall name servers-video enable-default-log
set firewall name servers-video rule 100 action 'accept'
set firewall name servers-video rule 100 description 'Rule: accept_k8s_nodes'
set firewall name servers-video rule 100 protocol 'tcp_udp'
set firewall name servers-video rule 100 source group address-group 'k8s_nodes'
set firewall name servers-video rule 999 action 'drop'
set firewall name servers-video rule 999 description 'Rule: drop_invalid'
set firewall name servers-video rule 999 state invalid 'enable'
set firewall name servers-video rule 999 log 'enable'

# From SERVERS to WAN
set firewall name servers-wan default-action 'accept'
set firewall name servers-wan description 'From SERVERS to WAN'

# From CONTAINERS to GUEST
set firewall name containers-guest default-action 'drop'
set firewall name containers-guest description 'From CONTAINERS to GUEST'
set firewall name containers-guest enable-default-log
set firewall name containers-guest rule 999 action 'drop'
set firewall name containers-guest rule 999 description 'Rule: drop_invalid'
set firewall name containers-guest rule 999 state invalid 'enable'
set firewall name containers-guest rule 999 log 'enable'

# From CONTAINERS to IOT
set firewall name containers-iot default-action 'drop'
set firewall name containers-iot description 'From CONTAINERS to IOT'
set firewall name containers-iot enable-default-log
set firewall name containers-iot rule 999 action 'drop'
set firewall name containers-iot rule 999 description 'Rule: drop_invalid'
set firewall name containers-iot rule 999 state invalid 'enable'
set firewall name containers-iot rule 999 log 'enable'

# From CONTAINERS to LAN
set firewall name containers-lan default-action 'drop'
set firewall name containers-lan description 'From CONTAINERS to LAN'
set firewall name containers-lan enable-default-log
set firewall name containers-lan rule 999 action 'drop'
set firewall name containers-lan rule 999 description 'Rule: drop_invalid'
set firewall name containers-lan rule 999 state invalid 'enable'
set firewall name containers-lan rule 999 log 'enable'

# From CONTAINERS to LOCAL
set firewall name containers-local default-action 'drop'
set firewall name containers-local description 'From CONTAINERS to LOCAL'
set firewall name containers-local enable-default-log
set firewall name containers-local rule 50 action 'accept'
set firewall name containers-local rule 50 description 'Rule: accept_dhcp'
set firewall name containers-local rule 50 destination port '67,68'
set firewall name containers-local rule 50 protocol 'udp'
set firewall name containers-local rule 50 source port '67,68'
set firewall name containers-local rule 60 action 'accept'
set firewall name containers-local rule 60 description 'Rule: accept_ntp'
set firewall name containers-local rule 60 destination port 'ntp'
set firewall name containers-local rule 60 protocol 'udp'
set firewall name containers-local rule 999 action 'drop'
set firewall name containers-local rule 999 description 'Rule: drop_invalid'
set firewall name containers-local rule 999 state invalid 'enable'
set firewall name containers-local rule 999 log 'enable'

# From CONTAINERS to SERVERS
set firewall name containers-servers default-action 'accept'
set firewall name containers-servers description 'From CONTAINERS to SERVERS'
set firewall name containers-servers rule 999 action 'drop'
set firewall name containers-servers rule 999 description 'Rule: drop_invalid'
set firewall name containers-servers rule 999 state invalid 'enable'
set firewall name containers-servers rule 999 log 'enable'

# From CONTAINERS to TRUSTED
set firewall name containers-trusted default-action 'drop'
set firewall name containers-trusted description 'From CONTAINERS to TRUSTED'
set firewall name containers-trusted enable-default-log
set firewall name containers-trusted rule 999 action 'drop'
set firewall name containers-trusted rule 999 description 'Rule: drop_invalid'
set firewall name containers-trusted rule 999 state invalid 'enable'
set firewall name containers-trusted rule 999 log 'enable'

# From CONTAINERS to VIDEO
set firewall name containers-video default-action 'drop'
set firewall name containers-video description 'From CONTAINERS to VIDEO'
set firewall name containers-video enable-default-log
set firewall name containers-video rule 999 action 'drop'
set firewall name containers-video rule 999 description 'Rule: drop_invalid'
set firewall name containers-video rule 999 state invalid 'enable'
set firewall name containers-video rule 999 log 'enable'

# From CONTAINERS to WAN
set firewall name containers-wan default-action 'accept'
set firewall name containers-wan description 'From CONTAINERS to WAN'

# From TRUSTED to GUEST
set firewall name trusted-guest default-action 'drop'
set firewall name trusted-guest description 'From TRUSTED to GUEST'
set firewall name trusted-guest enable-default-log
set firewall name trusted-guest rule 999 action 'drop'
set firewall name trusted-guest rule 999 description 'Rule: drop_invalid'
set firewall name trusted-guest rule 999 state invalid 'enable'
set firewall name trusted-guest rule 999 log 'enable'

# From TRUSTED to IOT
set firewall name trusted-iot default-action 'accept'
set firewall name trusted-iot description 'From TRUSTED to IOT'
set firewall name trusted-iot rule 100 action 'accept'
set firewall name trusted-iot rule 100 description 'Rule: accept_app_control_from_sonos_controllers_tcp'
set firewall name trusted-iot rule 100 destination port '80,443,445,1400,3400,3401,3500,4070,4444'
set firewall name trusted-iot rule 100 protocol 'tcp'
set firewall name trusted-iot rule 100 source group address-group 'sonos_controllers'
set firewall name trusted-iot rule 110 action 'accept'
set firewall name trusted-iot rule 110 description 'Rule: accept_app_control_from_sonos_controllers_udp'
set firewall name trusted-iot rule 110 destination port '136-139,1900-1901,2869,10243,10280-10284,5353,6969'
set firewall name trusted-iot rule 110 protocol 'udp'
set firewall name trusted-iot rule 110 source group address-group 'sonos_controllers'
set firewall name trusted-iot rule 999 action 'drop'
set firewall name trusted-iot rule 999 description 'Rule: drop_invalid'
set firewall name trusted-iot rule 999 state invalid 'enable'
set firewall name trusted-iot rule 999 log 'enable'

# From TRUSTED to LAN
set firewall name trusted-lan default-action 'accept'
set firewall name trusted-lan description 'From TRUSTED to LAN'
set firewall name trusted-lan rule 999 action 'drop'
set firewall name trusted-lan rule 999 description 'Rule: drop_invalid'
set firewall name trusted-lan rule 999 state invalid 'enable'
set firewall name trusted-lan rule 999 log 'enable'

# From TRUSTED to LOCAL
set firewall name trusted-local default-action 'drop'
set firewall name trusted-local description 'From TRUSTED to LOCAL'
set firewall name trusted-local enable-default-log
set firewall name trusted-local rule 50 action 'accept'
set firewall name trusted-local rule 50 description 'Rule: accept_dhcp'
set firewall name trusted-local rule 50 destination port '67,68'
set firewall name trusted-local rule 50 protocol 'udp'
set firewall name trusted-local rule 50 source port '67,68'
set firewall name trusted-local rule 60 action 'accept'
set firewall name trusted-local rule 60 description 'Rule: accept_ntp'
set firewall name trusted-local rule 60 destination port 'ntp'
set firewall name trusted-local rule 60 protocol 'udp'
set firewall name trusted-local rule 100 action 'accept'
set firewall name trusted-local rule 100 description 'Rule: accept_igmp'
set firewall name trusted-local rule 100 protocol '2'
set firewall name trusted-local rule 110 action 'accept'
set firewall name trusted-local rule 110 description 'Rule: accept_mdns'
set firewall name trusted-local rule 110 destination port 'mdns'
set firewall name trusted-local rule 110 protocol 'udp'
set firewall name trusted-local rule 110 source port 'mdns'
set firewall name trusted-local rule 200 action 'accept'
set firewall name trusted-local rule 200 description 'Rule: accept_ssh'
set firewall name trusted-local rule 200 destination port 'ssh'
set firewall name trusted-local rule 200 protocol 'tcp'
set firewall name trusted-local rule 210 action 'accept'
set firewall name trusted-local rule 210 description 'Rule: accept_vyos_api'
set firewall name trusted-local rule 210 destination port '8443'
set firewall name trusted-local rule 210 protocol 'tcp'
set firewall name trusted-local rule 220 action 'accept'
set firewall name trusted-local rule 220 description 'Rule: accept_wireguard'
set firewall name trusted-local rule 220 destination port '51820'
set firewall name trusted-local rule 220 protocol 'udp'
set firewall name trusted-local rule 300 action 'accept'
set firewall name trusted-local rule 300 description 'Rule: accept_discovery_from_sonos_players'
set firewall name trusted-local rule 300 destination port '1900,1901,1902'
set firewall name trusted-local rule 300 protocol 'udp'
set firewall name trusted-local rule 300 source group address-group 'sonos_players'
set firewall name trusted-local rule 310 action 'accept'
set firewall name trusted-local rule 310 description 'Rule: accept_discovery_from_sonos_controllers'
set firewall name trusted-local rule 310 destination port '1900,1901,1902,57621'
set firewall name trusted-local rule 310 protocol 'udp'
set firewall name trusted-local rule 310 source group address-group 'sonos_controllers'
set firewall name trusted-local rule 999 action 'drop'
set firewall name trusted-local rule 999 description 'Rule: drop_invalid'
set firewall name trusted-local rule 999 state invalid 'enable'
set firewall name trusted-local rule 999 log 'enable'

# From TRUSTED to SERVERS
set firewall name trusted-servers default-action 'accept'
set firewall name trusted-servers description 'From TRUSTED to SERVERS'
set firewall name trusted-servers rule 999 action 'drop'
set firewall name trusted-servers rule 999 description 'Rule: drop_invalid'
set firewall name trusted-servers rule 999 state invalid 'enable'
set firewall name trusted-servers rule 999 log 'enable'

# From TRUSTED to CONTAINERS
set firewall name trusted-containers default-action 'accept'
set firewall name trusted-containers description 'From TRUSTED to CONTAINERS'
set firewall name trusted-containers rule 40 action 'accept'
set firewall name trusted-containers rule 40 description 'Rule: accept_dns'
set firewall name trusted-containers rule 40 destination port 'domain,domain-s'
set firewall name trusted-containers rule 40 protocol 'tcp_udp'
set firewall name trusted-containers rule 999 action 'drop'
set firewall name trusted-containers rule 999 description 'Rule: drop_invalid'
set firewall name trusted-containers rule 999 state invalid 'enable'
set firewall name trusted-containers rule 999 log 'enable'

# From TRUSTED to VIDEO
set firewall name trusted-video default-action 'accept'
set firewall name trusted-video description 'From TRUSTED to VIDEO'
set firewall name trusted-video rule 999 action 'drop'
set firewall name trusted-video rule 999 description 'Rule: drop_invalid'
set firewall name trusted-video rule 999 state invalid 'enable'
set firewall name trusted-video rule 999 log 'enable'

# From TRUSTED to WAN
set firewall name trusted-wan default-action 'accept'
set firewall name trusted-wan description 'From TRUSTED to WAN'

# From VIDEO to GUEST
set firewall name video-guest default-action 'drop'
set firewall name video-guest description 'From VIDEO to GUEST'
set firewall name video-guest enable-default-log
set firewall name video-guest rule 999 action 'drop'
set firewall name video-guest rule 999 description 'Rule: drop_invalid'
set firewall name video-guest rule 999 state invalid 'enable'
set firewall name video-guest rule 999 log 'enable'

# From VIDEO to IOT
set firewall name video-iot default-action 'drop'
set firewall name video-iot description 'From VIDEO to IOT'
set firewall name video-iot enable-default-log
set firewall name video-iot rule 100 action 'accept'
set firewall name video-iot rule 100 description 'Rule: allow connecting to hass'
set firewall name video-iot rule 100 protocol 'tcp'
set firewall name video-iot rule 100 destination group address-group 'k8s_hass'
set firewall name video-iot rule 100 destination port '8123'
set firewall name video-iot rule 999 action 'drop'
set firewall name video-iot rule 999 description 'Rule: drop_invalid'
set firewall name video-iot rule 999 state invalid 'enable'
set firewall name video-iot rule 999 log 'enable'

# From VIDEO to LAN
set firewall name video-lan default-action 'drop'
set firewall name video-lan description 'From VIDEO to LAN'
set firewall name video-lan enable-default-log
set firewall name video-lan rule 999 action 'drop'
set firewall name video-lan rule 999 description 'Rule: drop_invalid'
set firewall name video-lan rule 999 state invalid 'enable'
set firewall name video-lan rule 999 log 'enable'

# From VIDEO to LOCAL
set firewall name video-local default-action 'drop'
set firewall name video-local description 'From VIDEO to LOCAL'
set firewall name video-local enable-default-log
set firewall name video-local rule 50 action 'accept'
set firewall name video-local rule 50 description 'Rule: accept_dhcp'
set firewall name video-local rule 50 destination port '67,68'
set firewall name video-local rule 50 protocol 'udp'
set firewall name video-local rule 50 source port '67,68'
set firewall name video-local rule 60 action 'accept'
set firewall name video-local rule 60 description 'Rule: accept_ntp'
set firewall name video-local rule 60 destination port 'ntp'
set firewall name video-local rule 60 protocol 'udp'
set firewall name video-local rule 999 action 'drop'
set firewall name video-local rule 999 description 'Rule: drop_invalid'
set firewall name video-local rule 999 state invalid 'enable'
set firewall name video-local rule 999 log 'enable'

# From VIDEO to SERVERS
set firewall name video-servers default-action 'drop'
set firewall name video-servers description 'From VIDEO to SERVERS'
set firewall name video-servers enable-default-log
set firewall name video-servers rule 100 action 'accept'
set firewall name video-servers rule 100 description 'Rule: accept_k8s_nodes'
set firewall name video-servers rule 100 protocol 'udp'
set firewall name video-servers rule 100 destination group address-group 'k8s_nodes'
set firewall name video-servers rule 100 source port '6987-6989'
set firewall name video-servers rule 999 action 'drop'
set firewall name video-servers rule 999 description 'Rule: drop_invalid'
set firewall name video-servers rule 999 state invalid 'enable'
set firewall name video-servers rule 999 log 'enable'

# From VIDEO to CONTAINERS
set firewall name video-containers default-action 'accept'
set firewall name video-containers description 'From VIDEO to CONTAINERS'
set firewall name video-containers rule 40 action 'accept'
set firewall name video-containers rule 40 description 'Rule: accept_dns'
set firewall name video-containers rule 40 destination port 'domain,domain-s'
set firewall name video-containers rule 40 protocol 'tcp_udp'
set firewall name video-containers rule 999 action 'drop'
set firewall name video-containers rule 999 description 'Rule: drop_invalid'
set firewall name video-containers rule 999 state invalid 'enable'
set firewall name video-containers rule 999 log 'enable'

# From VIDEO to TRUSTED
set firewall name video-trusted default-action 'drop'
set firewall name video-trusted description 'From VIDEO to TRUSTED'
set firewall name video-trusted enable-default-log
set firewall name video-trusted rule 999 action 'drop'
set firewall name video-trusted rule 999 description 'Rule: drop_invalid'
set firewall name video-trusted rule 999 state invalid 'enable'
set firewall name video-trusted rule 999 log 'enable'

# From VIDEO to WAN
set firewall name video-wan default-action 'drop'
set firewall name video-wan description 'From VIDEO to WAN'

# From WAN to GUEST
set firewall name wan-guest default-action 'drop'
set firewall name wan-guest description 'From WAN to GUEST'
set firewall name wan-guest enable-default-log
set firewall name wan-guest rule 999 action 'drop'
set firewall name wan-guest rule 999 description 'Rule: drop_invalid'
set firewall name wan-guest rule 999 state invalid 'enable'
set firewall name wan-guest rule 999 log 'enable'

# From WAN to IOT
set firewall name wan-iot default-action 'drop'
set firewall name wan-iot description 'From WAN to IOT'
set firewall name wan-iot enable-default-log
set firewall name wan-iot rule 999 action 'drop'
set firewall name wan-iot rule 999 description 'Rule: drop_invalid'
set firewall name wan-iot rule 999 state invalid 'enable'
set firewall name wan-iot rule 999 log 'enable'

# From WAN to LAN
set firewall name wan-lan default-action 'drop'
set firewall name wan-lan description 'From WAN to LAN'
set firewall name wan-lan enable-default-log
set firewall name wan-lan rule 999 action 'drop'
set firewall name wan-lan rule 999 description 'Rule: drop_invalid'
set firewall name wan-lan rule 999 state invalid 'enable'
set firewall name wan-lan rule 999 log 'enable'

# From WAN to LOCAL
set firewall name wan-local default-action 'drop'
set firewall name wan-local description 'From WAN to LOCAL'
set firewall name wan-local enable-default-log
set firewall name wan-local rule 1 action 'drop'
set firewall name wan-local rule 1 description 'Rule: drop_invalid'
set firewall name wan-local rule 1 state invalid 'enable'
set firewall name wan-local rule 1 log 'enable'
set firewall name wan-local rule 100 action 'accept'
set firewall name wan-local rule 100 description 'Rule: accept_wireguard'
set firewall name wan-local rule 100 destination port '51820'
set firewall name wan-local rule 100 protocol 'udp'

# From WAN to SERVERS
set firewall name wan-servers default-action 'drop'
set firewall name wan-servers description 'From WAN to SERVERS'
set firewall name wan-servers enable-default-log
set firewall name wan-servers rule 999 action 'drop'
set firewall name wan-servers rule 999 description 'Rule: drop_invalid'
set firewall name wan-servers rule 999 state invalid 'enable'
set firewall name wan-servers rule 999 log 'enable'

# From WAN to CONTAINERS
set firewall name wan-containers default-action 'drop'
set firewall name wan-containers description 'From WAN to CONTAINERS'
set firewall name wan-containers enable-default-log
set firewall name wan-containers rule 999 action 'drop'
set firewall name wan-containers rule 999 description 'Rule: drop_invalid'
set firewall name wan-containers rule 999 state invalid 'enable'
set firewall name wan-containers rule 999 log 'enable'

# From WAN to TRUSTED
set firewall name wan-trusted default-action 'drop'
set firewall name wan-trusted description 'From WAN to TRUSTED'
set firewall name wan-trusted enable-default-log
set firewall name wan-trusted rule 999 action 'drop'
set firewall name wan-trusted rule 999 description 'Rule: drop_invalid'
set firewall name wan-trusted rule 999 state invalid 'enable'
set firewall name wan-trusted rule 999 log 'enable'

# From WAN to VIDEO
set firewall name wan-video default-action 'drop'
set firewall name wan-video description 'From WAN to VIDEO'
set firewall name wan-video enable-default-log
set firewall name wan-video rule 999 action 'drop'
set firewall name wan-video rule 999 description 'Rule: drop_invalid'
set firewall name wan-video rule 999 state invalid 'enable'
set firewall name wan-video rule 999 log 'enable'
