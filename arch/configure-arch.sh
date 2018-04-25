#!/bin/bash

sudo pacman -Syu --noconfirm

sudo ./arch/install-pacman-packages.sh

sudo pacman -S --noconfirm python python-pip #just in case they get removed from the previous script

sudo pip --upgrade pip

#virtualenvwrapper is useful, and I can't live without youtube-dl. You probbaly don't need the other stuff
sudo pip install \
	youtube-dl \
	virtualenvwrapper \
	bash \
	flask \
	flask_sqlalchemy \
	django \

#this requires python3.6/pip3.6 and ubuntu/debian are currently shipping 3.5.x. I'm not sure about fedora. So I just put this here by itself.
sudo pip install git+https://github.com/LazoCoder/Pokemon-Terminal.git

#alsa is installed by default, and is good enough for most users. However, it comes muted.
#I wish I knew why. That's a weird choice to me. This unmutes the master channel
amixer sset Master unmute

#install and set the computer to automatically start the network manager
sudo pacman -S --noconfirm networkmanager
sudo systemctl enable NetworkManager.service

#installs ssh and enables the service. If you are never gonna use ssh, delete this
#it's technically a security risk. It's safe, but if you don't need it, it's an unnecessary risk.
sudo pacman -S --noconfirm openssh
sudo systemctl enable sshd.socket

#Pacman doesn't clean out the folder where it keeps downloaded packages. It's smart to run this command to clean it out from time to time.
sudo pacman -Sc --noconfirm
