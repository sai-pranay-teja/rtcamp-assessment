FROM registry.access.redhat.com/ubi8/ubi:8.8
RUN yum install mariadb-server mariadb
RUN systemctl start mariadb
RUN mysql -e "ALTER USER 'root'@'%' IDENTIFIED BY '123'
COPY files/run.sh /
# ENTRYPOINT [ "bash", "/run.sh" ]



