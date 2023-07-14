#!/bin/bash

#Atualizando o sistema
apt-get update -y
apt-get upgrade -y

#Instalando o git
apt-get install git -y

#Baixando o repositório
git clone https://github.com/rturatti/prometheus-install.git

#Executando o script de instalação
cd prometheus-install
chmod +x full_installation.sh
./full_installation.sh

echo "Instalação finalizada!"