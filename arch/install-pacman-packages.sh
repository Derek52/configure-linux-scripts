#!/bin/bash

#installs xorg so you can install a graphical window manager.
sudo pacman -S --no-confirm xorg \
	i3-gaps xfce4 sddm \
	gcc \
	clisp \
	nodejs \
	elixir \
	erlang \
	npm \
	r \
	gcc-fortran \
	python \
	python-pip \
	docky \
	atom \
	firefox \
	chromium \
	deluge \
	gimp \
	inkscape \
	krita \
	blender \
	openscad \
	kicad kicad-library\
	audacity \
	libreoffice-fresh \
	vlc \
	tilda \
	terminology \
	howl \
	tmux \
	vim \
	ffmpeg \
	mplayer \
	feh \
	htop \
	git \
	screen \
	curl \
	wget \
	imagemagick \
	lolcat \
	w3m \
	mpv \
	ranger \
	rsync \
	pulseaudio pavucontrol \
	gvfs-mtp mtpfs \
	avr-gcc avrdude avr-libc \
	opendesktop-fonts \
	scons libxcursor libxinerama libxi libxrandr mesa glu alsa-lib pulseaudio freetype2
	postgresql-libs #needed to install pg gem for rails

sudo systemctl enable sddm.service
