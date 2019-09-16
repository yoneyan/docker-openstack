CREATE DATABASE nova_placement;
grant all privileges on nova_placement.* to nova@'localhost' identified by 'password';
grant all privileges on nova_placement.* to nova@'%' identified by 'password';
