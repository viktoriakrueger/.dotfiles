#!/usr/bin/env bash

# qutebrowser (virtual environment)
# cd ~/
# git clone https://github.com/qutebrowser/qutebrowser.git
# cd qutebrowser
# python3 scripts/mkvenv.py
# cd ~/
# rm -rf qutebrowser

# qutebrowser (application)
# cd ~/
# wget https://github.com/qutebrowser/qutebrowser/releases/download/v2.4.0/qutebrowser-2.4.0.dmg
# hdiutil attach qutebrowser-2.4.0.dmg
# cp -R /Volumes/qutebrowser/qutebrowser.app /Applications
# cp -r ~/.dotfiles/qutebrowser/.qutebrowser/userscripts ~/Library/Application\ Support/qutebrowser
# rm qutebrowser-2.4.0.dmg

# amphetamine
cd ~/
wget https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg
hdiutil attach Amphetamine\ Enhancer.dmg
cp -R /Volumes/Amphetamine\ Enhancer/Amphetamine\ Enhancer.app /Applications
rm Amphetamine\ Enhancer.dmg

# zathura
brew tap zegervdv/zathura

brew install zathura

brew install zathura-pdf-poppler

mkdir -p $(brew --prefix zathura)/lib/zathura

ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib

brew unlink girara

brew unlink zathura

brew install girara --HEAD
brew install zathura --HEAD

mkdir -p $(brew --prefix zathura)/lib/zathura
ln -s $(brew --prefix zathura-pdf-poppler)/libpdf-poppler.dylib $(brew --prefix zathura)/lib/zathura/libpdf-poppler.dylib
