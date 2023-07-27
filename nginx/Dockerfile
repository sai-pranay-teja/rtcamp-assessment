FROM nginx

RUN sudo yum install wget unzip -y


RUN wget https://wordpress.org/latest.zip

RUN wget -O /wget.zip https://wordpress.org/latest.zip

RUN unzip latest.zip

RUN cp /wordpress/wp-config-sample.php /wordpress/wp-config.php