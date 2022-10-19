#!/usr/bin/env bash

# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until `.bootstap.sh` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# check for os type
unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     os=linux;;
    Darwin*)    os=osx;;
    CYGWIN*)    os=cygwin;;
    MINGW*)     os=mingw;;
    *)          os="UNKNOWN:${unameOut}"
esac

# create $ directories
export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export DOTFILES=$HOME/.dotfiles
export DROPBOX=$HOME/Dropbox
export ZDOTDIR=$HOME/.plugins_zsh
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux
export CONFIG=$HOME/.config

# make osx system changes
if [[ "$os" == "osx" ]]; then
	source $DOTFILES/osx/.macos
fi

# create symlinks from .dotfiles repo
source $DOTFILES/stowfile.sh

# install plugins for zsh / neovim / tmux
source $DOTFILES/plugins.sh

# install Brewfile / pacmanfile
if [[ "$os" == "osx" ]]; then
	brew bundle --file=$DOTFILES/osx/Brewfile
elif [[ "$os" == "linux" ]]; then
	pacman -S --needed - < $DOTFILES/arch/pacman/Pacmanfile
fi

# zathura
if [[ "$os" == "osx" ]]; then
  source ~/.dotfiles/zathura/installer.sh
fi

# install applications
if [[ "$os" == "osx" ]]; then
	source $DOTFILES/osx/applications.sh
fi

# install repositores
source $DOTFILES/repositories.sh

# download cheatsheet
source $DOTFILES/cheatsheets/cheatsheet_manager.sh

# install crontabs
source $DOTFILES/crontab.sh

# chmods
chmod a+x $DOTFILES/qutebrowser/.qutebrowser/userscripts/*
chmod +x ~/.dotfiles/calcurse/.calcurse/hooks/pre-load
chmod +x ~/.dotfiles/calcurse/.calcurse/hooks/post-save
#chmod a+x $DOTFILES/tmux/tmux/tmux-cheatsheets.sh

# configure R
Rscript $DOTFILES/R/package_manager.R
Rscript $DOTFILES/R/dependencies.R

# install python packages
source $DOTFILES/pip.sh

# make zsh default shell
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi
