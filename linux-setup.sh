#!/bin/bash

#this script installs a bunch of software. it handles anything that takes sudo rights.
sudo ./configure-linux.sh

#this script creates some directories, and does a couple other things that don't take sudo rights.
./customize-home.sh

#these two scripts used to be one. But moving certain things that didn't require sudo rights, into their own script 
#just makes things better.
