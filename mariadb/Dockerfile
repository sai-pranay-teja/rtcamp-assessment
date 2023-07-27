FROM registry.access.redhat.com/ubi8/ubi:8.8
RUN yum localinstall mysql80-community-release-el8-1.noarch.rpm
RUN yum repolist enabled | grep "mysql.*-community.*"
RUN yum install mysql-community-server
RUN yum-config-manager --disable mysql57-community
RUN yum-config-manager --enable mysql56-community
RUN systemctl status mysqld.service
RUN echo "UPDATE mysql.user SET Password=PASSWORD('123') WHERE User='root';"| mysql -uroot -p123
RUN echo "DELETE FROM mysql.user WHERE User='';"| mysql -uroot -p123
RUN echo "DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');"| mysql -uroot -p123
RUN echo "DROP DATABASE IF EXISTS test;"| mysql -uroot -p123
RUN echo "DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';"| mysql -uroot -p123
RUN echo "FLUSH PRIVILEGES;"| mysql -uroot -p123
RUN systemctl restart mysqld.service
COPY files/run.sh /
# ENTRYPOINT [ "bash", "/run.sh" ]



