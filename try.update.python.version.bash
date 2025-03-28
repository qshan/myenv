#!/usr/bin/env bash

#example try.update.python.version.bash 2.7
#example try.update.python.version.bash 3
#example try.update.python.version.bash 3.8
#example try.update.python.version.bash 3.9
#example try.update.python.version.bash 3.10

export input_argument1="$1"
echo "input_argument1 is ${input_argument1}"

cd /usr/bin

ls python python-config -alh

sudo ln -sf        python${input_argument1} python
sudo ln -sf        python${input_argument1}-config python-config

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
# python3.9
# python3.9-config
# python3.10
# python3.10-config
#
# # python3-futurize
# # python3-pasteurize
