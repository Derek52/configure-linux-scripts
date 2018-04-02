# configure-linux-scripts
I'm in the middle of adding some stuff. This readme is gonna need an update.

This is a few scripts designed to automate the process of installing your desired software, and making a few customization tweaks.
These scripts currently only support ubuntu based distros using the apt package manager. It probably also works on Debian.
I've tested them on Linux Mint, Pop_OS!, and elementaryOS.

This is a work in progress and there are more features I'd like to add to this. I'd also like to add support for other systems like Fedora and Arch based systems, but that will happen at a later date.

Using these scripts is pretty simple. Simply download or clone this repo, and cd into it.

From there run
```
./linux-setup.sh
```

It will then prompt you for a password, and you should be good to go from there.

This script calls a couple other scripts. One is `configure-linux.sh`, which has sudo rights, and installs a ton of software.
`linux-setup.sh` also calls `customize-home.sh` which does some non sudo stuff, like change wallpaper and adds a few directories to the home folder.

`configure-linux.sh` calls a couple of scripts. The big one is `install-apt-packages.sh`.
This script has mulitple `sudo apt install` lines to install different pieces of software. I commented explaing what each set of software is. Comment any lines you don't want and add whatever packages you need.
