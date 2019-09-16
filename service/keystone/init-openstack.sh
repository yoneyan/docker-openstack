#!/bin/bash

openstack project create --domain default --description "Service Project" service

openstack user create --domain default --project service --password servicepassword glance
openstack role add --project service --user glance admin
openstack service create --name glance --description "OpenStack Image service" image
openstack endpoint create --region RegionOne image public http://10.30.0.5:9292
openstack endpoint create --region RegionOne image internal http://10.30.0.5:9292
openstack endpoint create --region RegionOne image admin http://10.30.0.5:9292


openstack user create --domain default --project service --password servicepassword nova
openstack role add --project service --user nova admin
openstack user create --domain default --project service --password servicepassword placement
openstack role add --project service --user placement admin
openstack service create --name nova --description "OpenStack Compute service" compute
openstack service create --name placement --description "OpenStack Compute Placement service" placement
openstack endpoint create --region RegionOne compute public http://10.30.0.6:8774/v2.1/%\(tenant_id\)s
openstack endpoint create --region RegionOne compute internal http://10.30.0.6:8774/v2.1/%\(tenant_id\)s
openstack endpoint create --region RegionOne compute admin http://10.30.0.6:8774/v2.1/%\(tenant_id\)s
openstack endpoint create --region RegionOne placement public http://10.30.0.6:8778
openstack endpoint create --region RegionOne placement internal http://10.30.0.6:8778
openstack endpoint create --region RegionOne placement admin http://10.30.0.6:8778


openstack user create --domain default --project service --password servicepassword neutron
openstack role add --project service --user neutron admin
openstack service create --name neutron --description "OpenStack Networking service" network
openstack endpoint create --region RegionOne network public http://10.30.0.5:9696
openstack endpoint create --region RegionOne network internal http://10.30.0.5:9696
openstack endpoint create --region RegionOne network admin http://10.30.0.5:9696
