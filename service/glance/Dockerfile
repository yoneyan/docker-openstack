FROM centos:7

RUN yum -y install centos-release-openstack-stein epel-release
RUN sed -i -e "s/enabled=1/enabled=0/g" /etc/yum.repos.d/CentOS-OpenStack-stein.repo
RUN yum -y update
RUN yum --enablerepo=centos-openstack-stein -y install openstack-glance
ADD ./glance-api.conf /etc/glance/glance-api.conf
ADD ./init.sh /
RUN mkdir -p /var/lib/glance/images

EXPOSE 9292

RUN chmod 640 /etc/glance/glance-api.conf
RUN chown root:glance /etc/glance/glance-api.conf

RUN systemctl enable openstack-glance-api

CMD ["/sbin/init"]
