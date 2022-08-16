#!/bin/bash

. 02-funcoes.sh

name="wp-nginx-mysql-ssl"

#informado o domímnio para o nginx
sed -i "s/<<example.com>>/${gdns}/g" "./arquivos/nginx.conf"

doSeparador "Instalando ${name}"

sudo docker-compose -f "arquivos/${name}.yml" up -d
