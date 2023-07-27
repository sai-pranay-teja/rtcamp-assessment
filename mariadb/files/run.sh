


# echo "grant all privileges on *.* to 'admin'@'%' IDENTIFIED BY '123';"| mariadb -uroot -p123


# echo "FLUSH PRIVILEGES;" | mariadb -uroot -p123


# echo "CREATE DATABASE db_name1;" | mariadb -uadmin -p123


# echo "CREATE DATABASE wordpress_db;" | mariadb -uadmin -p123



# echo "GRANT ALL ON wordpress_db.* TO 'admin'@'%' IDENTIFIED BY '123';" | mariadb -uroot -p123

# echo "FLUSH PRIVILEGES;" | mariadb -uadmin -p123

#!/bin/sh

#this is a hack to wait until the DB image is up and the port is open
until mysqladmin -u root -ppassword -e -h db.local ping; do
   echo "$(date) - waiting for mysql"
   sleep 3
done

if ! mariadb -uroot -p123 -e -h db -e 'use dbname'; then
   mariadb -uroot -p123 -e "CREATE DATABASE dbname"
fi

exec "$@"

