# Server42
Discovering Docker and setting up my first web server

<h1>Comandos Docker

<h6>Docker build -t nome_imagem .<br>
-t Name and optionally a tag in the ‘name:tag’ format<br>
. : a imagem sera salva no mesmo lugar onde o comando e executado<br>
<br>
Docker run --name nome_container -it -p 80:80 -p 443:443 nome_imagem<br>
--name : Assign a name to the container<br>
-p : mapping the “port 8080” of our local machine and the “port 443443” of our local machine<br>
Port 80 : http<br>
Port 443 : https<br>
<br>
Docker container ls -a<br>
Para ver a lista de containers criados<br>
<br>
Docker image<br>
Para ver a lista de imagens criadas<br>
<br>
Docker rm nome_container<br>
Remove container<br>
<br>
Docker rmi nome_imagem<br>
Remove imagem<br>
<br>
Docker kill nome_container<br>
Para desligar o seu container<br>

<h3>Obs:<br>
<h6>Diferença entre Run e cmd : run executado durante a criacao da imagem, cmd executado depois que a imagem foi criada.<br>
127.0.0.1 : e o endereço do protocolo de Internet de loopback (IP) tambem referido como localhost.<br>
<br>
O endereço é usado para estabelecer uma conexão IP com a mesma máquina ou computador que está sendo usado pelo usuário final.<br>

<h1>Links Úteis
 
<h6> 

Docker Documentation<br>
 <a>https://docs.docker.com/get-started/

Explaining Dockerfile<br>
<a>https://www.youtube.com/watch?v=LQjaJINkQXY

Debian Dockerhub<br>
<a>https://hub.docker.com/_/debian

Debian Wiki<br>
<a>https://wiki.debian.org/

Entendendo Nginx<br>
<a>https://www.valuehost.com.br/blog/nginx/

How to configure Nginx<br>
<a>https://www.linode.com/docs/web-servers/nginx/how-to-configure-nginx/

Mariadb-server (sql)<br>
<a>https://mariadb.org/documentation/
<a>https://mariadb.com/kb/en/a-mariadb-primer/

Phpmyadmin config.sample.inc.php<br>
<a>https://github.com/phpmyadmin/phpmyadmin/blob/master/config.sample.inc.php

blowfish_secret no config.sample.inc.php (gerador de blowfish_secret)<br>
<a>https://phpsolved.com/phpmyadmin-blowfish-secret-generator/

Wordpress wp-config-sample.php<br>
<a>https://github.com/WordPress/WordPress/blob/master/wp-config-sample.php

SSL Certificate<br>
<a>https://codefresh.io/docker-tutorial/using-docker-generate-ssl-certificates/
 
Explicação geral (em inglês)<br>
<a>https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster

Explicação geral (em francês)<br>
<a>https://beauvais.me/creer-serveur-web-nginx-php7-maria-db-mysql-debian-9-stretch/

![docker-gif-3](https://user-images.githubusercontent.com/59845902/80297303-46a03e00-8758-11ea-93c6-805c0d36066b.gif)
