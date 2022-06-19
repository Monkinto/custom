#!/bin/bash

if ! command -v apt &> /dev/null
then
	echo "command not found"
else
	echo "command found"
fi
