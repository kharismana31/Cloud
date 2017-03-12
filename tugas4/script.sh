#!/usr/bin/env bash

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
cd /tmp
curl -sSL https://get.rvm.io -o rvm.sh
cat /tmp/rvm.sh | bash -s stable --rails
source /home/ubuntu/.rvm/scripts/rvm
rvm install 2.3.0
gem install rails
\curl -sSL https://deb.nodesource.com/setup_6.x -o nodejs.sh
cat /tmp/nodejs.sh | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
cd /home/ubuntu
rails new Test
cd Test
rails server
