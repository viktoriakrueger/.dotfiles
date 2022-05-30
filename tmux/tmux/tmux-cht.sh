#!/usr/bin/env bash
selected=`bat ~/.dotfiles/tmux/tmux/.tmux-cht-languages ~/.dotfiles/tmux/tmux/.tmux-cht-command | fzf`
if [[ -z $selected ]]; then
    exit 0
fi

read -p "Enter Query: " query

if grep -qs "$selected" ~/.dotfiles/tmux/tmux/.tmux-cht-languages ; then
    query=`echo $query | tr ' ' '+'`
    tmux neww zsh -c "echo \"curl cht.sh/$selected/$query/\" & curl cht.sh/$selected/$query & while [ : ]; do sleep 1; done"
else
    tmux neww zsh -c "curl -s cht.sh/$selected~$query | less"
fi
