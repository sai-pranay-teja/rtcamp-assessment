FROM ubuntu:20.04
RUN apt install nginx -y
RUN apt install mysql-server -y
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:ondrej/php -y
RUN apt install php8.1-fpm php8.1-mysql -y
COPY files/default.conf /etc/nginx/conf.d/default.conf
