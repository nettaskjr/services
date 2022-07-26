#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
    doSeparador "Instalando wordpress-docker..."

    mkdir "${gdir}/wp-docker"
    cp "${gdir}/arquivos/wp-docker-compose.yml ${gdir}/wp-docker/docker-compose.yml"
    cd "${gdir}/wp-docker"
    docker-compose up -d

fi