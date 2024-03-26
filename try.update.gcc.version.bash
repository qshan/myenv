#!/usr/bin/env bash
#example ./try.update.gcc.version.bash 4.8

export input_argument1="$1"
echo "input_argument1 is ${input_argument1}"

cd /usr/bin

sudo ln -sf        cpp-${input_argument1} cpp
sudo ln -sf        gcc-${input_argument1} gcc
sudo ln -sf        g++-${input_argument1} g++
sudo ln -sf     gcc-ar-${input_argument1} gcc-ar
sudo ln -sf     gcc-nm-${input_argument1} gcc-nm
sudo ln -sf gcc-ranlib-${input_argument1} gcc-ranlib

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

ls gcc g++ cpp gcc-nm gcc-ar gcc-ranlib -alh

cd -
