CREATE DATABASE nova_api;
grant all privileges on nova_api.* to nova@'localhost' identified by 'password';
grant all privileges on nova_api.* to nova@'%' identified by 'password';
