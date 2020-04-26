# Server42
Discovering Docker and setting up my first web server

<h1>Comandos Docker

<h6>Docker build -t nome_imagem .

-t Name and optionally a tag in the ‘name:tag’ format
. : a imagem sera salva no mesmo lugar onde o comando e executado

Docker run --name nome_container -it -p 80:80 -p 443:443 nome_imagem

--name : Assign a name to the container
-p : mapping the “port 8080” of our local machine and the “port 443443” of our local machine
Port 80 : http
Port 443 : https

Docker container ls -a :
Para ver a lista de containers criados

Docker image :
Para ver a lista de imagens criadas

Docker rm nome_container :
Remove container

Docker rmi nome_imagem :
Remove imagem

Docker kill nome_container :
Para desligar o seu container

<h3>Obs:
<h6>Diferença entre Run e cmd : run executado durante a criacao da imagem, cmd executado depois que a imagem foi criada.

127.0.0.1 : e o endereço do protocolo de Internet de loopback (IP) tambem referido como localhost .
O endereço é usado para estabelecer uma conexão IP com a mesma máquina ou computador que está sendo usado pelo usuário final.

<h1>Links Úteis
 
<h6>Docker Documentation <a>https://docs.docker.com/get-started/

Explaining Dockerfile
<a>https://www.youtube.com/watch?v=LQjaJINkQXY

Debian Dockerhub
<a>https://hub.docker.com/_/debian

Debian Wiki
<a>https://wiki.debian.org/

Entendendo Nginx
<a>https://www.valuehost.com.br/blog/nginx/

How to configure Nginx
<a>https://www.linode.com/docs/web-servers/nginx/how-to-configure-nginx/

Mariadb-server (sql)
<a>https://mariadb.org/documentation/
<a>https://mariadb.com/kb/en/a-mariadb-primer/

Phpmyadmin config.sample.inc.php
<a>https://github.com/phpmyadmin/phpmyadmin/blob/master/config.sample.inc.php

blowfish_secret no config.sample.inc.php (gerador de blowfish_secret)
<a>https://phpsolved.com/phpmyadmin-blowfish-secret-generator/

Wordpress wp-config-sample.php
<a>https://github.com/WordPress/WordPress/blob/master/wp-config-sample.php

SSL Certificate
<a>https://codefresh.io/docker-tutorial/using-docker-generate-ssl-certificates/
 
Explicação geral (em ingles)
<a>https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster

Explicação geral (em frances)
<a>https://beauvais.me/creer-serveur-web-nginx-php7-maria-db-mysql-debian-9-stretch/

![docker-gif-3](https://user-images.githubusercontent.com/59845902/80297303-46a03e00-8758-11ea-93c6-805c0d36066b.gif)
