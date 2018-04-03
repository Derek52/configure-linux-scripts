#!/bin/bash

#I have tested this on Fedora only. To my knowledge, it should work on CentOS though.

sudo dnf install -y \
	gcc \
	gcc-c++\
	clisp \
	nodejs \
	npm \

sudo dnf install -y \
	firefox \
	chromium \
	deluge \
	gimp \
	inkscape \
	krita \
	blender \
	openscad \
	freecad \
	kicad \
	audacity \
	libreoffice \
	tilda \
	terminology

sudo dnf install -y \
	tmux \
	vim \
	feh \
	wordgrinder \
	htop \
	git \
	xboxdrv \
	screen \
	curl \
	xrandr \
	#fun fact. FFMPEG isn't in the default fedora repo apparently. That kind of kills fedora for me.

#installs emacs to please Richard Stallman
#sudo dnf install -y emacs

#installs the R programming language. Fedora keeps a more up to date version of R than on Ubuntu, so I don't have to compile it myself.
#sudo dnf install -y R

#installs 32bit compatibility libraries needed to develop android apps on a 64 bit system
#sudo dnf install -y zlib.i686 ncurses-libs.i686 bzip2-libs.i686
