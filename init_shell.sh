#!/bin/bash

# echo install powerline
# sudo apt -y install powerline
# echo

echo Install oh my zosh and sugar
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo

echo Copy configuration files
touch ~/.Xdefaults
cp ~/build_linux/.p10k.zsh ~/
cp ~/build_linux/.zshrc ~/
cp ~/build_linux/.xinitrc ~/
echo

echo Done