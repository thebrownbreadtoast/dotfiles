#!/bin/bash

echo "Initializing configuration..."

apt-get install git vim zsh

cd $HOME

git clone https://github.com/dadwalakshay/mes-configurations.git && cd $HOME/mes-configurations

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

ln -s zsh/.zshrc $HOME/.zshrc

source $HOME/.zshrc

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
ln -s zsh/spaceship.zsh $HOME/.config/.

ln -s zsh/custom/plugins/ $ZSH_CUSTOM/plugins/

git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

