#!/bin/bash

reset='\033[0m'
black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
white='\033[0;37m'
     [

install_Dependencies(){
    sudo apt-get update
    sudo apt-get upgrade
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    apt -y install nodejs
    apt -y install tar unzip make gcc g++ python
}

install_dockerDependecies(){
    sudo apt-get update
    sudo apt-get upgrade
     sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88

}


install_docker(){

sudo apt-get update
sudo apt-get install docker-ce=18.03.0.ce



}
install_daemon(){
    mkdir -p /srv/daemon /srv/daemon-data
       cd /srv/daemon
       curl -Lo daemon.tar.gz https://github.com/pterodactyl/daemon/releases/download/v0.5.5/daemon.tar.gz
       tar --strip-components=1 -xzvf daemon.tar.gz
       npm install --only=production
       sudo nano /srv/daemon/config/core.json





}






clear
echo -e "

Welcome To Pterodactyl Daemon Installer

This In Alpha Any Issues just report it on Github ready to fix! ;)
This was only made for Ubuntu 16.04 CentOS Version will be out soon.
${red} This IN ALPHA Before this make sure to create a  node in your Pterodactyl Panel
after THIS INSTALL make sure to make a core.json file.
${blue} For The Option 4 You need to already have made a node. and get your  configuration file copy pasted and paste it at the end.


[1]Install Dependencies
[2] Install Dependencies+(dockerDependecies)
[3]Install Dependencies Docker and Docker Dependencies
[4] Install Pterodactyl Daemon


${blue} For The Optionin


 case $software in

   1)
   clear
   install_Dependencies
   ;;

   2)
   install_Dependencies
   install_dockerDependecies
   ;;

   3)
     install_dockerDependecies
     install_docker
   ;;
   4)
install_daemon

;;
   



