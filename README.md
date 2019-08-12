# Ansible install Undercloud
Use ansible to install undercloud

## Version
Stein

## Requirement
* CentOS 7
* Internet

## How to install undercloud
Play at localhost as below:
1. Set the play config in `install_config.yaml`.
2. Config undercloud deploy config in `undercloud.conf`
2. Install undercloud `bash undercloud-install`

## About undercloud.conf
The `undercloud.conf.sample` in `samples` can reference to config your
undercloud.

## Other avaliable command
1. List tags.
`bash undercloud-install --list-tags`
2. Prepare undercloud without installation.
`bash undercloud-install --tag uc_prepare`
3. Run install undercloud only
`bash undercloud-install --tag install-undercloud
