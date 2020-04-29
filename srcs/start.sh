# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anolivei <anolivei@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/25 14:54:55 by anolivei          #+#    #+#              #
#    Updated: 2020/04/29 02:13:36 by anolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Inicia o nginx, o mysql e o php
/etc/init.d/nginx start
/etc/init.d/mysql start
/etc/init.d/php7.3-fpm start

echo "
                    ##        .            
              ## ## ##       ==            
           ## ## ## ##      ===            
       /""""""""""""""""\___/ ===        
  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~   
       \______ o          __/            
         \    \        __/             
          \____\______/                
 
          |          |
       __ |  __   __ | _  __   _
      /  \| /  \ /   |/  / _\ | 
      \__/| \__/ \__ |\_ \__  |
"
# Deixa o container aberto para mexer nas files
bash
