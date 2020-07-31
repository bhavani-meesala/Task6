From centos
RUN yum install sudo -y
RUN yum install vim -y
RUN yum install /sbin/service -y
COPY ./index.html /var/www/html
RUN yum install httpd -y
CMD /usr/sbin/httpd -DFOREGROUND && /bin/bash
EXPOSE 80
