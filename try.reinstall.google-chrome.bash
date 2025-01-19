#!/usr/bin/env bash

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

## sudo dpkg -r google-chrome-stable;
## sudo apt-get purge google-chrome-stable*
## \rm -rf ~/.config/google-chrome/ ~/.cache/google-chrome/
## sudo apt update
## sudo apt install --install-recommends google-chrome-stable
