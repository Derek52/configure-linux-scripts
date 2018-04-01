#/bin/bash
sudo apt update
sudo apt upgrade -y

#installs all the programs in the install-apt-packages script. Edit that file to your liking.
./install-apt-packages.sh

#installs python3 and some pip packages.
./install-pip-packages.sh

#this installs some requirements for atom-text-editor. They are placed here just incase I forget I need them and delete them from the other script
sudo apt install -y nodejs npm

#this line installs any debs that you have downloaded and left in your downloads folder. I use it for Atom and random stuff like the vivaldi web browser
sudo apt install -y ~/Downloads/*.deb

#Apt will download certain packages, necessary to install other packages, but not needed after that process.
#this line lets Apt remove them.
sudo apt autoremove
