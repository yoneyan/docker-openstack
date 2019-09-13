CREATE DATABASE nova_placement;
grant all privileges on nova_placement.* to nova_placement@'localhost' identified by 'password';
grant all privileges on nova_placement.* to nova_placement@'%' identified by 'password';
