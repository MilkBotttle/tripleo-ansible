# Backup undercloud
Archive database data and file, then save in object storage.

# Version
Pike

# Requirement
- NTP
- Undercloud
- Ansible >= 2.4.1

# Quickstart
- Edit back list include file you want to backup
- `ansible-playbook -e @bckup_list.yaml backup_undercloud.yaml`
