CREATE DATABASE nova;
grant all privileges on nova.* to nova@'localhost' identified by 'password';
grant all privileges on nova.* to nova@'%' identified by 'password';
