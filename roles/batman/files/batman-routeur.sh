#!/bin/sh
# Tell batman-adv which interface to use
sudo batctl if add wlan0

# Activates the interfaces for batman-adv
sudo ifconfig wlan0 up

# bat0 is created via the first command
sudo ifconfig bat0 up 

iptables -t nat -A POSTROUTING -o usb0 -j MASQUERADE
iptables -A FORWARD -i usb0 -o eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT
iptables -A FORWARD -i eth0 -o usb0 -j ACCEPT

date >> ~/.datetime