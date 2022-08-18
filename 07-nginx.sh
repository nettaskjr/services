#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando o nginx..."

doApt "nginx"

# pagina com ip da maquina
cd ..
echo "<html><h1>Site Funcionando - $(hostname -f)</h1></html>" > /var/www/html/index.html 
