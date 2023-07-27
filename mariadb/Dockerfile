FROM mariadb:latest
RUN mysql -uroot -p123 -e "grant all privileges on *.* to 'admin'@'%' IDENTIFIED BY '123';"
RUN mysql -uroot -p123 -e "FLUSH PRIVILEGES;"
RUN mysql -uadmin -p123 -e "CREATE DATABASE wordpress_db;"
RUN mysql -uroot -p123 -e "GRANT ALL ON wordpress_db.* TO 'admin'@'%' IDENTIFIED BY '123';"
RUN mysql -uroot -p123 -e "FLUSH PRIVILEGES;"