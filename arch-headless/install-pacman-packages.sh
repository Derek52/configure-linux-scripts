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
	lib32-gcc-libs \
	patch base-devel libffi openssl readline curl git zlib libyaml sqlite libxm12 libxslt libgdm nucrses postgresql postgresql-libs

#This list of packages is needed for developing ruby on rails applications. You can delete them from the command above, if you don't need them.
#nodejs npm imagemagick patch base-devel libffi openssl readline curl git zlib libyaml sqlite libxm12 libxslt libgdm nucrses postgresql postgresql-libs
