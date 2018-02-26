#!/bin/bash
set -ex
source /usr/local/rvm/environments/ruby-2.4.1

ruby --version
rvm --version
gem --version

gem install bundler

bundle install
bundle exec jekyll build
