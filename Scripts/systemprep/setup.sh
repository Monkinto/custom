#!/bin/bash

###############################################################################
#Variable Section
PManager="Null"
CompType=0

###############################################################################
#Function Section

###############################################################################
#Determine Variables
#Package Manager Detection
if ! command -v apt &> /dev/null
then
	echo "Package Manager apt detected"
fi

if ! command -v pacman &> /dev/null
then
	echo "Package Manager pacman detected"
fi

#Prompt for System Type

###############################################################################
#Program Logic Section

#Update System

#Download Git Repo

#Install All Programs

#Create Symlinks

