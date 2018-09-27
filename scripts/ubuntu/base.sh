#!/usr/bin/env bash
set -e

echo "Upadating system"
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get -y install wget
