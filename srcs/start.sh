# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anolivei <anolivei@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/25 14:54:55 by anolivei          #+#    #+#              #
#    Updated: 2020/04/25 17:25:24 by anolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Inicia o nginx, o mysql e o php
/etc/init.d/nginx start
/etc/init.d/mysql start
/etc/init.d/php7.3-fpm start
# Linha para monitoramento de logs, matem o servidor ligado
tail -f /var/log/nginx/access.log /var/log/nginx/error.log
