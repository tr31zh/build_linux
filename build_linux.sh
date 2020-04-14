#!/bin/bash

echo updating and upgrading
sudo apt-get update && sudo apt-get upgrade

echo First step
export RUNLEVEL=3
sudo /etc/init.d/dbus start 

echo Switching shell
chsh -s /usr/bi/zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo apt install powerline
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


echo Installing the essentials
sudo apt-get install -y fortune
sudo apt install fortunes-off
sudo apt-get install sl
sudo apt-get htop

echo Getting graphic libraries
sudo apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

echo installing window manager
sudo apt-get install xfce4
sudo apt-get install xfce4-goodies
sudo apt install xubuntu-desktop

echo Getting NPM
sudo apt-get install npm

echo Getting darktable
sudo apt-get install darktable

echo Setting git ...
git config --global user.email maviane@gmail.com
git config --global user.name "Felicià MAVIANE"
git config --global credential.helper store

echo Copy configuration files
touch ~/.Xdefaults
cp .p10k.zsh ~/
cp .zshrc ~/
cp .xinitrc ~/

echo Done