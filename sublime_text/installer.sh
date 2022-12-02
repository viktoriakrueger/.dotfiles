#!/usr/bin/env bash

export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
export DOTFILES=$HOME/.dotfiles
export SUBL=$HOME/Library/Application\ Support/Sublime\ Text/

subl 

pkill subl

# sublime text
sudo mkdir $SUBL && sudo mkdir $SUBL/Packages && sudo mkdir $SUBL/Packages/User
sudo ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/User/* $SUBL/Packages/User/
sudo ln -sf $DOTFILES/sublime_text/Sublime\ Text/Packages/Dracula\ Color\ Scheme $SUBL/Packages/
