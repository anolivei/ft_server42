# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    server-config.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: anolivei <anolivei@student.42sp.org>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/04/25 14:23:46 by anolivei          #+#    #+#              #
#    Updated: 2020/04/29 02:12:25 by anolivei         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# Instala o certificado ssl, sql mariadb, nginx, php e modulos php
apt-get install -y openssl \
	mariadb-server \
	nginx \
	php7.3 php-fpm php-mysql php-cli php-mbstring
	
# Cria a pasta localhost que sera o diretorio onde os arquivos serao salvos
mkdir /var/www/localhost

# Retorna para o root
cd /root

# Instalando do  Phpmyadmin
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar -xf phpMyAdmin-5.0.2-english.tar.gz
rm -rf phpMyAdmin-5.0.2-english.tar.gz
mv phpMyAdmin-5.0.2-english /var/www/localhost/phpmyadmin
cp -pr ./config.inc.php /var/www/localhost/phpmyadmin/config.inc.php
cp -pr ./nginx.conf /etc/nginx/sites-available/default
chown -R www-data:www-data /var/www/localhost/phpmyadmin

# Setup do  SSL (C=pais, ST=estado, L=localizacao O=organizacao CN=nome)
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj '/C=BR/ST=SP/L=SP/O=42SP/CN=anolivei' \
	-keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

# Cria a DATABASE e seta uma senha de acesso para o Wordpress (sem senha)
echo "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;" | mysql -u root
mysqladmin --user=root password ""

# Instalando Wordpress
wget https://br.wordpress.org/wordpress-5.3.2-pt_BR.tar.gz
tar -xf wordpress-5.3.2-pt_BR.tar.gz
rm -rf wordpress-5.3.2-pt_BR.tar.gz
cp wp-config.php wordpress/wp-config.php
mv wordpress /var/www/localhost/

#Colocando arquivo que mostra informacoes do php dentro da localhost
mv info.php /var/www/localhost
