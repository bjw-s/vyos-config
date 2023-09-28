#!/bin/vbash

# Interface groups
set firewall group interface-group IG_containers interface 'pod-containers'
set firewall group interface-group IG_guest interface 'eth1.30'
set firewall group interface-group IG_iot interface 'eth1.40'
set firewall group interface-group IG_lan interface 'eth1'
set firewall group interface-group IG_servers interface 'eth1.10'
set firewall group interface-group IG_trusted interface 'eth1.20'
set firewall group interface-group IG_trusted interface 'wg01'
set firewall group interface-group IG_video interface 'eth1.50'
set firewall group interface-group IG_wan interface 'eth5'
set firewall group interface-group IG_wan interface 'pppoe0'

# Router (VyOS itself)
set firewall group address-group router-addresses address 10.0.0.1
set firewall group address-group router-addresses address 127.0.0.1
set firewall group ipv6-address-group router-addresses-ipv6 address fe80::e63a:6eff:fe5a:f805
set firewall group ipv6-address-group router-addresses-ipv6 address ::1

# k8s nodes
set firewall group address-group k8s_nodes address '10.1.1.31-10.1.1.33' # Servers vLAN
set firewall group address-group k8s_nodes address '10.1.3.121-10.1.3.123' # IoT vLAN

# k8s ingress client devices
set firewall group address-group k8s_ingress_allowed address '10.1.3.35'
set firewall group address-group k8s_ingress_allowed address '10.1.3.36'
set firewall group address-group k8s_ingress_allowed address '10.1.3.53'
set firewall group address-group k8s_ingress_allowed address '10.1.3.54'

# k8s cluster services
set firewall group address-group k8s_api address '10.5.0.2'
set firewall group address-group k8s_hass address '10.1.3.151'
set firewall group address-group k8s_ingress address '10.45.0.1'
set firewall group address-group k8s_ingress address '10.45.0.3'
set firewall group address-group k8s_mqtt address '10.45.0.10'
set firewall group address-group k8s_plex address '10.45.0.20'
set firewall group address-group k8s_vector_aggregator address '10.45.0.2'

# MQTT client devices
set firewall group address-group mqtt_clients address '10.1.2.21' # Bernd
set firewall group address-group mqtt_clients address '10.1.2.32'
set firewall group address-group mqtt_clients address '10.1.3.18' # Vacuum livingroom
set firewall group address-group mqtt_clients address '10.1.3.22' # Vacuum upstairs

# Plex client devices
set firewall group address-group plex_clients address '10.1.2.21' # Bernd
set firewall group address-group plex_clients address '10.1.2.31-10.1.2.32'
set firewall group address-group plex_clients address '10.1.2.22' # Man-Yie
set firewall group address-group plex_clients address '10.1.2.33-10.1.2.34'
set firewall group address-group plex_clients address '10.1.2.35' # Eva
set firewall group address-group plex_clients address '10.1.2.36' # Kitchen
set firewall group address-group plex_clients address '10.1.3.16' # Apple TV

# Printers
set firewall group address-group printers address '10.1.3.55'

# 3D printer
set firewall group port-group bambu-discovery port '1990'
set firewall group port-group bambu-discovery port '2021'

set firewall group address-group bambu-printers address '10.1.3.11'

# Printer client machines
set firewall group address-group printer_allowed address '192.168.2.11'

# Scanners
set firewall group address-group scanners address '10.1.3.55'

# Sonos controllers
set firewall group port-group sonos-controller-discovery port '1900'

set firewall group address-group sonos_controllers address '10.1.2.21' # Bernd
set firewall group address-group sonos_controllers address '10.1.2.31-10.1.2.32'
set firewall group address-group sonos_controllers address '10.1.2.22' # Man-Yie
set firewall group address-group sonos_controllers address '10.1.2.33-10.1.2.34'
set firewall group address-group sonos_controllers address '10.1.3.25' # Kitchen

# Sonos players
set firewall group port-group sonos-player-discovery port '1900'

set firewall group address-group sonos_players address '10.1.3.61-10.1.3.67'

# Unifi devices
set firewall group address-group unifi_devices address '10.1.0.11-10.1.0.13' # Switches
set firewall group address-group unifi_devices address '10.1.0.21-10.1.0.24' # AP's

# Vyos containers addresses
set firewall group address-group vyos_coredns address '10.5.0.3'
set firewall group address-group vyos_dnsdist address '10.5.0.4'
set firewall group address-group vyos_unifi address '10.5.0.10'

# Storage devices
set firewall group address-group nas address '10.1.1.11'

# Port groups
set firewall group port-group wireguard port '51820'
