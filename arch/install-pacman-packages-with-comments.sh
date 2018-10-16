#!/bin/bash

#installs xorg so you can install a graphical window manager.
sudo pacman -S --noconfirm xorg
#you could alternatively use wayland.
#sudo pacman -S --noconfirm wayland

#Uncomment at least one of these to pick a desktop environment
#sudo pacman -S --noconfirm i3-gaps
#sudo pacman -S --noconfirm xfce4
#sudo pacman -S --noconfirm budgie-desktop
#sudo pacman -S --noconfirm i3
#sudo pacman -S --noconfirm cinnamon
#sudo pacman -S --noconfirm deepin
#sudo pacman -S --noconfirm enlightenment
#sudo pacman -S --noconfirm gnome
#sudo pacman -S --noconfirm gnome-flashback
#sudo pacman -S --noconfirm plasma
#sudo pacman -S --noconfirm lxde-gtk2
#sudo pacman -S --noconfirm lxde-gtk3
#sudo pacman -S --noconfirm lxqt
#sudo pacman -S --noconfirm mate
#sudo pacman -S --noconfirm sugar sugare-fructose

#you could also go for one of these tiling window managers
#sudo pacman -S --noconfirm awesome
#sudo pacman -S --noconfirm i3-wm i3status i3blocks i3lock
#sudo pacman -S --noconfirm ratpoison

#finally you will need a display manager (the screen that starts your graphical session. It's basically a login screen)
#I recommend SDDM, but you may want something else, depending on your chosen desktop environment
sudo pacman -S --noconfirm sddm
#sudo pacman -S --noconfirm gdm
#sudo pacman -S --noconfirm lightdm
#sudo pacman -S --noconfirm lxdm
#sudo pacman -S --noconfirm xorg-xdm

#configure systemd to open your display manager on bootup. This line will depend on your chosen display manager
sudo systemctl enable sddm.service

#Arch's packages are so much better than Ubuntu's for me. They are up to date with atom and R wich makes my life way easier.
sudo pacman -S --noconfirm \
	gcc \
	clisp \
	nodejs \
	elixir \
	erlang \
	npm \
	r \
	gcc-fortran \
	python \
	python-pip #I almost put the python stuff in it's own line for consistency sake. But it's fine here.
		#also, I like arch, because python3 is just called python.

#some graphical applications
sudo pacman -S --noconfirm \
	docky \
	atom \
	firefox \
	chromium \
	deluge \
	gimp \
	inkscape \
	krita \
	blender \
	openscad \
	kicad kicad-library\
	audacity \
	libreoffice-fresh \
	vlc \
	tilda \
	terminology \
	howl

#my desired command line utilities
sudo pacman -S --noconfirm \
	tmux \
	vim \
	ffmpeg \
	mplayer \
	feh \
	htop \
	git \
	screen \
	curl \
	wget \
	imagemagick \
	lolcat \
	w3m \
	mpv \
	ranger \
	rsync

#dependencies for compiling godot engine from source
sudo pacman -S --noconfirm scons libxcursor libxinerama libxi libxrandr mesa glu alsa-lib pulseaudio freetype2

#installs pulseaudio for sound, and pavucontrol for volume/device control
sudo pacman -S --noconfirm pulseaudio pavucontrol

#installs support to connect an android phone
sudo pacman -S --noconfirm gvfs-mtp mtpfs

#needed for using the terminal to verify/flash arduino code onto arduino boards
sudo pacman -S --noconfirm avr-gcc avrdude avr-libc

#installs fonts that support chinese characters. I use chinese numbers as my workspace names
sudo pacman -S --noconfirm opendesktop-fonts
