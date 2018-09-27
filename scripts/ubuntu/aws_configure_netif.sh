#!/bin/bash -x
sed -i -e '/^auto en.$/d' -e '/^iface en.*$/d' /etc/network/interfaces
echo -e 'auto eth0\niface eth0 inet dhcp\n' >> /etc/network/interfaces
