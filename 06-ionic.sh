#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

# instalando o nodejs
./05-nodejs.sh

if [ "${executa}" -eq 1 ]; then
    doSeparador "Instalando aplicativos Ionic e Cordova..." 

    npm i -g ionic
    npm i -g cordova
    npm i -g native-run
fi