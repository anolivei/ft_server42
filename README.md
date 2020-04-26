# Server42
Discovering Docker and setting up my first web server

Docker build -t nome_imagem .
-t Name and optionally a tag in the ‘name:tag’ format
. : a imagem sera salva no mesmo lugar onde o comando e executado

Docker run --name nome_container -it -p 80:80 -p 443:443 nome_imagem
--name : Assign a name to the container
-p : mapping the “port 8080” of our local machine and the “port 443443” of our local machine
Port 80 : http
Port 443 : https

Docker container ls -a
Para ver a lista de containers criados

Docker image
Para ver a lista de imagens criadas

Docker rm nome_container
Docker rmi nome_imagem
Remove container e imagem

Docker kill nome_container
Para desligar o seu container

Obs:
Diferenca entre Run e cmd : run executado durante a criacao da imagem, cmd executado depois que a imagem foi criada.
127.0.0.1 : e o endereco do protocolo de Internet de loopback (IP) tambem referido como localhost .
O endereco e usado para estabelecer uma conexao IP com a mesma maquina ou computador que esta sendo usado pelo usuario final.

Links Uteis
Docker Documentation
https://docs.docker.com/get-started/

Explaining Dockerfile
https://www.youtube.com/watch?v=LQjaJINkQXY

Debian Dockerhub
https://hub.docker.com/_/debian

Debian Wiki
https://wiki.debian.org/

Entendendo Nginx
https://www.valuehost.com.br/blog/nginx/

How to configure Nginx
https://www.linode.com/docs/web-servers/nginx/how-to-configure-nginx/

Mariadb-server (sql)
https://mariadb.org/documentation/
https://mariadb.com/kb/en/a-mariadb-primer/

Phpmyadmin config.sample.inc.php
https://github.com/phpmyadmin/phpmyadmin/blob/master/config.sample.inc.php

blowfish_secret no config.sample.inc.php (gerador de blowfish_secret)
https://phpsolved.com/phpmyadmin-blowfish-secret-generator/

Wordpress wp-config-sample.php
https://github.com/WordPress/WordPress/blob/master/wp-config-sample.php

SSL Certificate
https://codefresh.io/docker-tutorial/using-docker-generate-ssl-certificates/
 
Explicacao geral (em ingles)
https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster

Explicacao geral (em frances)
https://beauvais.me/creer-serveur-web-nginx-php7-maria-db-mysql-debian-9-stretch/

![docker-gif-3](https://user-images.githubusercontent.com/59845902/80297303-46a03e00-8758-11ea-93c6-805c0d36066b.gif)
