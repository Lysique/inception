# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tamighi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/31 13:45:49 by tamighi           #+#    #+#              #
#    Updated: 2022/06/23 10:04:48 by tamighi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: stop load

load:
	docker-compose -f ./srcs/docker-compose.yml up -d --build

stop:
	docker-compose -f ./srcs/docker-compose.yml down

prune: stop
	docker system prune -af
	rm -rf srcs/data
	rm -rf srcs/wordpress
