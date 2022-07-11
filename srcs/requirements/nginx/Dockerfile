FROM alpine:3.15

#	Install nginx
RUN apk update && apk add \
	nginx \
	openssl

#	openssl configuration
RUN mkdir /etc/nginx/ssl && \
	openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/nginx.key \
	-out /etc/nginx/ssl/nginx.crt \
	-subj "/C=BE/L=Bruxelles/O=19/CN=tamighi.19.be"

#	Create dir for nginx to work for some reasons
RUN mkdir -p /run/nginx

#	Copy config to nginx dir
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY conf/conf.sh /tmp/conf.sh

ENTRYPOINT ["sh", "/tmp/conf.sh"]
