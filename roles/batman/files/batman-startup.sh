#!/bin/sh
# Tell batman-adv which interface to use
sudo batctl if add wlan0

# Activates the interfaces for batman-adv
sudo ifconfig wlan0 up

# bat0 is created via the first command
sudo ifconfig bat0 up 