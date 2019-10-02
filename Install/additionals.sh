#!/bin/bash

# Install Java 12 and set as default
sudo pacman -Syu jdk-openjdk
sudo archlinux-java set java-12-openjdk

# Install Yay(AUR)
sudo pacman -Syu yay

# Install Visual Studio Code
sudo pacman -Syu code

# Install Google 
yay -Syua google-chrome

# Install SMPlayer with additional content
sudo pacman -Syu smplayer smplayer-skins smplayer-themes

# Install JDownloader2
yay -Syu jdownloader2

# Install LaTeX
sudo pacman -Ss texlive-most texlive-lang
