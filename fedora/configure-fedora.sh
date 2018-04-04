#/bin/bash
sudo dnf upgrade -y

#installs all the programs in the install-dnf-packages script. Edit that file to your liking.
sudo /fedora/install-dnf-packages.sh

#installs python3 and some pip packages.
sudo dnf install -y python3 python3-pip #reinstalls python3 just in case it gets deleted from the other file.

#You probably don't need most of these. But virtualenv is useful, and I can't live without youtube-dl.
pip3 install \
	youtube-dl \
	virtualenvwrapper \
	flask \
	flask_sqlalchemy \
	django \
	mysqlclient


#this installs some requirements for atom-text-editor. They are placed here just incase I forget I need them and delete them from the other script
sudo dnf install -y nodejs npm

#this line installs any rpms that you have downloaded and left in your downloads folder. I use it for Atom and random stuff like the vivaldi web browser
sudo dnf install -y ~/Downloads/*.rpm

#Dnf will download certain packages, necessary to install other packages, but not needed after that process.
#this line lets dnf remove them.
sudo dnf -y autoremove
