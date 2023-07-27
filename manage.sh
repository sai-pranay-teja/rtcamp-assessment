if [ $1 = "start"]; then
    docker run --name mariadb --env MARIADB_USER=admin --env MARIADB_PASSWORD=123 --env MARIADB_ROOT_PASSWORD=123 pranayroot/mariadb:v1
    docker run -d --name php pranayroot/php:v1
    docker run -d --name nginx pranayroot/nginx:v1



if [ $2 = "load" ]; then
    bash mariadb/files/run.sh
