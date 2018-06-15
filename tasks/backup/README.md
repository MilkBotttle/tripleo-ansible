# Backup undercloud
Run openstack undercloud backup
# Version
Pike
# Vars
- `add_files_to_path` : Add file in backup.(list value)
- `exclude_files_to_path`: Exclude file not backup (list value)
# Quickstart
ansible-playbook --extra-vars '{add_files_to_backup: ['/var/log','/etc/']}' \
                 --extra-vars '{exclude_files_to_backup: ['/home/stack']}' \
                 backup_undercloud.yaml
