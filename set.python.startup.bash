#! /bin/bash
ln -sTf `pwd`/_myPythonStartup $HOME/.pythonstartup

echo "if [ -f '$HOME/.pythonstartup' ]; then"       >> ~/.bashrc
echo "export PYTHONSTARTUP='$HOME/.pythonstartup'"  >>  ~/.bashrc
echo "fi"                                           >> ~/.bashrc

sudo apt install git-el git-all python-pip python3-pip
