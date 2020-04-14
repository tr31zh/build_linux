#!/bin/bash

echo First things first
export RUNLEVEL=3
sudo /etc/init.d/dbus start 
sudo apt-get update && sudo apt-get -y upgrade
echo

echo Getting graphic libraries
sudo apt-get -y install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

echo install thingys
sudo apt-get -y install fortune
sudo apt -y install fortunes-off
sudo apt-get -y install sl
sudo apt-get -y htop
sudo apt -y install zsh
echo

echo installing window manager
sudo apt-get -y install xfce4
sudo apt-get -y install xfce4-terminal
sudo apt-get -y install xfce4-goodies
sudo apt -y install xubuntu-desktop
echo

echo Getting NPM
sudo apt-get -y install npm
echo

echo Getting darktable
sudo apt-get -y install darktable
echo

echo Setting git ...
git config --global user.email maviane@gmail.com
git config --global user.name "Felicià MAVIANE"
# git config --global credential.helper store
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager.exe"
echo

echo Switching shell
chsh -s /bin/zsh

echo Done