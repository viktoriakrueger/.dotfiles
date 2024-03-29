#!/usr/bin/env bash

# install pip
sudo easy_install pip
/Library/Developer/CommandLineTools/usr/bin/python3 -m pip install --upgrade pip
sudo easy_install pip3

pip3 install PyQt5
pip install PyQtWebEngine
pip3 install qutebrowser
pip3 install asciidoc
pip3 install adblock
pip install tldextract

# jupyter
pip install JLDracula
pip install qtconsole # pip3 install qtconsole pip3 install --user qtconsole
pip install jupyter


pip3 install matplotlib
pip3 install sklearn
