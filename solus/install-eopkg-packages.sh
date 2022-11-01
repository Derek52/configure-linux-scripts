#!/bin/bash

#eopkg it = eopkg install

sudo eopkg it -y \
  gcc \
  clisp \
  nodejs \
  r \
  python3 python3-devel

sudo eopkg it -y \
	firefox \
	deluge \
	gimp \
	inkscape \
	krita \
	blender \
	openscad \
	kicad \
	audacity \
	vlc \
	tilda

sudo eopkg it -y \
	tmux \
	vim \
	ffmpeg \
	feh \
	htop \
	git \
	screen \
	curl \
	wget \
	imagemagick \
	w3m \
	mpv \
	ranger \
	youtube-viewer \
	rsync
