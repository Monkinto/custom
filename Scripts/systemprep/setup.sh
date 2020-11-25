#!/bin/bash

if ! command -v apt &> /dev/null
then
	echo "Package Manager apt detected"
fi

if ! command -v pacman &> /dev/null
then
	echo "Package Manager pacman detected"
fi
