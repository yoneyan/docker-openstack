CREATE DATABASE neutron_ml2;
grant all privileges on neutron_ml2.* to neutron@'localhost' identified by 'password';
grant all privileges on neutron_ml2.* to neutron@'%' identified by 'password';
