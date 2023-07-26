FROM centos:8
RUN yum install nginx -y
RUN yum install mysql-server -y
RUN yum install https://rpms.remirepo.net/enterprise/remi-release-8.rpm
RUN yum install epel-release
RUN yum module enable php:remi-8.1
RUN yum install php
COPY files/default.conf /etc/nginx/conf.d/default.conf

