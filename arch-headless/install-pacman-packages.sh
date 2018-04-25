#!/bin/bash

sudo pacman -S --noconfirm \
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
	\
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
	lolcat \
	w3m \
	mpv \
	ranger \
	rsync \
	lib32-gcc-libs

#rails stuff
sudo pacman -S --noconfirm nodejs npm imagemagick patch base-devel libffi openssl readline curl git zlib libyaml sqlite libxm12 libxslt libgdm nucrses postgresql postgresql-libs
