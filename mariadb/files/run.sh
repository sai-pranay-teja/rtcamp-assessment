echo 'CREATE USER 'admin'@'localhost' IDENTIFIED BY '123';'
echo 'grant all privileges on *.* to 'admin'@'localhost';'
echo 'FLUSH PRIVILEGES';
echo 'CREATE DATABASE db_name1;' | mariadb -uadmin -p123
