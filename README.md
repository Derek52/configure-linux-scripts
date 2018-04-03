# configure-linux-scripts
I'm in the middle of adding some stuff. This readme is gonna need an update.

This is a few scripts designed to automate the process of installing your desired software, and making a few customization tweaks.

Using these scripts is pretty simple. Simply download or clone this repo, and cd into it.

From there run the linux-setup script and type in your operating system. That would look like this
```
./linux-setup.sh debian
```

It will then prompt you for a password, and you should be good to go from there.

This script calls a couple other scripts. One is `configure-linux.sh`, which has sudo rights, and installs a ton of software. There are multiple `configure-linux` scripts. `linux-setup.sh` will call the configure-linux script, from inside the folder, of the system you are using. 

For example
```
./linux-setup.sh Fedora
```
will call `fedora/configure-linux.sh`

You can simply delete the folders for any OS you aren't using.

`linux-setup.sh` also calls `customize-home.sh` which does some non sudo stuff, like change wallpaper and adds a few directories to the home folder.

This is still a work in progress. I intend to add scripts for other systems, and some more config files and some utility scripts I've written for various things.
