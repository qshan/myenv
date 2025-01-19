#!/usr/bin/env bash
#sudo apt install --install-recommends --reinstall nvidia-driver-assistant nvidia-driver-390 nvidia-kernel-common-390 nvidia-utils-390

sudo apt purge *nvidia*
sudo apt install --install-recommends --reinstall ubuntu-drivers-common
# sudo ubuntu-drivers install
ubuntu-drivers list

# sudo apt install --install-recommends --reinstall xserver-xorg-video-nouveau
sudo apt install --install-recommends --reinstall nvidia-driver-390
# sudo apt install --install-recommends --reinstallnvidia-340
