#      ___           ___           ___
#     /  /\         /  /\         /__/\
#    /  /::|       /  /:/_        \  \:\
#   /  /:/:|      /  /:/ /\        \__\:\
#  /  /:/|:|__   /  /:/ /::\   ___ /  /::\
# /__/:/ |:| /\ /__/:/ /:/\:\ /__/\  /:/\:\
# \__\/  |:|/:/ \  \:\/:/~/:/ \  \:\/:/__\/
#     |  |:/:/   \  \::/ /:/   \  \::/
#     |  |::/     \__\/ /:/     \  \:\
#     |  |:/        /__/:/       \  \:\
#     |__|/         \__\/         \__\/

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
if [[ "$os" == "osx" || "$os" == "linux" ]]; then
	export HOME="$(echo -n $(bash -c "cd ~${USER} && pwd"))"
fi
export DOTFILES=$HOME/.dotfiles
export DROPBOX=$HOME/Dropbox
export ZDOTDIR=$HOME/.zsh
export VDOTDIR=$HOME/.config/nvim
export TDOTDIR=$HOME/.tmux
export CONFIG=$HOME/.config

#export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/bin:$PATH

# default editor
export EDITOR=nvim
export TERM=screen-256color

# source plugins
source $ZDOTDIR/dracula-zsh-syntax-highlighting/zsh-syntax-highlighting.sh
source $ZDOTDIR/ohmyzsh/plugins/vi-mode/vi-mode.plugin.zsh
source $ZDOTDIR/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZDOTDIR/powerlevel10k/powerlevel10k.zsh-theme
source $ZDOTDIR/zsh-autopair/autopair.zsh

if [[ "$os" == "osx" ]]; then
  source /usr/local/Cellar/fzf/*/shell/completion.zsh
	source /usr/local/Cellar/fzf/*/shell/key-bindings.zsh
elif [[ "$os" == "linux" ]]; then
	#source /usr/local/fzf/0.30.0/shell/completion.zsh
	#source /usr/local/fzf/0.30.0/shell/key-bindings.zsh
fi

source $HOME/.dotfiles/zsh/zsh/.p10k.zsh
source $HOME/.dotfiles/zsh/zsh/functions.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# setup a custom completion directory
fpath=($ZDOTDIR/zsh-completions/src $fpath)

# enable completion system
autoload compinit

# initalize all completions on $fpath an ignore (-i) all insecure files and directory
compinit -i

# make space between commands
precmd() { print "" }

# vi keybinding
bindkey -v

# zsh history
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if [[ "$os" == "linux" ]]; then
	__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
    		eval "$__conda_setup"
	else
    		if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        			. "/opt/miniconda3/etc/profile.d/conda.sh"
    		else
        			export PATH="/opt/miniconda3/bin:$PATH"
    		fi
	fi
	unset __conda_setup
elif [[ "$os" == "osx" ]]; then
	__conda_setup="$('/usr/local/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
	if [ $? -eq 0 ]; then
    		eval "$__conda_setup"
	else
    		if [ -f "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        			. "/usr/local/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    		else
        			export PATH="/usr/local/Caskroom/miniconda/base/bin:$PATH"
    		fi
	fi

fi
# <<< conda initialize <<<

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
