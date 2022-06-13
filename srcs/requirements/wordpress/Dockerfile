FROM alpine:3.13

#	install dependencies
RUN apk update && apk add \
	curl \
	php7-fpm

#	install wp-cli for wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
#	make it an executable
RUN chmod +x wp-cli.phar && \
	mv wp-cli.phar /usr/local/bin/wp

COPY conf/conf.sh /tmp/conf.sh

#	configure wordpress
ENTRYPOINT [ "sh", "/tmp/conf.sh"]
