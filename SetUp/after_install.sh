#!/bin/bash

# Configure pacman to use fastest servers
sudo pacman-mirrors --fasttrack && sudo pacman -Syyu

#Configure linux to use TRIM periodically
systemctl enable fstrim.timer

# Install necessaries packages to manjaro work fine
sudo pacman -S base-devel

# Configure linux to use rtc, fix time problem dual boot
timedatectl set-local-rtc 1 --adjust-system-clock

# Allow to use Wifi on Lenovo Y720
sudo tee /etc/modprobe.d/blacklist-ideapad.conf <<< "blacklist ideapad_laptop"
pacman -S blueman
pacman -S bluez
pacman -S bluez-hid2hci
systemctl enable bluetooth.service
systemctl start bluetooth.service

# Set swap to be used when memory reachs 90%
sudo sysctl vm.swappiness=10
