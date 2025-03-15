#!/bin/zsh

echo "Initializing configuration..."

if [ ! -d "$HOME/.oh-my-zsh" ]; then
	echo "Please install oh-my-zsh, refer to README.md"
	return
fi

CUR_DIR=$(pwd)
ZSH_CUSTOM_DIR=${ZSH_CUSTOM:=$HOME/.oh-my-zsh/custom}

ln -sf $CUR_DIR/zsh/.zshrc $HOME/.zshrc

if [ ! -d "$ZSH_CUSTOM_DIR/themes/spaceship-prompt" ] ; then
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git $ZSH_CUSTOM_DIR/themes/spaceship-prompt
else
    cd "$ZSH_CUSTOM_DIR/themes/"
    git pull
fi

ln -sf "$ZSH_CUSTOM_DIR/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM_DIR/themes/spaceship.zsh-theme"
ln -sf $CUR_DIR/zsh/spaceship.zsh $HOME/.config/spaceship.zsh

ln -sf $CUR_DIR/zsh/custom/plugins/shortgit $ZSH_CUSTOM_DIR/plugins/shortgit

if [ ! -d "$ZSH_CUSTOM_DIR/plugins/zsh-autosuggestions" ] ; then
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM_DIR/plugins/zsh-autosuggestions
else
    cd "$ZSH_CUSTOM_DIR/plugins/"
    git pull
fi

if ! command -v pyenv >> /dev/null; then
	echo "Installing pyenv, please wait..."
	curl https://pyenv.run | zsh

	pyenv init -
fi

# Installing bashtop, assuming current system has Python3.7+
brew install bpytop

source $HOME/.zshrc

echo "Configuration completed."
