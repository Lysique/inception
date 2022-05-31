FROM alpine:3.13

#	Install nginx
RUN apt-get update && apt-get install-y \
	nginx \

#	Copy config to Docker dir

#COPY conf/nginx.conf /etc/nginx/nginx.conf

#	Directory for html files

#	Backup original nginx.conf file

#	Configure nginx to listen to port 8 and process html files

EXPOSE 443

CMD ["nginx", "-g" ,"daemon off;"]
