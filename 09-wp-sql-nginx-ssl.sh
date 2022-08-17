#!/bin/bash

. 02-funcoes.sh

name="wp-sql-nginx-ssl"

doSeparador "Instalando ${name}"

sudo docker-compose -f "arquivos/${name}.yml" up -d
