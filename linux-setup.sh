#!/bin/bash

if [ -z "$1" ]
then
	echo "Help info"

elif [ "${1,,}" == "ubuntu" ]
then
	./ubuntu/configure-ubuntu.sh

elif [ "{1,,}" == "debian" ]
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
	echo "You are running openSuse"

elif [ "${1,,}" == "solus" ]
then
	echo "You are running Solus"

else
	echo -e "You misspelled your system, or it is not supported."
fi

#this script creates some directories, and does a couple other things that don't take sudo rights.
./customize-home.sh

#these two scripts used to be one. But moving certain things that didn't require sudo rights, into their own script 
#just makes things better.

#This command installs the atom packages I use. It doesn't require sudo rights and is platform agnostic, so I just put it here.
#to add/remove packages that get installed here, just edit the atom-package-list.txt file
#you probably will want to make changes in that file, because some of those packages do have system requirements. For example language-elixir gave me errors until I actually installed elixir on my system.
#obviously comment or delete this line if you didn't install atom.
#running the command "apm list --installed --bare > atom-package-list.txt" will help you easily generate a file like this, on a system where you already have atom set up.
apm install --packages-file atom-package-list.txt


#changes docky icon from the default anchor, to tux the penguin. Copied this from the gentoo wiki
#this needs sudo privileges, so I threw it at the end here. The script will ask for the password one last time, and then go ahead and just do this quick task
wget -O /usr/share/icons/hicolor/scalable/apps/tux.svg http://upload.wikimedia.org/wikipedia/commons/b/b0/NewTux.svg
sudo mv /usr/share/icons/hicolor/128x128/apps/docky.svg /usr/share/icons/hicolor/128x128/apps/docky.svg.backup sudo mv /usr/share/icons/hicolor/48x48/apps/docky.svg /usr/share/icons/hicolor/48x48/apps/docky.svg.backup
sudo ln -s /usr/share/icons/hicolor/scalable/apps/tux.svg /usr/share/icons/hicolor/128x128/apps/docky.svg
sudo ln -s /usr/share/icons/hicolor/scalable/apps/tux.svg /usr/share/icons/hicolor/48x48/apps/docky.svg 
