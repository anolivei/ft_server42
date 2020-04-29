# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    autoindex.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anolivei <anolivei@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/29 02:14:37 by anolivei          #+#    #+#              #
#    Updated: 2020/04/29 03:13:56 by anolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Especifica onde esta a nginx_file
nginx_file='/etc/nginx/sites-available/default'

# Procura a frase "autoindex on;" em nginx_file e nao faz nada
grep "autoindex on;" "$nginx_file" > /dev/null

# Se a frase for encontrada, printa a frase que esta on, substitui on 
#dentro do arquivo de por  off e autoindex recebe off
if [ $? -eq 0 ]; then
	echo "O atual estado e:  autoindex ON"
	sed -i 's/autoindex on/autoindex off/' "$nginx_file"
	autoindex="OFF";

# Se a frase nao for encontrada, printa a frase que esta off, substitui off 
# dentro do arquivo off por on e autoindex recebe on
else
	echo "O atual estado e: autoindex OFF"
	sed -i "s/autoindex off/autoindex on/" "$nginx_file"
	autoindex="ON";
fi

# Printa a frase de reinicio do server e reinicia o serveridor
echo "Alterando o estado do autoindex e reiniciando o servidor..."
/etc/init.d/nginx restart
# Printa autoindex (status do server)
echo -e "O autoindex agora esta $autoindex!"
