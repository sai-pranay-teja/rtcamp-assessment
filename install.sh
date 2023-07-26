docker(){
    yum remove docker \
               docker-client \
               docker-client-latest \
               docker-common \
               docker-latest \
               docker-latest-logrotate \
               docker-logrotate \
               docker-engine \
               podman \
               runc


    rm -rf /var/lib/docker/*

    yum install -y yum-utils

    yum-config-manager --add-repo https://download.docker.com/linux/rhel/docker-ce.repo

    systemctl start docker

}