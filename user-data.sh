#!/bin/bash

#Atualizando o sistema
apt-get update -y
apt-get upgrade -y

#Setart timezone São Paulo
timedatectl set-timezone America/Sao_Paulo

#Instalando o git
apt-get install git -y

#Baixando o repositório
git clone https://github.com/rturatti/prometheus-install.git /tmp/prometheus-install

#Executando o script de instalação
cd /tmp/prometheus-install
chmod +x full_installation.sh
chmod +x *.sh
./full_installation.sh

echo "Instalação finalizada!"