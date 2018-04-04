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
