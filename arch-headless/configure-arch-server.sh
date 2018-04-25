#!/bin/bash

sudo pacman -Syu --noconfirm

sudo ./arch-headless/install-pacman-packages.sh

sudo pacman -S --noconfirm python python-pip

sudo pip --upgrade pip

sudo pip install virtualenvwrapper bash flask flask_sqlalchemy django

sudo pacman -S --noconfirm networkmanager
sudo systemctl enable NetworkManager.service

sudo pacman -S --noconfirm openssh
sudo systemctl enable sshd.socket

#This unmutes alsa, which is muted by default. Muting by default makes sense on a server,
#But, I still think it's a weird default choice. This unmutes it.
#I want the option to play mp3's on my server, but you may not need this on your server.
amixer sset Master unmute

sudo pacman -Sc --noconfirm
