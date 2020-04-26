# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anolivei <anolivei@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/16 20:31:32 by anolivei          #+#    #+#              #
#    Updated: 2020/04/25 17:24:01 by anolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Baixa e usa a Imagem debian buster (OS) no Dockerhub
FROM debian:buster

# Copia a pasta srcs para a pasta root do container
COPY srcs /root/

# Retira as iteracoes da instalacao
ARG DEBIAN_FRONTEND=noninteractive

# Remove os erros de invoke 
# (couldn't determine current runlevel or restart permission)
RUN printf "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d

# Instala Updates e Tools para o Debian Buster
# Instala wget (para baixar arquivos na internet)
# Executa o ft_config.sh (arquivo para configuracoes gerais)
RUN apt-get update && \
	apt-get install -y --no-install-recommends apt-utils && \
	apt-get -y install wget && \
	bash /root/ft_server-config.sh

# Inicia o nginx, o mysql e o php (no arquivo start.sh)
ENTRYPOINT bash /root/start.sh

# Roda o container por tempo indeterminado
CMD tail -f /dev/null
