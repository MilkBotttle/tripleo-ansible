# Backup controller database and filesystem
Use ansible to backup database and filesystem.

# Requirement
- Ansible >= 2.4.1
- OpenStack

#Openstack version
TripleO - Pike

# Role Variables
`backup_archive_dest`: A path include to save the backupfile (Default: /tmp/overcloud-backup-{{date}}.tar)
`backup_format`: A ansible support type to archive the files, support type - bz2, gz, tar, zip (Default: tar)

#How to use this role
Example playbook
```
---
- name: Backup through controller-0
  hosts: controller-0
  vars:
    backup_archive_dest: /root/overcloud-controll-plane.gz
    backup_format: gz
  roles:
    - backup_controller
```
