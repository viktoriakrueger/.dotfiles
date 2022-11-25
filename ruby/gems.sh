#!/usr/bin/env bash

geim install neovim
cd /usr/local/Cellar/ruby/3.1.2_1/bin && ./gem install colorls && ln -s /usr/local/lib/ruby/gems/3.1.0/bin/colorls /usr/local/bin/colorls
jruby -S gem install tabula-extractor