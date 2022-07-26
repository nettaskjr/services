#!/bin/bash

. 01-var.sh
. 02-funcoes.sh

doSeparador "Repositorio do Vault..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add -
echo "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" >> /etc/apt/sources.list.d/vault.list

doSeparador "Instalando o Vault..."

doApt "vault"

# configuracao padrão usando como backend a pasta /home/xxx/data/
data="${ghome}/data"
mkdir -p "${data}" && chown "${gusr}.${gusr}" "${data}"

# copiando o arquivo de configuracao para /home
cp "$(pwd)/arquivos/vault-server.hcl" "${ghome}"
sed -i "s/<<SITE>>/${gdns}/g" "${ghome}/vault-server.hcl"
sed -i "s/<<USER>>/${gusr}/g" "${ghome}/vault-server.hcl"
#chown "${gusr}.${gusr}" "${ghome}/vault-server.hcl"

# copiando o arquivo do servico
arq="$(pwd)/arquivos/vault.service"
cp "${arq}" "/etc/systemd/system/vault.service"
sed -i "s/<<USER>>/${gusr}/g" "/etc/systemd/system/vault.service"

# configurar o cliente do Vault para conversar com o server
export VAULT_ADDR='http://127.0.0.1:8200'

# comandos a serem usados apos tudo ter corrido bem
# $ sudo systemctl enable vault.service (inciando com o servidor)
# $ sudo systemctl start vault.service
# $ sudo systemctl status vault.service

# $ sudo systemctl stop vault.service
