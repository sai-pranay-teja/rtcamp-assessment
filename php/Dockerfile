FROM registry.access.redhat.com/ubi8/ubi:8.8
RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
RUN yum --disablerepo="*" --enablerepo="remi-safe" list php[7-9][0-9].x86_64
RUN dnf module enable php:remi-8.0 -y
RUN dnf install php php-cli php-common php-fpm

