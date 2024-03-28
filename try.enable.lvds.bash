#!/usr/bin/env bash

# Disable laptop screen and use only VGA
## https://unix.stackexchange.com/questions/399739/disable-laptop-screen-and-use-only-vga
#

# back xorg.conf
# sudo mv /etc/X11/xorg.conf /etc/X11/xorg.conf.back
ls /etc/X11/xorg.conf

#Run the command xrandr -q to shows the exact names.
xrandr -q | grep 'VGA\|HDMI\|DP\|LVDS'

# This is a sample command to turn off LVDS-1 and enable VGA-1:
## xrandr --output LVDS-1 --off --output VGA-1 --auto

# To switch back:
## xrandr --output VGA-1 --off --output LVDS-1 --auto

xrandr --auto
# enable lvds
xrandr --output LVDS-1 --auto
#xrandr -d :0 --output LVDS-1 --auto

# disable VGA
## xrandr --output VGA-1 --off

# enable VGA
## xrandr --output VGA1 --mode 1366x768

2

# To permanently disable the laptop screen, modify /etc/default/grub and change GRUB_CMDLINE_LINUX_DEFAULT to something like:
## GRUB_CMDLINE_LINUX_DEFAULT="quiet splash video=LVDS-1:d"
# where LVDS-1 is the screen you want to disable (obtained via xrandr).
# After that, run sudo update-grub and reboot.
