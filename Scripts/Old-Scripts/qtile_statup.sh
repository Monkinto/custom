#!/bin/bash

#Configuration applications
nitrogen --restore; sleep 1; compton -b

#Status bar icons
nm-applet
blueman-applet
volumeicon
pamac-tray

#Applications
discord
spotify
