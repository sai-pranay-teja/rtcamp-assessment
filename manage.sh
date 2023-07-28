mkdir wordpress-docker
cd wordpress-docker
mkdir public nginx
mv ./default.conf nginx/default.conf


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







