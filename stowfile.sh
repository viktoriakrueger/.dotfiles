#!/usr/bin/env bash

########################################################
# create directories                                   #
########################################################

mkdir $CONFIG ; mkdir $HOME/.cache ; mkdir $HOME/repositories

########################################################
# cheatsheets                                          #
########################################################

mkdir $HOME/cheatsheets ; mkdir $HOME/cheatsheets/R ; mkdir $HOME/cheatsheets/python ; mkdir $HOME/cheatsheets/zsh ; mkdir $HOME/cheatsheets/nvim ; mkdir $HOME/cheatsheets/conda
ln -sf $DOTFILES/cheatsheets/* $HOME/cheatsheets ; rm $HOME/cheatsheets/*.sh

########################################################
# create symlinks                                      #
########################################################

# zsh
mkdir $ZDOTDIR
ln -sf $DOTFILES/zsh/zsh/.zshrc $HOME/
ln -sf $DOTFILES/zsh/colorls/dark_colors.yaml $CONFIG/colorls

# bash
ln -sf $DOTFILES/bash/bash/.bashrc $HOME/
ln -sf $DOTFILES/bash/bash/.bash_profile $HOME/

# git
ln -sf $DOTFILES/git/git/.gitignore_global $HOME/
if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/git/git/.gitconfig_osx $HOME/.gitconfig && git config --global core.excludesfile $DOTFILES/git/git/.gitignore_global
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/git/git/.gitconfig_arch $HOME/.gitconfig && git config --global core.excludesfile $DOTFILES/git/git/.gitignore_global
fi

## git pass helper
ln -sf $DOTFILES/git/git/pass-git-helper $HOME/.config

# alacritty
if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/alacritty/alacritty/osx_alacritty.yml $CONFIG/alacritty.yml
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/alacritty/alacritty/arch_alacritty.yml $CONFIG/alacritty.yml
fi

# vim
mkdir $VDOTDIR ; mkdir $VDOTDIR/pack/ ; mkdir $VDOTDIR/pack/plugins/ ; mkdir $VDOTDIR/pack/plugins/start ; mkdir $VDOTDIR/pack/plugins/opt ; mkdir $VDOTDIR/spell ; ln -sf $DOTFILES/vim/nvim.lua/* $VDOTDIR ; ln -sf $DOTFILES/snippets/ $VDOTDIR

# tmux
mkdir $TDOTDIR ; mkdir $TDOTDIR/plugins ; ln -sf $DOTFILES/tmux/tmux/.tmux.conf $HOME/

# brewfile / pacmanfile
if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/osx/Brewfile $HOME/
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/arch/pacman/Pacmanfile $HOME/
fi

# qutebrowser
if [[ "$os" == "osx" ]]; then
	mkdir $HOME/.qutebrowser
	ln -sf $DOTFILES/qutebrowser/.qutebrowser/* $HOME/.qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git $HOME/.qutebrowser/dracula
elif [[ "$os" == "linux" ]]; then
	mkdir $CONFIG/qutebrowser
	ln -sf $DOTFILES/qutebrowser/.qutebrowser/* $CONFIG/qutebrowser
	git clone https://github.com/dracula/qutebrowser-dracula-theme.git $CONFIG/qutebrowser/dracula
fi

# xinitrc
if [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/arch/.xinitrc $HOME/
fi

# bat
ln -sf $DOTFILES/bat/bat $CONFIG

# rstudio
mkdir $CONFIG/rstudio ; ln -sf $DOTFILES/rstudio/rstudio/rstudio-prefs.json $CONFIG/rstudio ; ln -sf $DOTFILES/snippets $CONFIG/rstudio/
mkdir $CONFIG/RStudio ; ln -sf $DOTFILES/RStudio/* $CONFIG/RStudio

# zathura
mkdir $CONFIG/zathura

if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/zathura/zathura/osx_zathurarc $CONFIG/zathura/zathurarc
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/zathura/zathura/arch_zathurarc $CONFIG/zathura/zathurarc
fi

# pacman.conf
if [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/arch/pacman/pacman.conf /etc
fi

# contacs & calendar
mkdir $HOME/.contacts ; mkdir $HOME/.calendars

# khard
ln -sf $DOTFILES/khard/khard $HOME/.config

# khal
ln -sf $DOTFILES/khal/khal $HOME/.config

# vdirsyncer
mkdir $CONFIG/vdirsyncer
# ln -sf $DOTFILES/isync/vdirsyncer/config $CONFIG/vdirsyncer

# mbsync
#ln -sf $DOTFILES/isync/mbsync/.mbsyncrc $HOME/

# jupyter
mkdir $HOME/.jupyter ; mkdir $HOME/.jupyter/lab ; ln -sf $DOTFILES/jupyter/.jupyter/jupyter_qtconsole_config.py $HOME/.jupyter ; ln -sf $DOTFILES/jupyter/.jupyter/qtdracula.css $HOME/.jupyter ; ln -sf $DOTFILES/jupyter/.jupyter/lab/user-settings $HOME/.jupyter/lab

# templates
ln -sf $DOTFILES/Templates $HOME/

#tops
ln -sf $DOTFILES/tops/htop/ $CONFIG
ln -sf $DOTFILES/tops/btop/ $CONFIG

# mpv
ln -sf $DOTFILES/mpv/mpv $CONFIG

# neofetch
ln -sf $DOTFILES/neofetch/neofetch $CONFIG

# sublime-text
ln -sf ~/.dotfiles/sublime-text/Packages/* ~/.config/sublime-text/Packages/User/

# feh
ln -sf $DOTFILES/feh/feh/ $HOME/.config/

########################################################
# services                                             #
########################################################

# arch dropbox service
if [[ "$os" == "linux" ]]; then
	mkdir $CONFIG/systemd/
	mkdir $CONFIG/systemd/user/
	#cp $DOTFILES/arch/dropbox.service $CONFIG/systemd/user/

	#systemctl --user start dropbox
	#systemctl --user status dropbox # check status
	#systemctl --user enable dropbox

# pass for firefox

sudo pacman -S passff-host

curl -sSL github.com/passff/passff-host/releases/latest/download/install_host_app.sh | bash -s -- firefox

# keyboard mapping
ln -sf $DOTFILES/.Xmodmap $HOME

sudo cp $DOTFILES/arch/nobeep.conf /etc/modprobe.d

fi
