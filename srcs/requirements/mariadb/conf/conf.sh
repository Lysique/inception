chown -R mysql:mysql /run/mysqld
mysql_install_db --user=mysql \
	--datadir=/var/lib/mysql

mysqld --user=mysql << EOF

CREATE DATABASE $MYSQL_DATABASE;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED by '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;

