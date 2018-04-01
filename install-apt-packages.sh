#!/bin/bash

#this file installs a ton of software packages. delete any you don't need, and add whatever you think I missed.
#I don't use all of this software, but I use a lot of it, and I wanted to cover as many bases as possible.
#They are broken into categories for easy readability. This entire script could have been a long one-liner.

#install some programming languages. I have some of these for playing around with. Others are simply here for compiling or running random bits of software I sometimes use.
#None of these take up a bunch of space, but you can delete any you know you'll never need.
sudo apt install -y \
	gobjc++ \
	gcc-multilib \
	gcc \
	g++ \
	clisp \
	nodejs \
	npm \
	valac \
	gfortran \
	fort77

#the fun stuff. A list of graphic software, delete the line for any software you don't need or want. I don't use all of these things, but I tried to cover as many bases as I could.
sudo apt install -y \
	docky \
	firefox \
	chromium-browser \
	deluge \
	gimp \
	inkscape \
	krita \
	blender \
	openscad \
	freecad \
	kicad \
	audacity \
	libreoffice libreoffice-gtk \
	vlc \
	tilda \
	terminology

#super useful commandline tools and utilities. These are what I spend most of my time using.
sudo apt install -y \
	tmux \
	vim \
	ffmpeg \
	mplayer \
	feh \
	wordgrinder \
	htop \
	git \
	xboxdrv \
	screen \
	curl \
	xrandr \
	lolcat #This one is just fun. Test it out with something like "cat *.sh | lolcat"


#python, and some python utilities
sudo apt install -y python3 python3-setuptools python3-dev

#these are essentials for building/compiling certain types of projects. I use these semi-frequently, and would recommend just installing them if you've ever compiled something from source.
#you may need them down the road. I'm lazy and like to just go ahead and install them.
sudo apt install -y make cmake build-essential

#I don't use emacs. But to please Stallman and the church of Emacs, I'm including this here.
sudo apt install -y emacs

#MySQL and utilities. I used to use mysql in my Rails apps.
sudo apt install -y mysql-workbench libmysqlclient-dev mysql-server mysql-utilities libaio1 #libaio1 is a needed library for mysql.

#postgresql and utilities. I use postgresql in my Rails apps.
sudo apt install -y postgresql postgresql-contrib libpq-dev

#this is used for developing gtk3 apps. You may also need it to compile a project from source, if it uses gtk3. I couldn't find a better group to throw this into.
sudo apt install -y libgtk-3-dev

#These are 32 bit compatibility libraries that are needed to develop android apps on a 64bit system.
sudo apt install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386

#requirements for compiling the R programming language. This script doesn't compile the R langauge. But, I compile R on all of my machines, so it was convient for me to put this stuff here.
sudo apt install -y libreadline-dev libcurl4-openssl-dev libpcre3-dev libbz2-dev liblzma-dev libx11-dev libblas-dev xorg-dev #gobjc++ gfortran fort77 curl build-essential # are also all required
