#!/bin/bash

tar --ignore-failed-read --warning=no-file-changed \
    -zcvf /tmp/filesystem_backup/fs_backup-`date '+%Y-%m-%d-%H-%M-%S'`.tar.gz \
    /etc/nova \
    /var/log/nova \
    /var/lib/nova \
    --exclude /var/lib/nova/instances \
    /etc/glance \
    /var/log/glance \
    /var/lib/glance \
    /etc/keystone \
    /var/log/keystone \
    /var/lib/keystone \
    /etc/httpd \
    /etc/cinder \
    /var/log/cinder \
    /var/lib/cinder \
    /etc/heat \
    /var/log/heat \
    /var/lib/heat \
    /var/lib/heat-config \
    /var/lib/heat-cfntools \
    /etc/rabbitmq \
    /var/log/rabbitmq \
    /var/lib/rabbitmq \
    /etc/neutron \
    /var/log/neutron \
    /var/lib/neutron \
    /etc/corosync \
    /etc/haproxy \
    /etc/logrotate.d/haproxy \
    /var/lib/haproxy \
    /etc/openvswitch \
    /var/log/openvswitch \
    /var/lib/openvswitch \
    /etc/ceilometer \
    /var/lib/redis \
    /etc/sysconfig/memcached \
    /etc/gnocchi \
    /var/log/gnocchi \
    /etc/aodh \
    /var/log/aodh \
    /etc/panko \
    /var/log/panko \
    /etc/ceilometer \
    /var/log/ceilometer

