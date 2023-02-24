# Gateway
set system static-host-mapping host-name gateway.bjw-s.tech inet 10.1.0.1
set system static-host-mapping host-name gateway.bjw-s.tech alias vpn.bjw-s.dev
set system static-host-mapping host-name gateway.bjw-s.tech alias ipv4.bjw-s.dev

# Unifi controller
set system static-host-mapping host-name unifi inet 10.5.0.10

# NAS
set system static-host-mapping host-name librarium.bjw-s.tech inet 10.1.1.11
set system static-host-mapping host-name librarium.bjw-s.tech alias nas.bjw-s.tech
set system static-host-mapping host-name librarium.bjw-s.tech alias garage.bjw-s.dev
set system static-host-mapping host-name librarium.bjw-s.tech alias s3.bjw-s.dev

# Kubernetes hosts
set system static-host-mapping host-name delta.bjw-s.tech inet 10.1.1.31
set system static-host-mapping host-name enigma.bjw-s.tech inet 10.1.1.32
set system static-host-mapping host-name felix.bjw-s.tech inet 10.1.1.33

# Kubernetes cluster VIP
set system static-host-mapping host-name cluster-0.bjw-s.tech inet 10.5.0.2

# Other hosts
set system static-host-mapping host-name diego.bjw-s.tech inet 10.1.3.60
set system static-host-mapping host-name diego.bjw-s.tech alias pikvm.bjw-s.tech
