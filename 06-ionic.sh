#!/bin/bash

. 01-funcoes.sh

# instalando o nodejs
./05-nodejs.sh

doSeparador "Instalando aplicativos Ionic e Cordova..." 

npm i -g ionic
npm i -g cordova
npm i -g native-run
