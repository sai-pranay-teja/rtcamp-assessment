FROM registry.access.redhat.com/ubi8/ubi:8.8


RUN yum install nginx wget unzip -y



RUN wget -O /usr/share/nginx/html/latest.zip https://wordpress.org/latest.zip

RUN unzip /usr/share/nginx/html/latest.zip

RUN chown -R nginx:nginx /usr/share/nginx/html

RUN chmod -R 775 /usr/share/nginx/html

COPY files/wp-config.php /wordpress/wp-config.php

COPY files/wordpress.conf /etc/nginx/conf.d/wordpress.conf

CMD systemctl start nginx