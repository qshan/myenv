# myenv
#my env setting that cover .bashrc and .vimrc

#Linux version is lubuntu 16.4

sudo apt update
sudo apt install git

git clone --recursive https://github.com/qshan/myenv.git

source ./set_ctags_env;

source ./set_vim_env;

source ./get_install_chrome;
