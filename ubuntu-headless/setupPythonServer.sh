#!/bin/bash

#this sets up a ubuntu server with python and some dev tools. I don't need a lot of extra fluff on this server

sudo apt update
sudo apt upgrade -y

sudo apt install -y \
	gcc-multilib \
	gcc \
	g++ \
	tmux \
	vim \
	htop \
	git \
	screen \
	curl \
	wget
	ssh \
	rsync \
	python3 python3-setuptools python3-dev \
	make cmake build-essential
