#!/usr/bin/env bash

#get the code
git clone  http://github.com/vim/vim.git vim.vim
cd vim.vim/
gitsubmoduleupdate

# check out the version
git tag -l
git checkout  v9.1.0145

# install the tools need for compile
sudo apt install libxt-dev
sudo apt install libpython3-dev

cd src/
gvim Makefile
# uncomment those setting
# CONF_OPT_PYTHON3 = --enable-python3interp
# check python3 info
which python3
python3 --version
# reconfig the setting
make reconfig
cd -

# optional, check/create the python3 linker
sudo ln -s /usr/bin/python3 /usr/local/bin/python3
ls -alh /usr/local/bin/python3

# install vim
sudo make install

vim version
