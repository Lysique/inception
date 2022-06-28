FROM alpine:3.13

#	Install mariadb and depedencies
RUN apk update && apk add \
	mariadb \
	mariadb-client

#	Mandatory run folder
RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

#RUN chown -R mysql:mysql /var/lib/mysql

EXPOSE 3306

#	Exec at start
COPY ./conf/conf.sh /tmp/conf.sh

#	Sql conf (used in conf.sh)
COPY ./conf/mysqlconf.sql /tmp/mysqlconf.sql

ENTRYPOINT ["sh", "/tmp/conf.sh"]
