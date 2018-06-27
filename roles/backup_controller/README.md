# Backup controller database and filesystem
Use ansible to backup database and filesystem.
Ansible play task on one host and archive backup files.

# Requirement
- Ansible >= 2.4.1
- OpenStack

#Openstack version
TripleO - Pike

# Role Variables
`backup_archive_dest`: A path include to save the backupfile (Default: /tmp/overcloud-backup-{{date}}.tar.gz)

#How to use this role
Example playbook
```
---
- name: Backup through controller-0
  hosts: controller-0
  vars:
    backup_archive_dest: /root/overcloud-controll-plane.gz
  roles:
    - backup_controller
```
