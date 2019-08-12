# Ansible install Undercloud
Use ansible to install undercloud at localhost.

## Version
Stein

## Requirement
* CentOS 7
* Internet

## Quick Start
Play at localhost as below:
1. Configure the `undercloud_config.yaml`.
2. Install undercloud `bash undercloud-install`

## Other avaliable command
1. List tags
`bash undercloud-install --list-tags`
2. Prepare install undercloud 
`bash undercloud-install --tag uc_prepare`
