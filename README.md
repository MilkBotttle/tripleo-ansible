# Ansible install Undercloud
Use ansible to install undercloud at localhost.

## Version
Pike

## Requirement
* Ansible >= 2.4
* CentOS 7
* Internet

## Install Ansible
Use tools/install_ansible shell script.

## Prepare tripleo repo file if not exist
Use tools/get_tripleo_repo shell script.

## Quick Start
Play at localhost as below:
1. Configure the `undercloud_config.yaml`.
2. Install undercloud with root user `ansible-playbook -e "@undercloud_config.yaml" main.yaml`.

---
# Ansible Backup Undercloud
Use ansible to backup undercloud

# Quick Start
On undercloud node `ansible-playbook backup_undercloud.yaml`
