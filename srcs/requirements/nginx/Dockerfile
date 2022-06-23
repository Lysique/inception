FROM alpine:3.13

#	Install nginx
RUN apk update && apk add \
	nginx \
	ssl

#	Create mandatory dir to store nginx runtime infos
RUN mkdir -p /run/nginx

#	Replace main nginx config file in container
COPY conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g" ,"daemon off;"]
