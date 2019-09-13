FROM mariadb:10.4.7
#FROM mysql:5.7

RUN sed -ire 's/max_allowed_packet.*=.*/max_allowed_packet = 256M/g' /etc/mysql/my.cnf
RUN sed -ire 's/max_connections.*=.*/max_connections = 500/g' /etc/mysql/my.cnf
#RUN sed -e "/^max_connections$/a character-set-server=utf8" /etc/mysql/my.cnf
