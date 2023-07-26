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

docker_compose_setup () {
    curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o docker-compose

    mv docker-compose /usr/local/bin && sudo chmod +x /usr/local/bin/docker-compose
    
    ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose 
}