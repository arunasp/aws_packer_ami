#!/usr/bin/env bash
set -e

echo "Clean apt"
apt-get -y autoremove
apt-get -y clean

echo "Cleaning up home directory..."
rm -rf /root/*
rm -rf /tmp/*

echo "Cleaning up dhcp leases..."
rm -f /var/lib/dhcp/*

echo "Cleaning up udev rules..."
rm -f /etc/udev/rules.d/70-persistent-net.rules
rm -rf /dev/.udev/
rm -f /lib/udev/rules.d/75-persistent-net-generator.rules

echo "Deleting SSH host keys..."
/bin/rm -f /etc/ssh/ssh_host_*_key*
