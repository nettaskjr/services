#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando oci-cli..."

bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
