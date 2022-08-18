#!/bin/bash

#. 02-funcoes.sh

doSeparador "Instalando terraform..."

vs="1.2.5" 
arquivo="terraform_${vs}_linux_amd64.zip" 

wget -c -P "/tmp" "https://releases.hashicorp.com/terraform/${vs}/${arquivo}" 
cd /tmp && unzip ${arquivo} 
sudo mv terraform "/usr/local/bin"
