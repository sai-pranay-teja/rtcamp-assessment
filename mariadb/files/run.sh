echo 'grant all privileges on *.* to 'admin'@'%';'| mariadb -uroot -p123
echo 'FLUSH PRIVILEGES;'; | mariadb -uroot -p123
echo 'CREATE DATABASE db_name1;' | mariadb -uadmin -p123
