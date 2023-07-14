#!/bin/bash

# Download and Install grafana
sudo apt-get install -y adduser libfontconfig
wget https://dl.grafana.com/oss/release/grafana_10.0.2_amd64.deb
sudo dpkg -i grafana_10.0.2_amd64.deb


# systemd
sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server

# Installation cleanup
rm grafana_10.0.2_amd64.deb
