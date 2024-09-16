#!/usr/bin/env bash

#example ./try.update.gcc.version.bash 4.8

export input_argument1="$1"
echo "input_argument1 is ${input_argument1}"

cd /usr/bin

ls python python-config -alh

sudo ln -sf        python${input_argument1} python
sudo ln -sf        python${input_argument1}-config python-config

# #ls gcc g++ cpp gcc-nm gcc-ar gcc-ranlib -alh
# sudo ln -sf        cpp-4.8 cpp
# sudo ln -sf        g++-4.8 g++
# sudo ln -sf     gcc-ar-4.8 gcc-ar
# sudo ln -sf     gcc-nm-4.8 gcc-nm
# sudo ln -sf gcc-ranlib-4.8 gcc-ranlib
# #ls gcc g++ cpp gcc-nm gcc-ar gcc-ranlib -alh
# #ls -alh ld

# sudo ln -sf        cpp-9 cpp
# sudo ln -sf        g++-9 g++
# sudo ln -sf     gcc-ar-9 gcc-ar
# sudo ln -sf     gcc-nm-9 gcc-nm
# sudo ln -sf gcc-ranlib-9 gcc-ranlib

ls python python-config -alh

cd -

# python
# python-config
# python2
# python2-config
# python2.7
# python2.7-config
# python3
# python3-config
# python3.8
# python3.8-config
#
# # python3-futurize
# # python3-pasteurize
