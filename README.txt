{\rtf1\ansi\ansicpg1252\cocoartf1671\cocoasubrtf600
{\fonttbl\f0\fswiss\fcharset0 ArialMT;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red0\green0\blue0;\red110\green5\blue2;
\red52\green0\blue71;\red18\green79\blue146;\red0\green0\blue233;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\csgray\c0\c0;\cssrgb\c51239\c6511\c0;
\cssrgb\c26879\c5470\c34975;\cssrgb\c7059\c39216\c63922;\cssrgb\c0\c0\c93333;}
\paperw11900\paperh16840\margl1440\margr1440\vieww12820\viewh12900\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\qc\partightenfactor0

\f0\fs36 \cf2 \cb3 Comandos Docker\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\fs24 \cf2 \

\fs28 Docker build -t \cf4 nome_imagem\cf2  .
\fs24 \

\fs20 -t Name and optionally a tag in the \'91name:tag\'92 format\
. : a imagem sera salva no mesmo lugar onde o comando e executado
\fs24 \
\

\fs28 Docker run --name \cf5 nome_container\cf2  -it -p 80:80 -p 443:443 \cf4 nome_imagem
\fs24 \cf2 \

\fs20 --name : Assign a name to the container\
-p : mapping the \'93port 8080\'94 of our local machine and the \'93port 443443\'94 of our local machine\
Port 80 : http\
Port 443 : https
\fs24 \
\

\fs28 Docker container ls -a
\fs24 \

\fs20 Para ver a lista de containers criados
\fs24 \
\

\fs28 Docker image
\fs24 \

\fs20 Para ver a lista de imagens criadas
\fs24 \
\

\fs28 Docker rm \cf5 nome_container\cf2 \
Docker rmi \cf4 nome_imagem\

\fs20 \cf2 Remove container e imagem
\fs24 \
\

\fs28 Docker kill \cf5 nome_container\cf2 \

\fs20 Para desligar o seu container
\fs24 \
\

\fs28 Obs:
\fs24 \
Diferenca entre Run e cmd : run executado durante a criacao da imagem, cmd executado depois que a imagem foi criada.\
127.0.0.1 : \expnd0\expndtw0\kerning0
e o endereco do protocolo de Internet de loopback (IP) tambem referido como localhost .\
O endereco e usado para estabelecer uma conexao IP com a mesma maquina ou computador que esta sendo usado pelo usuario final.\
\
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\qc\partightenfactor0

\fs36 \cf2 Links Uteis
\fs24 \
\pard\pardeftab720\sl280\partightenfactor0
\cf2 Docker Documentation\
\pard\pardeftab720\sl340\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://docs.docker.com/get-started/"}}{\fldrslt \cf2 https://docs.docker.com/get-started/}}\
\pard\pardeftab720\sl280\partightenfactor0
\cf2 \
Explaining Dockerfile\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://www.youtube.com/watch?v=LQjaJINkQXY"}}{\fldrslt \cf2 https://www.youtube.com/watch?v=LQjaJINkQXY}}\
\
Debian Dockerhub\
\pard\pardeftab720\sl340\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://hub.docker.com/_/debian"}}{\fldrslt \cf2 https://hub.docker.com/_/debian}}\
\
Debian Wiki\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://wiki.debian.org/"}}{\fldrslt \cf2 https://wiki.debian.org/}}\
\pard\pardeftab720\sl340\partightenfactor0
\cf2 \
\pard\pardeftab720\sl280\partightenfactor0
\cf2 Entendendo Nginx\
\pard\pardeftab720\sl340\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://www.valuehost.com.br/blog/nginx/"}}{\fldrslt \cf2 https://www.valuehost.com.br/blog/nginx/}}\
\
How to configure Nginx\
\pard\pardeftab720\sl340\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://www.linode.com/docs/web-servers/nginx/how-to-configure-nginx/"}}{\fldrslt \cf2 https://www.linode.com/docs/web-servers/nginx/how-to-configure-nginx/}}\
\
Mariadb-server (sql)\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://mariadb.org/documentation/"}}{\fldrslt \cf2 https://mariadb.org/documentation/}}\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://mariadb.com/kb/en/a-mariadb-primer/"}}{\fldrslt \cf2 https://mariadb.com/kb/en/a-mariadb-primer/}}\
\pard\pardeftab720\sl340\partightenfactor0
\cf2 \
Phpmyadmin config.sample.inc.php\
\pard\pardeftab720\sl340\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://github.com/phpmyadmin/phpmyadmin/blob/master/config.sample.inc.php"}}{\fldrslt \cf2 https://github.com/phpmyadmin/phpmyadmin/blob/master/config.sample.inc.php}}\
\
\pard\pardeftab720\sl420\partightenfactor0
\cf2 blowfish_secret no config.sample.inc.php (gerador de blowfish_secret)\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://phpsolved.com/phpmyadmin-blowfish-secret-generator/"}}{\fldrslt \cf2 https://phpsolved.com/phpmyadmin-blowfish-secret-generator/}}\
\pard\pardeftab720\sl340\partightenfactor0
\cf2 \
Wordpress wp-config-sample.php\
\pard\pardeftab720\sl340\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://github.com/WordPress/WordPress/blob/master/wp-config-sample.php"}}{\fldrslt \cf2 https://github.com/WordPress/WordPress/blob/master/wp-config-sample.php}}\
\
SSL Certificate\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://codefresh.io/docker-tutorial/using-docker-generate-ssl-certificates/"}}{\fldrslt \cf2 https://codefresh.io/docker-tutorial/using-docker-generate-ssl-certificates/}}\
 \
Explicacao geral (em ingles)\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster"}}{\fldrslt \cf2 https://www.linuxbabe.com/debian/install-lemp-stack-debian-10-buster}}\
\
Explicacao geral (em frances)\
\pard\pardeftab720\sl280\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://beauvais.me/creer-serveur-web-nginx-php7-maria-db-mysql-debian-9-stretch/"}}{\fldrslt \cf2 https://beauvais.me/creer-serveur-web-nginx-php7-maria-db-mysql-debian-9-stretch/}}}