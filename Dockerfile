# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anolivei <anolivei@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/16 20:31:32 by anolivei          #+#    #+#              #
#    Updated: 2020/04/29 02:07:47 by anolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Baixa e usa a Imagem debian buster (OS) no Dockerhub
FROM debian:buster

# Copia a pasta srcs para a pasta root do container
COPY srcs /root/

# Retira as iteracoes da instalacao
# deixando a instalacao mais rapida
ARG DEBIAN_FRONTEND=noninteractive

# Remove os erros de invoke 
# (couldn't determine current runlevel or restart permission)
# sem isso o wordpress nao sobe xD
RUN printf "#!/bin/sh\nexit 0" > /usr/sbin/policy-rc.d

# Instala Updates e Tools para o Debian Buster
# Instala wget (para baixar arquivos na internet)
# Executa o ft_config.sh (arquivo para configuracoes gerais)
RUN apt-get update && \
	apt-get upgrade -u && \
	apt-get -y install wget && \
	bash /root/server-config.sh

# Inicia o nginx, o mysql e o php (no arquivo start.sh)
# e liga o bash para encontrar e executar files no container
ENTRYPOINT bash /root/start.sh

# Roda o container por tempo indeterminado
CMD tail -f /dev/null
