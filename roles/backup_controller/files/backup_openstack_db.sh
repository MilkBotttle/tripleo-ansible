#!/bin/bash

set -u

BACKUP_DB=$1
MYSQLDBPASS=$2

function backup_openstack_db(){
mysql -uroot -p$MYSQLDBPASS -e "select distinct table_schema from information_schema.tables where engine='innodb' and table_schema != 'mysql';" -s -N | xargs mysqldump -uroot -p$MYSQLDBPASS --single-transaction --databases > /tmp/mysql_backup/openstack_databases-`date +%F`-`date +%T`.sql
}

function backup_users_and_promissions_db(){
mysql -uroot -p$MYSQLDBPASS -e "SELECT CONCAT('\"SHOW GRANTS FOR ''',user,'''@''',host,''';\"') FROM mysql.user where (length(user) > 0 and user NOT LIKE 'root')" -s -N | xargs -n1 mysql -uroot -p$MYSQLDBPASS -s -N -e | sed 's/$/;/' > /tmp/mysql_backup/openstack_databases_grants-`date +%F`-`date +%T`.sql
}

case $BACKUP_DB in
   'openstack')
      backup_openstack_db
      ;;
   'user_and_promission')
      backup_users_and_promissions_db
      ;;
   *)
     echo "Usage: backup_openstack_db.sh [openstack|user_and_promission] db_password"
     exit 1
     ;;
esac

