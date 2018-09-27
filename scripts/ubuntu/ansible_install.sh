#!/usr/bin/env bash
set -eux

# Install Ansible repository.
apt -y update && apt-get -y upgrade
apt -y install software-properties-common
apt-add-repository ppa:ansible/ansible

# Install Ansible.
apt -y update
apt -y install ansible

# Cleanup Ansible repository
apt-add-repository --remove ppa:ansible/ansible
