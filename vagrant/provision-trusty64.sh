#!/usr/bin/env bash

# Intended for Ubuntu 14.04 (Trusty)
RUBY_VERSION="2.2.3"

# Adjust timezone to be Toronto
sudo ln -sf /usr/share/zoneinfo/America/Toronto /etc/localtime

# Install Dependencies
echo "--- Updating and Installing Dependencies..."
sudo apt-get -y update > /dev/null
sudo apt-get install -y curl

# RVM
echo "--- Installing RVM and Setting Up Ruby..."
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3
\curl -L https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm

sudo apt-get install -y nodejs
gem install bundler --no-document

gem install nokogiri --no-document
gem install rails --no-document

echo "--- All Done!"







