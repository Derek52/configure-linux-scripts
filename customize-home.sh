#/bin/bash

#This could just be in the linux-setup script, but I like smaller script files, so I broke this one off.

#this creates some directories in the home folder. Your system probably already has a few of these, but they are
#listed for the sake of completion.
#You won't want some of these. Delete them, and add whatever you need.
mkdir -p ~/Art \
	~/Battles \
	~/Books \
	~/Dev \
	~/Documents \
	~/Downloads \
	~/Memes \
	~/Movies \
	~/Music \
	~/Pictures \
	~/Television \
	~/Videos

#this could have been a part of the previous command, but it's separated for readability. These are hidden folders
mkdir -p ~/.wallpapers \
	~/.icons \
	~/.themes \
	~/.arduino \
	~/.os #.os is where I save linux ISO's when I download them.

#these are folders I never use, so I just delete them
rm -rf ~/Templates ~/Public


#creates a folder for my vim color schemes
mkdir -p ~/.vim/colors
#moves vimrc to the home directories, and renames it to the proper name ".vimrc"
mv config/vimrc ~/.vimrc
#moves vim color schemes to the appropriate destination
mv config/vimColorSchemes/* ~/.vim/colors 


#this moves a wallpaper I quickly made in gimp into your wallpaper folder, to avoid an error with the next line
mv zMyCustomWallpaper.png ~/.wallpapers

#if you download some wallpapers into your download directory before running this, it will go ahead
#and copy all pngs and jpegs into your wallpaper directory.
cp ~/Downloads/*.png ~/Downloads/*.jpg ~/Downloads/*.jpeg ~/.wallpapers 2>/dev/null
#2>/dev/null suppresses the error cp would give, if there were no jpegs or pngs in downloads. It's a handy trick.

#this line will set the first image in your wallpaper folder as your background wallpaper.
#you can change the '*' to the name of whatever file you specifically want.
#this works perfectly in the cinnamon desktop, and on tiling window managers like i3.
#I was super disappointed to find this doesn't work on Mate, KDE, Gnome, or Pantheon.
feh --bg-fill ~/.wallpapers/*

#you could also use one of these 2 commands to have it randomly pick a wallpaper.
#the recursive option will have it pick any file from any folder within the .wallpapers folder.
#feh --randomize --bg-fill ~/.wallpapers/*
#feh --recursive --randomize --bg-fill ~/.wallpapers/*

