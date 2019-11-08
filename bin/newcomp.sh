#!/bin/bash

#Variables
DERIVATIVE="$(cat /etc/release | grep "ID_LIKE=.*")"

#Bring everything up to date
update_arch () {
	sudo pacman -Syu
}

update_ubuntu() {
	sudo apt update
	sudo apt upgrade -y
}

#Functions for installing all my important packages
#Install sublime text
install_sublime_arch () {
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg 
	sudo pacman-key --add sublimehq-pub.gpg 
	sudo pacman-key --lsign-key 8A8F901A 
	rm sublimehq-pub.gpg
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
	sudo pacman -Syu sublime-text
}

install_sublime_ubuntu () {
	wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
	echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
	sudo apt-get update
	sudo apt-get install sublime-text -y
}

#Install pamac packages
install_build_arch () {
	pamac build discord spotify
}

#Install pacman packages
install_packages_arch () {
	sudo pacman -Sy mosh veracrypt 
}

#Functions to install desktop enviorments
install_desktop_enviorements () {
	sudo pacman -Sy cinnamon i3-gaps i3blocks i3locks i3status
}

#Command portion
install_sublime_arch
install_build_arch
install_packages_arch