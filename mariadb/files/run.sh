until sudo mysqladmin -uroot -p123  ping; do
   echo "$(date) - waiting for mysql"
   sleep 3
done

if ! mariadb -uroot -p123 -e -h db -e 'use dbname'; then
   mariadb -uroot -p123 -e "CREATE DATABASE dbname"
fi

exec "$@"

