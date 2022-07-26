#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

name="docker-wp-nginx-mysql-ssl"

doSeparador "Instalando ${name}"

docker-compose -f "arquivos/${name}.yml" up -d
