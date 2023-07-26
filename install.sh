docker_setup () {
    yum remove -y docker \
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

    yum install -y yum-utils device-mapper-persistent-data lvm2

    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

    yum install docker-ce docker-ce-cli containerd.io -y

    systemctl start docker

}