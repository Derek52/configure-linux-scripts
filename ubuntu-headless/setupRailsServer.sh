#!/bin/bash

#This is from the Yarn website (yarnpkg.com) and basically just lets us run "apt install yarn"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list


sudo apt update
sudo apt upgrade -y

#This file installs a bunch of stuff to setup an Ubuntu server for hosting a ruby on rails web app.

#my preferred ruby manager. I used to use rvm. That was a mistake. Rbenv > rvm
sudo apt install -y rbenv

sudo apt install -y build-essential dirmngr gnupg ruby ruby-dev zlib1g-dev libruby libssl-dev libpcre3-dev libcurl4-openssl-dev rake ruby-rack

sudo apt install -y \
	gcc-multilib \
	gcc \
	g++ \
	nodejs \
	npm \
	tmux \
	vim \
	htop \
	git \
	screen \
	curl \
	wget
	ssh \
	rsync

sudo apt install -y python3 python3-setuptools python3-dev

#these are requirements for installing ruby/rails. RVM installs these automatically, but this step still saves me time
sudo apt install -y autoconf automake bison libffi-dev libgdbm-dev libncurses5-dev libsqlite3-dev libtool libyaml-dev sqlite3 libgmp-dev

sudo apt install -y yarn #install yarn

#these are essentials for building/compiling certain types of projects. I use these semi-frequently, and would recommend just installing them if you've ever compiled something from source.
#you may need them down the road. I'm lazy and like to just go ahead and install them.
sudo apt install -y make cmake build-essential

#postgresql and utilities. I use postgresql in my Rails apps.
sudo apt install -y postgresql postgresql-contrib libpq-dev
