FROM alpine:3.13

#	Install mariadb and depedencies
RUN apk update && apk add \
	mariadb \
	mariadb-client

COPY conf/conf.sh /tmp/configure.sh

ENTRYPOINT ["sh", "/tmp/configure.sh"]
