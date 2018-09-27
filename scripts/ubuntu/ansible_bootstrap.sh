#!/usr/bin/env bash
set -e

cd /tmp
tar zxvf /tmp/ansible.tar.gz

cd ansible
ansible-playbook main.yml
