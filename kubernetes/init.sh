#!/bin/bash

SET GLOBAL read_only= 0;
SET GLOBAL super_read_only= 0;
CREATE DATABASE keystone;
grant all privileges on keystone.* to keystone@'localhost' identified by 'password';
grant all privileges on keystone.* to keystone@'%' identified by 'password';
CREATE DATABASE glance;
grant all privileges on glance.* to glance@'localhost' identified by 'password';
grant all privileges on glance.* to glance@'%' identified by 'password';
