# ft_server42
Discovering Docker and setting up my first web server.

<h1>Comandos Docker

<h6>docker build -t nome_imagem .<br>
-t : cria um nome para a imagem<br>
. : a imagem será salva no mesmo lugar onde o comando e executado<br>
<br>
docker run --name nome_container -it -p 80:80 -p 443:443 nome_imagem<br>
--name : cria um nome para o container<br>
-p : mapeia as portas “port 80:80” e “port 443:443” para o localhost<br>
Port 80: http<br>
Port 443: https<br>
<br>
docker container ls -a<br>
Para ver a lista de containers criados<br>
<br>
docker images<br>
Para ver a lista de imagens criadas<br>
<br>
docker rm nome_container<br>
Remove container<br>
<br>
docker rm $(docker ps -aq)<br>
Remove todos os containers existentes<br>
<br>
docker rmi nome_imagem<br>
Remove imagem<br>
<br>
docker rmi $(docker images -q)<br>
Remove todas as imagens existentes<br>
<br>
docker kill nome_container<br>
Para desligar o seu container<br>
<br>
<h3>Obs:<br>
<h6> 
Para alterar o autoindex, executar o seguinte comando no terminal (onde o container está rodando):<br>
bash root/autoindex.sh<br>
<br>
Acessar o endereço 127.0.0.1 ou localhost no navegador, que é o endereço do protocolo de Internet de loopback (IP). O endereço é usado para estabelecer uma conexão IP com a mesma máquina ou computador que está sendo usado pelo usuário final.<br>
<br>
Na VMLinux da 42, o nginx da própria VM está ocupando a porta 80:80.<br>
Para verificar os serviços ligados (+) e desligados (-): service --status-all<br>
Se o nginx estiver ligado: service nginx stop<br>
<br>
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
