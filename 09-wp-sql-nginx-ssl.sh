#!/bin/bash

. 02-funcoes.sh

file="wp-sql-nginx-ssl"

doSeparador "Instalando ${file}"

# atualiza as informações para geração do certificado SSL
sed -i "s/<<EMAIL>>/${geml}/g" "${file}"
sed -i "s/<<HOST>>/${gdns}/g" "${file}"
sed -i "s/<<HOST>>/${gdns}/g" "${file}"

sudo docker-compose -f "arquivos/${file}.yml" up -d
