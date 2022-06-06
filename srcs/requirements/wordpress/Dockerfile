FROM alpine:3.13

#	install dependencies
RUN apk update && apk add \
	curl

#	install WP-CLI for wordpress
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

#	move wp-cli executable into PATH
RUN chmod +x wp-cli.phar && /
	mv wp-cli.phar /usr/local/bin/wp

#	configuration

#	Download latest wp file
RUN wp core download
