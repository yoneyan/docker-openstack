#!/bin/bash

yum -y update
yum -y install centos-release-openstack-stein epel-release
sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-OpenStack-stein.repo
yum --enablerepo=centos-openstack-stein,epel -y install openstack-neutron openstack-neutron-ml2 openstack-neutron-openvswitch


chmod 640 /etc/neutron/neutron.conf
chgrp neutron /etc/neutron/neutron.conf

echo "interface_driver = openvswitch" >> /etc/neutron/l3_agent.ini
