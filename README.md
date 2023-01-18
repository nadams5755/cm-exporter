# cm-exporter

downloads, builds, and runs https://github.com/Tuxdude/prometheus_cable_modem_exporter

assumes you've got an nfs server called `kmaster.k8s.lan` and an export called `/export/d01/cm-exporter-config` which contains `build.sh`

`cm-exporter-deployment.yaml` contains the PVs, PVCs, volumes, init container, and service/main container.  runs two instances.  it runs from `/config`

`cm-exporter-lb.yaml` defines the load balancer.  i use metallb.

`build.sh` replaces the listener address with all interfaces.

i point prometheus at `$LB_VIP` and port `8081`.
