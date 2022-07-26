#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

# 0 desligado, 1 ligado
executa=1

if [ "${executa}" -eq 1 ]; then
    doSeparador "Instalando o nginx..."

    doApt "nginx"

    # pagina com ip da maquina
    cd ..
    echo "<html><h1>Site Funcionando - $(hostname -f)</h1></html>" > /var/www/html/index.html    
fi