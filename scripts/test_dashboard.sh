#!/bin/bash

echo "Generating CPU load..."
stress --cpu 4 --timeout 30

echo "Generating Memory load..."
stress --vm 2 --vm-bytes 512M --timeout 30

echo "Generating disk I/O load..."
dd if=/dev/zero of=testfile bs=1M count=1024 oflag=dsync

echo "Test complete. check Netdata dashboard."