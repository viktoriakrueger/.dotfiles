#!/usr/bin/env bash

cd /tmp

git clone https://aur.archlinux.org/ruby-filesize.git

git clone https://aur.archlinux.org/ruby-clocale.git

git clone https://aur.archlinux.org/ruby-colorls.git

cd ruby-clocale && makepkg -sic && cd ..

cd ruby-filesize && makepkg -sic && cd ..

cd ruby-colorls && makepkg -sic && cd

