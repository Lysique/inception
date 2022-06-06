FROM alpine:3.13

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
COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g" ,"daemon off;"]
