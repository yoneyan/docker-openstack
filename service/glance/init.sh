#!/bin/bash

systemctl stop openstack-glance-api
su -s /bin/bash glance -c "glance-manage db_sync"
systemctl start openstack-glance-api
