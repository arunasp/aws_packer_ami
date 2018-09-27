#!/bin/bash -x

echo '[Unit]
Description=Regenerate SSH host keys
Before=ssh.service

[Service]
Type=oneshot
ExecStart=/usr/sbin/dpkg-reconfigure openssh-server
ExecStartPost=/bin/systemctl disable regenerate_ssh_host_keys

[Install]
WantedBy=multi-user.target
' > /etc/systemd/system/regenerate_ssh_host_keys.service && /bin/systemctl enable regenerate_ssh_host_keys
