#!/bin/bash

#installs these just incase they were accidentally removed from the install-apt-packages script
sudo apt install python3 python3-setuptools

#this installs pip and some pip packages. I can't live without youtube-dl. You probably don't need the other ones.

sudo easy_install3 pip

pip install --upgrade pip

pip install \
	youtube-dl \
	virtualenvwrapper \
	flask \
	flask_sqlalchemy \
	django \
	mysqclient
