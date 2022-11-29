#!/usr/bin/env bash

# ask for the administrator password upfront
sudo -v

# keep-alive: update existing `sudo` time stamp until `bootstap.sh` has finished
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
export ZDOTDIR=$HOME/.zsh
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux
export CONFIG=$HOME/.config

# replace ~/.password-store with the git repository
git clone https://github.com/alexchaichan/.password-store.git $HOME/Downloads/.password-store && rm -r $HOME/.password-store && mv $HOME/Downloads/.password-store $HOME/.password-store

# clear ~/Downloads
rm $HOME/Downloads/gnupg.zip $HOME/Downloads/.password-store-main.zip

# make osx system changes
if [[ "$os" == "osx" ]]; then
	source $DOTFILES/osx/.macos
fi

# create symlinks from .dotfiles repo
source $DOTFILES/bootstrap/stowfile.sh

# install plugins for zsh / neovim / tmux
source $DOTFILES/bootstrap/plugins.sh

# install Brewfile / pacmanfile
if [[ "$os" == "osx" ]]; then
	brew bundle --file=$DOTFILES/osx/Brewfile
elif [[ "$os" == "linux" ]]; then
	pacman -S --needed - < $DOTFILES/linux/arch_linux/pacman/pacmanfile
fi

# install applications
if [[ "$os" == "osx" ]]; then
	source $DOTFILES/osx/applications.sh
fi

# define open with
if [[ "$os" == "osx" ]]; then
  source $DOTFILES/osx/duti.sh
fi

# install repositores
source $DOTFILES/bootstrap/repositories.sh

# download cheatsheet
source $DOTFILES/cheatsheets/cheatsheet_manager.sh

# install crontabs
if [[ "$os" == "linux" ]]; then
  systemctl enable --now cronie.service
fi
source $DOTFILES/bootstrap/crontab.sh

# R
Rscript $DOTFILES/R/package_manager.R
Rscript $DOTFILES/R/dependencies.R

# python
source $DOTFILES/python/pip/pip.sh

# ruby
source $DOTFILES/ruby/gems.sh

# java
source $DOTFILES/java/javascript/npm.sh

# rust
source $DOTFILES/rust/packages.sh

# passwords
echo | pass spotify/spotify-tui  >> ~/.config/spotify-tui/client.yml
echo | pass spotify/spotifyd  >> ~/.cache/spotifyd/credentials.json

# make zsh default shell
if [ -z "`$SHELL -c 'echo $ZSH_VERSION'`" ]; then
  sudo sh -c "echo $(which zsh) >> /etc/shells"
  chsh -s "$(which zsh)"
fi
