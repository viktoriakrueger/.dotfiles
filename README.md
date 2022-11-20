# dotfiles

## for windows (cygwin):
- install [cygwin](https://cygwin.com/setup-x86_64.exe)
- pick `wget`

## package manager

```
if [[ "$(uname)" == "Darwin" ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    echo '[archlinuxfr]
    SigLevel = Never
    Server = http://repo.archlinux.fr/$arch' >> /etc/pacman.conf
    pacman -Sy yaourt
elif [[ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]]; then
    wget rawgit.com/transcode-open/apt-cyg/master/apt-cyg
    install apt-cyg /bin
fi
```

## git

```
if [[ "$(uname)" == "Darwin" ]]; then
    brew install git
elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sudo pacman -S git
elif [[ "$(expr substr $(uname -s) 1 6)" == "CYGWIN" ]]; then
    apt-cyg install git
fi
```

## clone `.dotfiles`

`git clone https://github.com/alexchaichan/.dotfiles.git ~/.dotfiles`

## store [`.password-store`](https://github.com/alexchaichan/.password-store/archive/refs/heads/main.zip) into `~/`

`unzip ~/Downloads/.password-store-main.zip -d ~/Downloads && mv ~/Downloads/.password-store-main ~/.password-store/`

## store [`.gnupg`](https://drive.proton.me/urls/1K1QVY03ZC#8nRtoDHTIi6J) into `~/`

```
unzip ~/Downloads/gnupg.zip -d ~/Downloads/ && mv ~/Downloads/gnupg ~/.gnupg
```

## clone `.password-store` into `~/`

`git clone https://github.com/alexchaichan/.password-store.git ~/Downloads/.password-store && rm -r ~/.password-store && mv ~/Downloads/.password-store ~/.password-store`

**clear `~/Downloads`**

`rm ~/Downloads/gnupg.zip ~/Downloads/.password-store-main.zip`

## run installation file

`cd ~/.dotfiles && ./bootstrap.sh`

<!-- ## calcurse config -->
<!---->
<!-- ``` -->
<!-- calcurse-caldav --init=two-way -->
<!---->
<!-- ln -sf ~/Dropbox/iphone/todo ~/.calcurse -->
<!-- ``` -->

### cygwin

`source ~/.dotfiles/windows/cygwin.sh`
