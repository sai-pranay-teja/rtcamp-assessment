echo 'CREATE USER 'admin'@'%' IDENTIFIED BY '123';'
echo 'grant all privileges on *.* to 'admin'@'%';'
echo 'FLUSH PRIVILEGES';
echo 'CREATE DATABASE db_name;' | mariadb -uadmin -p123
