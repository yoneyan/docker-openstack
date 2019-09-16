FROM rabbitmq

ENV RABBITMQ_USER openstack
ENV RABBITMQ_PASSWORD password

ADD init.sh /init.sh
RUN chmod +x /init.sh
EXPOSE 5672
EXPOSE 15672

#RUN ["chmod", "+x", "/docker-entrypoint.sh"]
#RUN ["chmod", "+x", "/init.sh"]
CMD ["/init.sh"]

