#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando java..."
vs=17

doApt "openjdk-${vs}-jdk"