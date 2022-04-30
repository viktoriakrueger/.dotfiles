funs(){
    vim $DOTFILES/zsh/functions.sh
}

# aliasas
#
#

alias gitpullall="find . -maxdepth 300 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull"


licht(){
   brightnessctl set 100% 
}

passwort(){
    pass | bat 
}

l(){
    ls -a --color=auto $1
}

hex(){
    xxd -psd
}

weather(){
    curl v2d.wttr.in/Kassel
}

wetter(){
    curl v2d.wttr.in/$1
}
spoty(){
    pkill spotifyd
    spt
}

killer(){
    pkill calcurse
    pkill newsboat
}

jack(){
     jackd -d coreaudio
}

moc(){
    mocp $1
}

mutt() {
    stty discard undef
    neomutt
}

qute(){
    qutebrowser $1
}


browser(){
    /usr/bin/open -a qutebrowser
}



vim(){
   nvim $1 "+:set number" "+:hi clear CursorLine" 
}

w3mb(){
    w3m -B
}

###### mac alias


audiomidisetup(){
  /usr/bin/open -a "Audio MIDI Setup"
}


terminal(){
    /usr/bin/open -a Terminal
}

safari(){
    /usr/bin/open -a Safari $1
}

mail(){
    /usr/bin/open -a mail
}

psycho(){
    /usr/bin/open -a psychopy
}

messages(){
    /usr/bin/open -a Messages
}

calendar(){
    /usr/bin/open -a Calendar
}

zoomen(){
    /usr/bin/open -a zoom.us
}

feuerfuchs(){
    /usr/bin/open -a Firefox $1
}

keychain(){
    /usr/bin/open -a "Keychain Access"
}

diskutility(){
    /usr/bin/open -a "Disk Utility"
}

activity(){
    /usr/bin/open -a "Activity Monitor"
}

cisco(){
    /usr/bin/open -a "Cisco AnyConnect Secure Mobility Client"
}

csv(){
    /usr/bin/open -a "Easy CSV Editor"
}

json(){
    /usr/bin/open -a "JSON Editor"
}

plist(){
    /usr/bin/open -a "PLIST Editor"
}

powerpoint(){
    /usr/bin/open -a "Microsoft PowerPoint" $1
}

chess(){
    /usr/bin/open -a "Chess – tactics and strategy"
}

drop(){
    /usr/bin/open -a Dropbox
}

contacts(){
    /usr/bin/open -a Contacts
}

maps(){
    /usr/bin/open -a Maps
}

facetime(){
    /usr/bin/open -a FaceTime
}

system(){
    /usr/bin/open -a "System Preferences"
}

appstore(){
    /usr/bin/open -a "App Store"
}

preview(){
    /usr/bin/open -a Preview $1
}

pycharm(){
    /usr/bin/open -a 'pycharm CE' $1
}

rstudio(){
    /usr/bin/open -a Rstudio $1
}
##


neo(){
    neofetch
}


gitpush(){
    git add .
    git commit -m "update"
    git push
}



update(){
    brew update && brew upgrade && brew cleanup && brew outdated
}

boat(){
    pkill newsboat
    newsboat
}


# alias for projects
#

schoko(){
    cd ~/Dropbox/uni/schokolade/ && vim notebook.rmd
}

modeling(){
    cd ~/Dropbox/uni/modeling/ && vim notebook.rmd
}


synchro(){
    vdirsyncer discover my_contacts
    vdirsyncer discover my_calendar
    vdirsyncer sync
    mbsync icloud
}


todo(){
    vim ~/Dropbox/todo.md
}

odot(){
    glow ~/Dropbox/todo.md
}






#####################################################
######### zsh functions #############################
#####################################################

#
# ZSH functions to start/stop OpenConnect VPN client
# 
#
export VPN_HOST=https://vpn.uni-kassel.de/  

function vpn-up() {
  if [[ -z $VPN_HOST ]]
  then
    echo "Please set VPN_HOST env var"
    return
  fi
  echo "Starting the vpn ..."
  sudo openconnect  --user=uk069555 --servercert pin-sha256:Aq5S0+QpnxCg3f/QopnL9bvJA09x1c1mmEhH79quzng= $VPN_HOST
}

function vpn-down() {
  sudo kill -2 `pgrep openconnect`
}


### function to connect to the hiwi server

# connect(){
#     osascript ~/Dropbox/.config/connect.scpt
# }

# disconnect

disconnect(){
    umount /Volumes/Chaichan ; umount /Volumes/uk069555
}




######## plugin manager


# update plugins

alias PlugUpdate="cd ~/.config/nvim/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd ~/zsh/ && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd ~/.tmux/ && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd" 



# die beiden folgenden befehle updaten coc.nvim was der unterschied zwischen yarn add coc.nvim und yarn install ist ??? es gibt aber auch noch yarn upgrade zur not mal das ausprobieren

# alias PlugUpdatePlus="cd Dropbox/.config/nvim/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd Dropbox/.config/zsh/ && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd Dropbox/.config/.tmux/  && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd Dropbox/.config/nvim/pack/plugins/start/coc.nvim/ && yarn add coc.nvim && cd" 

alias PlugUpdatePlus="cd ~/.config/nvim/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd ~/zsh/ && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd /.tmux/  && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd ~/.config/nvim/pack/plugins/start/coc.nvim/ && yarn install && cd"

### install plugins


# zsh
function zsh_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$ZDOTDIR/$PLUGIN_NAME"
}




#neovim
function vim_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$VDOTDIR/pack/plugins/start/$PLUGIN_NAME"
}


#tmux
function tmux_add_plugin() {
  PLUGIN_NAME=$(echo $1 | cut -d "/" -f 2)
  git clone "https://github.com/$1.git" "$TDOTDIR/plugins/$PLUGIN_NAME"
}





# arch bluetoothctl connect the magic mouse quick
mm(){
    bluetoothctl connect 04:4B:ED:D2:45:CF
}


########################################################################################################## 
#####################################################templates############################################
########################################################################################################## 

# when its come to create markdown documents use this 


# 1st link, when want to sent it push it do 2nd copie


links(){
    rm -rf wordcount.lua literature.bib styles .Rprofile && ln -sf ~/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && ln -sf ~/.dotfiles/styles "$(pwd)" && ln -sf ~/Dropbox/googlebox/literature.bib "$(pwd)" && ln -sf ~/.dotfiles/R/.Rprofile "$(pwd)"
}

copies(){
rm -rf wordcount.lua literature.bib styles .Rprofile && cp ~/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && cp -rf ~/.dotfiles/styles "$(pwd)" && cp ~/Dropbox/googlebox/literature.bib "$(pwd)" && cp ~/.dotfiles/R/.Rprofile "$(pwd)"
}

pdf(){
    cp ~/.dotfiles/Templates/pdf.rmd "$(pwd)"
}

html(){
    cp ~/.dotfiles/Templates/html.rmd "$(pwd)"
}

letter(){
    cp ~/.dotfiles/Templates/letter.rmd "$(pwd)"
}

pptx(){
    cp ~/.dotfiles/Templates/pptx.rmd "$(pwd)"
}

word(){
    cp ~/.dotfiles/Templates/word.rmd "$(pwd)"
}


