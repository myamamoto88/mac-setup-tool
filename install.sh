#!/usr/bin/env bash

cd $HOME
rm -rf mac-setup-tool/

xcode-select --install

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew install python
brew install ansible
brew install git

git clone git@github.com:myamamoto88/mac-setup-tool.git

echo 'export HOMEBREW_CASK_OPTS="--appdir=/Applications"' >> ~/.bash_profile
source ~/.bash_profile

cd mac-setup-tool/provisioning/
ansible-playbook -i hosts -vv localhost.yml
