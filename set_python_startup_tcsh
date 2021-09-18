#! /usr/bin/tcsh
#ln -sTf `pwd`/_myPythonStartup ~/.pythonstartup
ln -sTf `pwd`/_myPythonStartup $HOME/.pythonstartup

echo "if ( -f `pwd`/_mycshrc ) then"  >> ~/.cshrc
#echo "export PYTHONSTARTUP '~/.pythonstartup'" >>  ~/.cshrc
echo "export PYTHONSTARTUP='$HOME/.pythonstartup'" >>  ~/.cshrc
echo "endif"  >> ~/.cshrc

#sudo apt install git-el git-all python-pip python3-pip
sudo apt install git-el git-all python3-pip
