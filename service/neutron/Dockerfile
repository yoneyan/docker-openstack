FROM centos:7

RUN yum -y install centos-release-openstack-stein epel-release
RUN yum -y update
RUN yum --enablerepo=centos-openstack-stein,epel -y install openstack-neutron openstack-neutron-ml2 openstack-neutron-openvswitch

ADD ./neutron.conf /etc/neutron/neutron.conf

CMD ["/sbin/init"]
