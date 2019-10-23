#!/bin/bash

# Update pacman
sudo pacman -Syyu --noconfirm

# Install Java 12 and set as default
sudo pacman -S --noconfirm jdk-openjdk
sudo archlinux-java set java-12-openjdk

# Install Yay(AUR)
sudo pacman -S --noconfirm yay

# Install Visual Studio Code
sudo pacman -S --noconfirm code

# Install Google 
yay -S --noconfirma google-chrome

# Install SMPlayer with additional content
sudo pacman -S --noconfirm smplayer smplayer-skins smplayer-themes

# Install JDownloader2
yay -S --noconfirm jdownloader2

# Install LaTeX
sudo pacman -S --noconfirm texlive-most texlive-lang

# Scilab
yay -S --noconfirm scilab-bin

# Google Translator API for terminal
sudo pacman -S --noconfirm translate-shell
