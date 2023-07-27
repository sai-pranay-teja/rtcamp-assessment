FROM registry.access.redhat.com/ubi8/ubi:8.8


RUN yum install nginx wget unzip -y


RUN wget https://wordpress.org/latest.zip

RUN wget -O /latest.zip https://wordpress.org/latest.zip

RUN unzip latest.zip

RUN cp /wordpress/wp-config-sample.php /wordpress/wp-config.php

COPY files/wp-config.php /wordpress/wp-config.php



CMD systemctl start nginx