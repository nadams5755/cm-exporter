#!/bin/bash
set -e

cd /config
rm -rf /config/prometheus_cable_modem_exporter
git clone https://github.com/Tuxdude/prometheus_cable_modem_exporter.git
cd prometheus_cable_modem_exporter
sed -i 's/172.24.24.1/0.0.0.0/1' main.go
go mod tidy -v
go build -v -ldflags '-w'
mv -f prometheus_cable_modem_exporter /config/cable_modem_exporter
cd /config
rm -rf /config/prometheus_cable_modem_exporter
