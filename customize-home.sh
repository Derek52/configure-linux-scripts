#/bin/bash

#this creates some directories in the home folder. Your system probably already has a few of these, but they are
#listed for the sake of completion.
#You won't want some of these, delete them, and add whatever you need.
#I was running this inside the linux-setup script, but it's easier to run this without sudo rights.
mkdir -p ~/Art ~/Battles ~/Books ~/Dev ~/Documents ~/Downloads ~/Memes ~/Movies ~/Music ~/Pictures ~/Television ~/Videos

#this could have been a part of the previous command, but it's separated for readability. These are hidden folders
mkdir -p ~/.wallpapers ~/.icons ~/.themes ~/.arduino ~/.os #.os is where I save linux ISO's when I download them.

#these are folders I never use, so I just delete them
rm -rf ~/Templates ~/Public

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

#this installs atom packages I use. This was in the configure-linux script, but this command doesn't need sudo rights, so I put it here.
#to add/remove packages that get installed here, just edit the atom-package-list.txt file
#you probably will want to make changes in that file, because some of those packages do have system requirements. For example language-elixir gave me errors until I actually installed elixir on my system.
#obviously comment or delete this line if you didn't install atom.
apm install --packages-file atom-package-list.txt
#running the command "apm list --installed --bare > atom-package-list.txt" will help you easily generate a file like this, on a system where you already have atom set up.