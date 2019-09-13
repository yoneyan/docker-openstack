CREATE DATABASE nova_api;
grant all privileges on nova_api.* to nova_api@'localhost' identified by 'password';
grant all privileges on nova_api.* to nova_api@'%' identified by 'password';
