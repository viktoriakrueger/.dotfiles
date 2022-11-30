#!/usr/bin/env bash

# neoviom
gem install neovim

# colorls
cd /usr/local/Cellar/ruby/3.1.2_1/bin && ./gem install colorls && ln -s /usr/local/lib/ruby/gems/3.1.0/bin/colorls /usr/local/bin/colorls

#
cd /usr/local/Cellar/ruby/3.1.2_1/bin && ./gem install bundler jekyll && ln -s /usr/local/lib/ruby/gems/3.1.0/bin/jekyll /usr/local/bin/jekyll
cd /usr/local/Cellar/ruby/3.1.2_1/bin && ./gem install jekyll && ln -s /usr/local/lib/ruby/gems/3.1.0/bin/jekyll /usr/local/bin/jekyll

# jruby

# tabula-extractor extract tables from pdf's
jruby -S gem install tabula-extractor

