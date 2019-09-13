#!/bin/bash

yum -y update
yum -y install centos-release-openstack-stein epel-release
yum --enablerepo=centos-openstack-stein,epel -y install openstack-nova

