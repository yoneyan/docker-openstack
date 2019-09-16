FROM centos:7

RUN yum -y install centos-release-openstack-stein epel-release
RUN yum -y update
#RUN yum --enablerepo=centos-openstack-stein,epel -y install openstack-nova
RUN yum --enablerepo=centos-openstack-stein,epel -y install openstack-nova-api openstack-nova-conductor openstack-nova-novncproxy openstack-nova-scheduler

ADD ./nova.conf /etc/nova/nova.conf

RUN chmod 640 /etc/nova/nova.conf
RUN chgrp nova /etc/nova/nova.conf

RUN systemctl enable openstack-nova-api
#RUN systemctl enable openstack-nova-consoleauth
RUN systemctl enable openstack-nova-scheduler
RUN systemctl enable openstack-nova-conductor
RUN systemctl enable openstack-nova-novncproxy

ADD ./init.sh /

CMD ["/sbin/init"]

