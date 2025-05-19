#!/bin/bash

. 01-funcoes.sh

doSeparador "Instalando terraform..."

vs="1.12.0" 
arquivo="terraform_${vs}_linux_amd64.zip" 

wget -c -P "/tmp" "https://releases.hashicorp.com/terraform/${vs}/${arquivo}" 
cd /tmp && unzip ${arquivo} 
sudo mv terraform "/usr/local/bin"
