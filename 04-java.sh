#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
    doSeparador "Instalando java..."
    vs=17

    doApt "openjdk-${vs}-jdk"
fi