FROM centos:7

RUN yum -y install centos-release-openstack-stein epel-release
RUN sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-OpenStack-stein.repo
RUN yum --enablerepo=centos-openstack-stein -y install openstack-keystone openstack-utils httpd mod_wsgi
RUN mkdir /app
RUN sed -i -e "s/#ServerName/ServerName/g" /etc/httpd/conf/httpd.conf
RUN keystone-manage fernet_setup --keystone-user keystone --keystone-group keystone 
RUN keystone-manage credential_setup --keystone-user keystone --keystone-group keystone

CMD ["expose controller=10.30.0.2"]

EXPOSE 5000
EXPOSE 35357

ADD init_run.sh /app/init_run.sh
ADD run.sh /app/run.sh

RUN systemctl enable httpd
RUN chmod 744 /app/init_run.sh
RUN ln -s /usr/share/keystone/wsgi-keystone.conf /etc/httpd/conf.d/

CMD ["/app/init_run.sh"]
CMD ["/sbin/init"]
