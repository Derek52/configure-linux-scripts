# configure-linux-scripts

This is a set of scripts designed to automate the process of installing your desired software, and making a few customization tweaks.

Using these scripts is pretty simple. Simply download or clone this repo, and cd into it.

From there run the linux-setup script and type in your operating system. That would look like this
```
./linux-setup.sh debian
```

It will then prompt you for a password, and you should be good to go from there.

This script calls a couple other scripts. One is `configure-linux.sh`, which has sudo rights, and installs a ton of software. There are multiple `configure-linux` scripts. `linux-setup.sh` will call a couple of scripts, from inside the folder, named after the system you are using.

For example
```
./linux-setup.sh Fedora
```
will call `fedora/configure-fedora.sh`

You can simply delete the folders for any OS you aren't using.

fedora/configure-fedora.sh, arch/configure-arch.sh, or any other of these scripts, will call another script, that installs all of your selected packages.

e.g, 
```
ubuntu/install-apt-packages.sh
```

installs all of the packages I put in that list. You will want to edit that file, to list your desired packages, and delete the ones I listed, that you don't need. I did comment what most of the packages do though, there may be something you want and don't even know about.

`linux-setup.sh` also calls `customize-home.sh` which does some non sudo stuff, like change wallpaper and adds a few directories to the home folder.
