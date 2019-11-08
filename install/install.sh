#!/bin/bash

#Variables
DERIVATIVE="$(cat /etc/release | grep "ID_LIKE=.*")"
COMPTYPE="N"

#Bring everything up to date
update_arch () {
	sudo pacman -Syu
}

update_ubuntu() {
	sudo apt update
	sudo apt upgrade -y
}

#beginning of the main script
