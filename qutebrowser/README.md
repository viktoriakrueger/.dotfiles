# [qutebrowser](https://www.qutebrowser.org/)

[qutebrowser](https://github.com/qutebrowser/qutebrowser)  is a keyboard-focused browser with a minimal GUI. It’s based on Python and Qt and free software, licensed under the GPL

*I use qutebrowser as my main webbrowser*

*I higly recommend [pass](https://www.passwordstore.org/) as apassword manager which can be integrated into qutebrowser with a userscript [qute-pass](.qutebrowser/userscripts/qute-pass)*

## Installation

### osx: 

*I recommend install qutebrowser twice!*

1. Virtual Environment

`cd ~/ && git clone https://github.com/qutebrowser/qutebrowser.git && cd qutebrowser && python3 scripts/mkvenv.py && rm -rf ~/qutebrowser`

2. As a Application

`cd ~/
wget https://github.com/qutebrowser/qutebrowser/releases/download/v2.4.0/qutebrowser-2.4.0.dmg
hdiutil attach qutebrowser-2.4.0.dmg
cp -R /Volumes/qutebrowser/qutebrowser.app /Applications
rm qutebrowser-2.4.0.dmg
`

- copy userscripts

`cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser`

*I do not recommend installing the brew version of qutebrowser as it did not work for me*

### arch linux: 

`sudo pacman -S qutebrowser`