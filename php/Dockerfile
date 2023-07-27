FROM registry.access.redhat.com/ubi8/ubi:8.8

RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm

RUN dnf install -y https://rpms.remirepo.net/enterprise/remi-release-8.rpm



RUN dnf module install php:remi-8.0 -y

RUN dnf install php php-mysqlnd php-pdo php-gd php-mbstring php-fpm -y

RUN systemctl start php-fpm


