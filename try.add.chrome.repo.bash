#!/usr/bash

#wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'

sudo add-apt-repository --yes "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo add-apt-repository --yes "deb http://dl.google.com/linux/chrome-remote-desktop/deb/ stable main"
sudo apt update

#if [ -f ~/_mybashrc ]; then
#    . ~/_mybashrc
#fi
#sudo apt install dpkg
#
#wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#
#sudo dpkg -i google-chrome-stable_current_amd64.deb
#
sudo apt install google-chrome-stable
