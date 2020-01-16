#!/bin/bash
set -ex
source /usr/local/rvm/environments/ruby-2.4.1

# needed as bundler requires RubyGems version >= 3.0.0
gem update --system

ruby --version
rvm --version
gem --version

gem install bundler

bundler install --gemfile _data/Gemfile
bundle exec --gemfile _data/Gemfile jekyll build
# Check internal links
#bundle exec htmlproofer ./_site --check-html --allow-hash-href --assume-extension --disable-external
# Check external
#bundle exec htmlproofer ./_site --check-html --allow-hash-href --assume-extension --external-only
