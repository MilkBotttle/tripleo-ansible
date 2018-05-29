# Ansible install Undercloud
Use ansible to instll undercloud at localhost.

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

## How to use
### Play at localhost
1. Configure the `undercloud_config.yaml`
2. Install undercloud directly use root user
`ansible-playbook -e "@undercloud_config.yaml" main.yaml`
