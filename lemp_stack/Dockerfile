FROM alpine
RUN apk update && \
    apk add nginx && \
    apk add php-fpm && \
    apk add php-mysqli
ADD files/default.conf /etc/nginx/conf.d/default.conf
COPY files/run.sh /
#ENTRYPOINT [ "bash", "/run.sh" ]
CMD ["/bin/sh", "-c", "/usr/sbin/php-fpm7; exec nginx -g 'daemon off;';"]

WORKDIR /var/www/localhost/htdocs