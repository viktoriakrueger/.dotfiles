#!/usr/bin/env bash

conda deactivate

# install pip
sudo easy_install pip
/Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip
sudo easy_install pip3

pip install pyright
pip3 install PyQt5
pip3 install PyQtWebEngine
pip3 install qutebrowser
pip3 install asciidoc
pip3 install adblock
pip3 install tldextract
pip3 install --user httplib2
pip3 install --user youtube-dl
pip3 install neovim
pip3 install pynvim
pip3 install breadability
pip3 install readability

# jupyter
pip3 install JLDracula
pip3 install qtconsole # pip3 install qtconsole pip3 install --user qtconsole
pip3 install jupyter

pip3 install matplotlib
pip3 install sklearn
