# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aaslan <aaslan@student.42kocaeli.com.tr    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/13 09:17:04 by aaslan            #+#    #+#              #
#    Updated: 2024/02/13 10:35:28 by aaslan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all:
	@if ! grep -q 'aaslan\.42\.fr' /etc/hosts; then \
        sudo sed -i '1s/^/127.0.0.1\taaslan.42.fr\n/' /etc/hosts; \
    fi
	@mkdir -p /home/aaslan/data/wordpress
	@mkdir -p /home/aaslan/data/mariadb
	@docker-compose -f srcs/docker-compose.yml up --build

start:
	@docker-compose -f srcs/docker-compose.yml start

stop:
	@docker-compose -f srcs/docker-compose.yml stop

clean:
	@docker-compose -f srcs/docker-compose.yml down --volumes

fclean: clean
	@docker system prune -af
	@sudo sed -i '/127.0.0.1\taaslan\.42\.fr/d' /etc/hosts
	@rm -rf /home/aaslan/data

.PHONY: all start stop clean fclean re
