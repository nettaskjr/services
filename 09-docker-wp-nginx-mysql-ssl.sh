#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

name="docker-wp-nginx-mysql-ssl"
install="${gdir}/${name}"

doSeparador "Instalando ${name}"

#chown "${gusr}.${gusr} ${install}"
cp "${gdir}/arquivos/${name}.yml ${install}/docker-compose.yml"
adduser "${gdir}" docker
cd "${install}"
docker-compose up -d
