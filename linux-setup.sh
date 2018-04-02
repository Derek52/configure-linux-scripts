#!/bin/bash

if [ -z "$1" ]
then
	echo "Help info"

elif [ "${1,,}" == "ubuntu" ] || [ "${1,,}" == "debian" ]
then
	./ubuntu/configure-linux.sh

elif [ "${1,,}" == "fedora" ]
then
	echo "You are running Fedora"

elif [ "${1,,}" == "arch" ]
then
	echo "You are running Arch"

elif [ "${1,,}" == "opensuse" ]
then
	echo "You are running openSuse"

elif [ "${1,,}" == "solus" ]
then
	echo "You are running Solus"

else
	echo -e "You misspelled your system, or it is not supported.\nIf you are using something Ubuntu based, like Linux Mint, type \"Ubuntu\""
fi

#this script creates some directories, and does a couple other things that don't take sudo rights.
./customize-home.sh

#these two scripts used to be one. But moving certain things that didn't require sudo rights, into their own script 
#just makes things better.
