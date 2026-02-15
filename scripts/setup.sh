#!/bin/bash

set -e

echo "Updating system packages..."
sudo apt update -y

echo "Installing dependencies..."
sudo apt install -y curl wget stress

echo "Installing Netadata..."
bash <(curl -L -Ss https://my-netdata.io/kickstart.sh) --dont-wait

echo "Configuring custom CPU alert..."
sudo mkdir -p /etc/netdata/health.d

sudo cp ../config/cpu_alert.conf /etc/netdata/health.d/

echo "Restarting Netadata service..."
sudo systemctl restart netdata

echo "Netadata setup complete."
echo "Access the dashboard at http://localhost:19999"