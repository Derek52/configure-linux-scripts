#!/bin/bash

sudo pacman -Syu --noconfirm

sudo ./arch/install-pacman-packages.sh

sudo pacman -S --noconfirm python python-pip #just in case they get removed from the previous script

sudo pip --upgrade pip

#virtualenvwrapper is useful, and I can't live without youtube-dl. You probbaly don't need the other stuff
sudo pip install \
	youtube-dl \
	virtualenvwrapper \
	flask \
	flask_sqlalchemy \
	django \

#Pacman doesn't clean out the folder where it keeps downloaded packages. It's smart to run this command to clean it out from time to time.
sudo pacman -Sc --noconfirm
