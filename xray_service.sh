#!/bin/bash

# Stop passwall service
echo "Stopping passwall service..."
service passwall stop

# Download xray.ipk
echo "Downloading xray.ipk..."
wget -q -O /tmp/xray.ipk https://downloads.openwrt.org/snapshots/packages/arm_xscale/packages/xray-core_1.8.10-r1_arm_xscale.ipk

# Install xray.ipk
echo "Installing xray.ipk..."
opkg install /tmp/xray.ipk -d ram
rm -f /tmp/xray.ipk

# Restart passwall service
echo "Restarting passwall service..."
service passwall restart

echo "Finished."
