#!/bin/bash

tar --ignore-failed-read \
    -zcvf /tmp/UC_backup-`date '+%Y-%m-%d-%H-%M-%S'`.tar.gz \
    /tmp/undercloud-all-database.sql \
    /home/stack \
    /etc \
    /var/log \
    /root \
    /var/lib/glance \
    /var/lib/docker \
    /var/lib/certmonger \
    /var/lib/registry \
    /srv/node \
    /home/stack
