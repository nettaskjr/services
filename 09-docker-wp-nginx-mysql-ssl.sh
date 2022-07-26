#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

name="docker-wp-nginx-mysql-ssl"
install="${gdir}/${name}"

doSeparador "Instalando ${name}"

[ ! -d "${install}" ] && mkdir "${install}"
cp "arquivos/${name}.yml" "${install}/docker-compose.yml"
sudo adduser "${gusr}" docker
cd "${install}"
docker-compose up -d
