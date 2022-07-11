FROM alpine:3.13

#	Install mariadb and depedencies
RUN apk update && apk add \
	mariadb \
	mariadb-client

RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

EXPOSE 3306

COPY ./conf/conf.sh /tmp/configure.sh

ENTRYPOINT ["sh", "/tmp/configure.sh"]
