FROM alpine:3.13

#	Install mariadb and depedencies
RUN apk update && apk add \
	mariadb \
	mariadb-client


RUN chown -R mysql:mysql /var/lib/mysql
RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

EXPOSE 3306

COPY ./conf/mysqlconf.sql /tmp/mysqlconf.sql
COPY ./conf/conf.sh /tmp/conf.sh
ENTRYPOINT ["sh", "/tmp/conf.sh"]
