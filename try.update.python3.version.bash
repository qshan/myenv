#!/usr/bin/env bash

#example try.update.python3.version.bash 3.8

export input_argument1="$1"
echo "input_argument1 is ${input_argument1}"

cd /usr/bin

ls python3 python3-config -alh

sudo ln -sf        python${input_argument1} python3
sudo ln -sf        python${input_argument1}-config python3-config

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
