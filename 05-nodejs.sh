#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
    doSeparador "Repositorio do NodeJs..."
    vs=18

    curl -sL https://deb.nodesource.com/setup_${vs}.x | bash -

    doSeparador "Instalando o NodeJs..."

    doApt "nodejs"
fi
