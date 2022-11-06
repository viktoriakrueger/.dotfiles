######################################################################
# aliasas						                                                 #
######################################################################

# calcurse pass plugins
alias calcurse-caldav='CALCURSE_CALDAV_PASSWORD=$(pass show posteo.de/aleksej.chaichan@posteo.de) calcurse-caldav'

# open $DOTDIR repo
dots(){
  cd $DOTFILES
}

push-dots(){
  cd $DOTFILES && gitpush && cd && cd .password-store && gitpush && cd
}

# open this file
funs(){
    vim $DOTFILES/zsh/zsh/functions.zsh
}

update(){
  if [[ "$os" == "osx" ]]; then
      sudo -v
      PlugUpdate && brew update && brew upgrade && brew cleanup && brew outdated && brew cu && sudo softwareupdate -i -a
  elif [[ "$os" == "linux" ]]; then
    sudo pacman -Syu
  fi
}
######################################################################
#git 						                                                     #
######################################################################

# quick push git
gitpush(){
  pass .
  git add .
  git commit -m "update"
  git push
}

# pull all repos start searching from actual directory
alias gitpullall="find . -maxdepth 300 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull"

######################################################################

# bat out .password-store repo
passwort(){
    pass | bat
}

# ls wit flags
l(){
    ls -a --color=auto $1
}

# get easy keyboard hex codes
hex(){
    xxd -psd
}

# check weather in stadard location
weather(){
    curl v2d.wttr.in/Kassel
}

# check weather in $1 location
wetter(){
    curl v2d.wttr.in/$1
}

# open neomutt
mutt() {
    stty discard undef
    neomutt
}

# open neovim
vim(){
   nvim $1
}

# open w3m terminal browser
w3mb(){
    w3m -B
}

synchro(){
    vdirsyncer discover my_contacts
    #vdirsyncer discover my_calendar
    vdirsyncer sync
    mbsync posteo
}

get-ip(){
  ifconfig | grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" | grep -v 127.0.0.1 | head -1 | awk '{ print $2 }'
}

#####################################################
# zsh functions                                     #
#####################################################

# ZSH functions to start/stop OpenConnect VPN client
function vpn-uk() {
 pass .
   if [[ "$?" -eq 0 ]]; then
     pass show uni-kassel.de/uk069555  | sudo openconnect  --user=uk069555 --passwd-on-stdin https://vpn.uni-kassel.de/ --servercert pin-sha256:cE1Loj4xAFctrQWe/4RdmIdvuIQqeIZrQ1zhkBgW6VM=
   fi
  }

function vpn-down() {
  sudo kill -2 `pgrep openconnect`
}

# connect to the server
connect(){
  osascript -e 'tell application "Finder" to open location "smb://smb.uni-kassel.de/vpvs"'
  osascript -e 'delay 3' -e 'tell application "System Events" to keystroke tab & tab & return'
}

# disconnect
disconnect(){
    umount /Volumes/vpvs
}

##########################################################################################################
#pluginmanager                                                                                           #
##########################################################################################################

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

function PlugUpdate(){
  cd $VDOTDIR/pack/plugins/start && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd $ZDOTDIR && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd && cd $TDOTDIR && find . -maxdepth 3 -name .git -type d | rev | cut -c 6- | rev | xargs -I {} git -C {} pull ; cd
}

##########################################################################################################
# templates                                                                                              #
##########################################################################################################

# when its come to create markdown documents use this

# 1st link, when want to sent it push it do 2nd copie

links(){
    rm -rf wordcount.lua literature.bib styles .Rprofile && ln -sf ~/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && ln -sf $DOTFILES/styles "$(pwd)" && ln -sf $DROPBOX/googlebox/literature.bib "$(pwd)" && ln -sf $DOTFILES/R/R/.Rprofile "$(pwd)"
}

copies(){
rm -rf wordcount.lua literature.bib styles .Rprofile && cp $HOME/.local/share/pandoc/filters/wordcount/wordcount.lua "$(pwd)" && cp -rf $DOTFILES/styles "$(pwd)" && cp $DROPBOX/googlebox/literature.bib "$(pwd)" && cp $DOTFILES/R/.Rprofile "$(pwd)"
}

pdf(){
    cp $DOTFILES/Templates/pdf.rmd "$(pwd)"
}

html(){
    cp $DOTFILES/Templates/html.rmd "$(pwd)"
}

letter(){
    cp $DOTFILES/Templates/letter.rmd "$(pwd)"
}

pptx(){
    cp $DOTFILES/Templates/pptx.rmd "$(pwd)"
}

word(){
    cp $DOTFILES/Templates/word.rmd "$(pwd)"
}

#####################################################
# zsh functions mac                                 #
#####################################################

if [[ "$os" == "osx" ]]; then

audiomidisetup(){
  /usr/bin/open -a "Audio MIDI Setup"
}

terminal(){
    /usr/bin/open -a Terminal
}

safari(){
    /usr/bin/open -a Safari $1
}

psychopy(){
    /usr/bin/open -a psychopy
}

messages(){
    /usr/bin/open -a Messages
}

zoom(){
    /usr/bin/open -a zoom.us
}

firefox(){
    /usr/bin/open -a Firefox $1
}

diskutility(){
    /usr/bin/open -a "Disk Utility"
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

dropbox(){
    /usr/bin/open -a Dropbox
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

mails(){
    /usr/bin/open -a Mail
}

amphetamine(){
  /usr/bin/open -a Amphetamine
}

wifi(){
  /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s
}

wifi-connect(){
  networksetup -setairportnetwork en0 $1 $2
}

######################################################################
fi

#####################################################
# zsh functions linux                               #
#####################################################

if [[ "$os" == "linux" ]]; then

# set the display on the imac to 100%
licht(){
   brightnessctl set 100%
}

# connect magic mous
mm(){
    bluetoothctl connect 04:4B:ED:D2:45:CF
}

clear(){
  /usr/bin/clear
}

fi

#####################################################
# ssh                                               #
#####################################################

ssh_viki(){
  pass .
  ssh "$(pass ssh/viki_thinkpad)"
}
