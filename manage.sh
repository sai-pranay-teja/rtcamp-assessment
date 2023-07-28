DIR="/home/ec2-user/rtcamp-assessment/wordpress-docker"
DIR="${DIR:-"/home/pranay/rtcamp-assessment/wordpress-docker"}"
if [ ! -d "$DIR" ]; then
    mkdir  /home/ec2-user/rtcamp-assessment/wordpress-docker || mkdir /home/pranay/rtcamp-assessment/wordpress-docker
    mkdir wordpress-docker
    cd wordpress-docker
    mkdir public nginx
    mv /home/ec2-user/rtcamp-assessment/default.conf nginx/default.conf
fi




if [ $1 = "start" ]; then
   docker-compose up -d
fi

if [ $1 = "stop" ]; then
   docker-compose down
fi

if [ $1 = "delete" ]; then
   docker network rm $(docker network ls)
   docker volume rm $(docker volume ls)
fi







