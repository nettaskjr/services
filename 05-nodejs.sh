#!/bin/bash

. 01-funcoes.sh

doSeparador "Repositorio do NodeJs..."
vs=22

curl -sL https://deb.nodesource.com/setup_${vs}.x | bash -

doSeparador "Instalando o NodeJs..."

doApt "nodejs"