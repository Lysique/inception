FROM alpine:3.13

#	Install nginx, openssl
RUN apk update && apk add \
	nginx \
	openssl 

#	Create mandatory dir to store runtime infos
#	because it is not set in alpine containers
RUN mkdir -p /run/nginx

#	openssl key and cert gen
RUN mkdir /etc/nginx/ssl && \
	openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/nginx/ssl/nginx.key \
	-out /etc/nginx/ssl/nginx.crt \
	-subj "/C=BE/ST=Bruxelles/L=Bruxelles/O=19/OU=19/CN=tamighi.42.fr/emailAddress=tamighi@student.s19.be"

#	Replace config file
COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

CMD ["nginx", "-g" ,"daemon off;"]
