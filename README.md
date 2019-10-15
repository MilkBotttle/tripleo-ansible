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

## Start Prepare system
1. Run `ansible-playbook main.yaml`

## Install undercloud 
After prepare complete use `stack` user and edit `undercloud.conf` at
home folder. Than run `openstack undercloud install`


