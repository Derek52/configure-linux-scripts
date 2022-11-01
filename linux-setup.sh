#!/bin/bash

if [ -z "$1" ]
then
	echo "Help info"

elif [ "${1,,}" == "ubuntu" ] || [ "${1,,}" == "elementary" ]
then
	./ubuntu/configure-ubuntu.sh

elif [ "${1,,}" == "ubuntu-rails" ]
then
	./ubuntu-headless/setupRailsServer.sh

elif [ "${1,,}" == "ubuntu-tiny" ]
then
	./ubuntu-headless/setupPythonServer.sh

elif [ "${1,,}" == "debian" ]
then
	./debian/configure-debian.sh

elif [ "${1,,}" == "fedora" ]
then
	./fedora/configure-fedora.sh

elif [ "${1,,}" == "arch" ]
then
	./arch/configure-arch.sh

elif [ "${1,,}" == "opensuse" ]
then
	"You are running openSuse"

elif [ "${1,,}" == "solus" ]
then
	./solus/configure-solus.sh

else
	echo -e "You misspelled your system, or it is not supported."
fi

#this script creates some directories, and does a couple other things that don't take sudo rights.
./customize-home.sh

#these two scripts used to be one. But moving certain things that didn't require sudo rights, into their own script 
#just makes things better.

#make sure npm is at the latest possible version. Requires you to have installed nodejs.

sudo npm install npm -g

#changes docky icon from the default anchor, to tux the penguin. I found this in the gentoo wiki, and it's a beautiful improvement imo
#this needs sudo privileges, so I threw it at the end here. The script will ask for the password one last time, and then go ahead and just do this quick task
sudo mv graphics/tux.svg /usr/share/icons/hicolor/scalable/apps/tux.svg
sudo mv /usr/share/icons/hicolor/128x128/apps/docky.svg /usr/share/icons/hicolor/128x128/apps/docky.svg.backup
sudo mv /usr/share/icons/hicolor/48x48/apps/docky.svg /usr/share/icons/hicolor/48x48/apps/docky.svg.backup
sudo ln -s /usr/share/icons/hicolor/scalable/apps/tux.svg /usr/share/icons/hicolor/128x128/apps/docky.svg
sudo ln -s /usr/share/icons/hicolor/scalable/apps/tux.svg /usr/share/icons/hicolor/48x48/apps/docky.svg 
