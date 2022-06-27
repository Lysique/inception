mysql_install_db --basedir=/usr --datadir=/var/lib/mysql --user=mysql --rpm

mysqld --user=mysql --bootstrap < /tmp/mysqlconf.sql

# allow remote connections
sed -i "s|skip-networking|# skip-networking|g" /etc/my.cnf.d/mariadb-server.cnf
sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

exec mysqld --user=mysql --console
