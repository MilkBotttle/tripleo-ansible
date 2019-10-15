# Ansible prepare install Undercloud
Use ansible to prepare install undercloud at localhost.

## Version
Rocky

## Requirement
* Ansible >= 2.4
* CentOS 7
* Internet

## Install Ansible
Use tools/install_ansible shell script.

## Quick Start
Play at localhost as below:
1. Configure the `undercloud_config.yaml`.
2. Install undercloud with root user `ansible-playbook -e "@undercloud_config.yaml" main.yaml`.

# Ansible backup controller
Play run on a controller:
`ansible-playbook -i [controller-hostname/ip], backup_overcloud.yaml`

# Ansible backup undercloud
Play run on undercloud:
`ansible-playbook backup_undercloud.yaml`
