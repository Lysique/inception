# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tamighi <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/31 13:45:49 by tamighi           #+#    #+#              #
#    Updated: 2022/06/06 14:23:03 by tamighi          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all: stop load

load:
	cd srcs && \
	docker-compose up -d --build

stop:
	cd srcs && \
	docker-compose down

prune: stop
	docker system prune -af
