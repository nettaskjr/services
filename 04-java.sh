#!/bin/bash

. 02-funcoes.sh

doSeparador "Instalando java..."
vs=17

doApt "openjdk-${vs}-jdk"