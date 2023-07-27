echo "grant all privileges on *.* to 'admin'@'%' IDENTIFIED BY '123';"| mariadb -uroot -p123


echo "FLUSH PRIVILEGES;" | mariadb -uroot -p123


echo "CREATE DATABASE db_name1;" | mariadb -uadmin -p123


echo "CREATE DATABASE wordpress_db;" | mariadb -uadmin -p123



echo "GRANT ALL ON wordpress_db.* TO 'admin'@'%' IDENTIFIED BY '123';" | mariadb -uroot -p123

echo "FLUSH PRIVILEGES;" | mariadb -uadmin -p123



