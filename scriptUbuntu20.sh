#!/bin/bash

# Autor: Matheus Levorato Nagatsuka
# Versao do Sistema: Ubuntu 20.04 LTS
 
# Executando o script
# sudo chmod +x scriptUbuntu20.sh
# ./scriptUbuntu20.sh

#anydesk deve ser instalado via root 
# wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
# echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
# apt update
# apt install anydesk

# Atualizando repositorios e atualizando o sistema operacional 
sudo apt-get update
sudo apt-get -y upgrade

#instalando pacotes essenciais
sudo apt-get -y -f install curl
sudo apt-get -y -f install git
sudo apt-get -y -f install build-essential
sudo apt-get -y -f install wget gpg
sudo apt-get -y -f install unzip

#instalando vscode

sudo snap install --classic code

#instalando chrome 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

#instalando mysqlWorkbench
sudo snap install mysql-workbench-community 

#instalando Discord
wget "https://discordapp.com/api/download?platform=linux&format=deb" -O discord.deb
sudo dpkg -i discord.deb
rm discord.deb

#Atualizando dependencias 
sudo apt-get install -f
