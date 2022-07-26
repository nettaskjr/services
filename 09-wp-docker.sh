#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
    doSeparador "Instalando wordpress-docker..."

    mkdir "${gdir}/wordpress-docker"
    cp "${gdir}/arquivos/wordpress-docker-compose.yml ${gdir}/wordpress-docker/docker-compose.yml"
    cd "${gdir}/wordpress-docker"
    docker-compose up -d

fi