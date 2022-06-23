FROM alpine:3.13

#	Install mariadb and depedencies
RUN apk update && apk add \
	mariadb \
	mariadb-client

COPY ./conf/conf.sh /tmp/conf.sh

RUN mkdir -p /run/mysqld
RUN chown -R mysql:mysql /run/mysqld

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/conf.sh"]
