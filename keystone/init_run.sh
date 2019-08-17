#!/bin/bash

openstack-config --set /etc/keystone/keystone.conf database connection ${CONNECTION-mysql://root:root@172.16.100.231/keystone}
su keystone -s /bin/sh -c "keystone-manage db_sync"

keystone-manage fernet_setup --keystone-user keystone --keystone-group keystone
keystone-manage credential_setup --keystone-user keystone --keystone-group keystone

keystone-manage bootstrap --bootstrap-password ADMIN_PASS \
  --bootstrap-admin-url http://controller:5000/v3/ \
  --bootstrap-internal-url http://controller:5000/v3/ \
  --bootstrap-public-url http://controller:5000/v3/ \
  --bootstrap-region-id RegionOne

ln -s /usr/share/keystone/wsgi-keystone.conf /etc/httpd/conf.d/
