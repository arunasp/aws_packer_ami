#!/usr/bin/env bash
set -e

# Create a deployment user for the salt bootstrap script to use.
# The user gets deleted by salt when it runs the first highstate.

echo "ec2-user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/ec2-user
useradd --system --create-home --home-dir /var/lib/ec2-user --shell /bin/bash ec2-user

# SSH keys
mkdir /var/lib/ec2-user/.ssh

echo "ssh-rsa NULL NULL" > /var/lib/ec2-user/.ssh/authorized_keys

# Set perms
chmod 700 /var/lib/ec2-user/.ssh
chmod 600 /var/lib/ec2-user/.ssh/authorized_keys
chown -R ec2-user:ec2-user /var/lib/ec2-user
