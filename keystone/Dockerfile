FROM centos:7

RUN yum -y install centos-release-openstack-stein
RUN yum -y install epel-release
RUN sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-OpenStack-stein.repo
RUN yum --enablerepo=centos-openstack-stein -y install openstack-keystone openstack-utils httpd mod_wsgi
RUN mkdir /app

EXPOSE 5000
EXPOSE 35357

ADD init_run.sh /app/init_run.sh
ADD run.sh /app/run.sh

CMD /app/init_run.sh
CMD /app/run.sh
