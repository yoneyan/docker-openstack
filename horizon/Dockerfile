FROM centos:7

RUN yum -y install centos-release-openstack-stein epel-release
RUN sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-OpenStack-stein.repo
RUN yum --enablerepo=centos-openstack-stein -y install openstack-dashboard httpd

EXPOSE 80
EXPOSE 443


RUN systemctl enable httpd

CMD ["/sbin/init"]
