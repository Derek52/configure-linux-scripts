#!/bin/bash
#this installs pip and some pip packages. I can't live without youtube-dl. You probably don't need the other ones.

#python3 is installed in the install-apt script. But, I put it here, just in case that line gets changed.
sudo apt install python3 python3-setuptools

sudo easy_install3 pip

sudo pip install --upgrade pip

sudo pip install \
	youtube-dl \
	virtualenvwrapper \
	flask \
	flask_sqlalchemy \
	django \
	mysqclient
