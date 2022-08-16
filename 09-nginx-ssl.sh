#!/bin/bash

. 02-funcoes.sh

name="nginx-ssl"

doSeparador "Instalando ${name}"

sudo docker-compose -f "arquivos/${name}.yml" up -d
