#!/usr/bin/env bash

#example try.update.python3.version.bash 3.8

export input_argument1="$1"
echo "input_argument1 is ${input_argument1}"

cd /usr/bin

ls python3 python3-config -alh

sudo ln -sf        python${input_argument1} python3
sudo ln -sf        python${input_argument1}-config python3-config

# ubuntu 20.4
# Issue: No module named 'apt_pkg'
# ls /usr/lib/python3/dist-packages/apt_pkg.cpython-38-x86_64-linux-gnu.so
#onetimes# sudo ln -sf /usr/lib/python3/dist-packages/apt_pkg.cpython-38-x86_64-linux-gnu.so /usr/lib/python3/dist-packages/apt_pkg.cpython-310-x86_64-linux-gnu.so
#onetimes# sudo ln -sf /usr/lib/python3/dist-packages/apt_pkg.cpython-38-x86_64-linux-gnu.so /usr/lib/python3/dist-packages/apt_pkg.cpython-39-x86_64-linux-gnu.so

ls python3 python3-config -alh

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
# python3.9
# python3.9-config
# python3.10
# python3.10-config
#
# # python3-futurize
# # python3-pasteurize
