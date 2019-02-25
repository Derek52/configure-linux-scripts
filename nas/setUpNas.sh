#!/bin/bash
#this script installs and configures a headless Debian(should work on Ubuntu and other derivates) server. There's nothing really fancy going on here.
#this script mainly just installs Samba, and creates some directories to put my stuff
sudo apt update && sudo apt upgrade -y

sudo apt install -y samba vim rsync openssh-server

#you will not need the client, if you don't plan to have your NAS connect to other Samba shares
#sudo apt install -y smbclient

#other utilities you may not need on a NAS, but I use them for things

sudo apt install -y screen tmux htop

mkdir ~/Art ~/Battles ~/Books ~/Movies ~/Music ~/Music\ Videos ~/Pictures ~/Television 
