FROM centos:7

RUN yum -y install centos-release-openstack-stein epel-release
RUN sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-OpenStack-stein.repo
RUN yum -y update
RUN yum --enablerepo=centos-openstack-stein,epel -y install openstack-keystone openstack-utils python-openstackclient httpd mod_wsgi
RUN mkdir /app
RUN sed -i -e "s/#ServerName/ServerName/g" /etc/httpd/conf/httpd.conf
RUN sed -i -e "476i memcache_servers = 10.30.0.11:11211" /etc/keystone/keystone.conf
RUN sed -i -e "608i connection = mysql+pymysql://root:password@10.30.0.10/keystone" /etc/keystone/keystone.conf
RUN sed -i -e "2531i provider = fernet" /etc/keystone/keystone.conf
RUN sed -i -e "s/#provider/provider/g" /etc/httpd/conf/httpd.conf
ADD ./init.sh /
ADD ./init-openstack.sh /
ADD ./env.sh /
ADD ./keystonerc /

CMD ["expose controller=10.30.0.2"]

EXPOSE 5000
EXPOSE 35357

RUN ln -s /usr/share/keystone/wsgi-keystone.conf /etc/httpd/conf.d/
#RUN systemctl enable httpd

#CMD ["/sbin/init"]
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]
