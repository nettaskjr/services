#!/bin/bash

#. 02-funcoes.sh

doSeparador "Instalando aws-cli..."

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip" 
unzip /tmp/awscliv2.zip -d /tmp
sudo /tmp/aws/install 
