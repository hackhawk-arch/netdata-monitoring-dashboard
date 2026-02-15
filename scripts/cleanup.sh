#!/bin/bash

echo "Stopping Netadata service..."
sudo systemctl stop netdata

echo "Uninstalling Netadata..."
sudo /usr/libexec/netdata/netdata-uninstaller.sh --force

echo "Remove test files..."
rm -f testfile

echo "Cleanup complete."