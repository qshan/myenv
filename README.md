# myenv
#my env setting that cover .bashrc and .vimrc

#Linux version is lubuntu 16.4

#you could run "source README.md to let this script run"

sudo apt update;

sudo apt install git;

git clone --recursive https://github.com/qshan/myenv.git

source ./set_ctags_env;

source ./set_vim_env;

source ./set_bash_env;

source ./get_install_chrome;

#command for git maintain

#git clone --recursive git@github.com:qshan/myenv.git

#git remote

#git branch

#git fetch origin

#git checkout README.md

#git pull

#git pull FileNameWithPath

#git add New_File_With_Path

#git commit -am "update bashrc description"

#git push
