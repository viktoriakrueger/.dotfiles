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
touch $ZDOTDIR/.zsh_history

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
ln -sf $DOTFILES/git/pass-git-helper $HOME/.config

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

# qutebrowser bookmarks
ln -sf $DOTFILES/qutebrowser/.qutebrowser/bookmarks/urls $HOME/

# mail
mkdir $HOME/mail

## muttrc
ln -sf $DOTFILES/mutt/neomutt/.muttrc $HOME/

## mailcap
if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/mutt/neomutt/.mac_mailcap $HOME/.mailcap
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/mutt/neomutt/.arch_mailcap $HOME/.mailcap
fi

# bat
ln -sf $DOTFILES/bat/bat $CONFIG

# rstudio
mkdir $CONFIG/rstudio ; ln -sf $DOTFILES/rstudio/rstudio/rstudio-prefs.json $CONFIG/rstudio ; ln -sf $DOTFILES/snippets $CONFIG/rstudio/

# psychopy
mkdir $HOME/.psychopy3 ; ln -sf $DOTFILES/psychopy/.psychopy3/* $HOME/.psychopy3

# zathura
mkdir $CONFIG/zathura

if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/zathura/zathura/osx_zathurarc $CONFIG/zathura/zathurarc
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/zathura/zathura/arch_zathurarc $CONFIG/zathura/zathurarc
fi

# xinitrc
if [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/linux/arch_linux/.xinitrc $HOME/
fi

# pacman.conf
if [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/arch/pacman/pacman.conf /etc
fi

# spotify
mkdir $CONFIG/spotify-tui ; mkdir $CONFIG/spotifyd ; mkdir $HOME/.cache/spotifyd

## spotifyd
if [[ "$os" == "osx" ]]; then
	ln -sf $DOTFILES/spotify/spotifyd/osx_spotifyd.conf $CONFIG/spotifyd/spotifyd.conf
elif [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/spotify/spotifyd/arch_spotifyd.conf $CONFIG/spotifyd/spotifyd.conf
fi

## spotify-tui
ln -sf $DOTFILES/spotify/spotify-tui/config.yml $CONFIG/spotify-tui

# i3
if [[ "$os" == "linux" ]]; then
	ln -sf $DOTFILES/i3/i3 $CONFIG
	ln -sf $DOTFILES/i3/i3status $CONFIG
fi

# ranger
mkdir $CONFIG/ranger ; ln -sf $DOTFILES/ranger/ranger/* $CONFIG/ranger

# contacs & calendar
mkdir $HOME/.contacts ; mkdir $HOME/.calendars

# khard
ln -sf $DOTFILES/khard/khard $HOME/.config

# khal
ln -sf $DOTFILES/khal/khal $HOME/.config

# calcurse
mkdir $HOME/.calcurse/ ; mkdir $HOME/.calcurse/caldav ; ln -sf $DOTFILES/calcurse/.calcurse/* $HOME/.calcurse ; ln -sf $DOTFILES/calcurse/caldav/config $HOME/.calcurse/caldav/config

# radicale
mkdir $CONFIG/radicale ; ln -sf $DOTFILES/radicale/radicale/* $CONFIG/radicale ; mkdir $HOME/radicale

# vdirsyncer
mkdir $CONFIG/vdirsyncer ; ln -sf $DOTFILES/isync/vdirsyncer/config $CONFIG/vdirsyncer

# mbsync
ln -sf $DOTFILES/isync/mbsync/.mbsyncrc $HOME/

# newsboat
mkdir $HOME/.newsboat ; ln -sf $DOTFILES/newsboat/.newsboat/* $HOME/.newsboat

# w3m
mkdir $HOME/.w3m ; ln -sf $DOTFILES/w3m/.w3m/* $HOME/.w3m

# starship
ln -sf $DOTFILES/zsh/starship/starship/starship.toml $CONFIG

# colorls
ln -sf $DOTFILES/zsh/colorls/colorls $CONFIG/

# jupyter
mkdir $HOME/.jupyter ; mkdir $HOME/.jupyter/lab ; ln -sf $DOTFILES/jupyter/.jupyter/jupyter_qtconsole_config.py $HOME/.jupyter ; ln -sf $DOTFILES/jupyter/.jupyter/qtdracula.css $HOME/.jupyter ; ln -sf $DOTFILES/jupyter/.jupyter/lab/user-settings $HOME/.jupyter/lab

# templates
ln -sf $DOTFILES/Templates $HOME/

#btop
mkdir $CONFIG/btop; ln -sf $DOTFILES/btop/btop/btop.conf $CONFIG/btop

# mpv
ln -sf $DOTFILES/mpv/mpv $CONFIG

# neofetch
ln -sf $DOTFILES/neofetch/neofetch $CONFIG

# xboard
ln -sf $DOTFILES/xboard/.xboardrc $HOME

# vscode
# source $DOTFILES/vscode/extensions.sh

# termchat
ln -sf $DOTFILES/termchat/termchat $HOME/.config

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
fi
