FROM registry.access.redhat.com/ubi8/ubi:8.8
RUN yum update -y
RUN yum install epel-release

RUN yum install nginx wget unzip selinux-policy -y



RUN wget -O /usr/share/nginx/html/latest.zip https://wordpress.org/latest.zip

RUN unzip /usr/share/nginx/html/latest.zip -d /usr/share/nginx/html

RUN chown -R nginx:nginx /usr/share/nginx/html

RUN chmod -R 775 /usr/share/nginx/html

COPY files/wp-config.php /usr/share/nginx/html/wordpress/wp-config.php

COPY files/wordpress.conf /etc/nginx/conf.d/wordpress.conf

COPY files/nginx.conf /etc/nginx/nginx.conf

COPY files/config /etc/selinux/config
CMD systemctl start nginx