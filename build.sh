#!/bin/bash
set -e

cd /config
rm -rf /config/prometheus_cable_modem_exporter
git clone https://github.com/Tuxdude/prometheus_cable_modem_exporter.git
cd prometheus_cable_modem_exporter
go mod tidy -v
go build -v -ldflags '-w'
mv -f prometheus_cable_modem_exporter /config/cable_modem_exporter
cd /config
rm -rf /config/prometheus_cable_modem_exporter
