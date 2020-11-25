#!/bin/bash

###############################################################################
#Variable Section
PManager="Null"
CompType=0

###############################################################################
#Function Section

#Function for Installing Packages
InstallPackages() {
	case $1 in
		"Null" )
			echo "No supported package managers were detected exiting"
		;;
		"apt" )
			
		;;
		"pacman" )
			
		;;
	esac
	
}

#Function for creating symlinks for all folders in a directory at the specified location
SymlinkDirectory(){
	
}

###############################################################################
#Determine Variables
#Package Manager Detection
if ! command -v apt &> /dev/null; then
	echo "Package Manager apt detected"
	PManager="apt"
fi

if ! command -v pacman &> /dev/null; then
	echo "Package Manager pacman detected"
	PManager="pacman"
fi

#Prompt for System Type

###############################################################################
#Program Logic Section

#Update System

#Download Git Repo

#Install All Programs

#Create Symlinks

