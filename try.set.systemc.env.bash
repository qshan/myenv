#!/usr/bin/env bash

export SYSTEMC_HOME=/usr/local/systemc-2.3.4

if [[ -z ${LD_LIBRARY_PATH} ]]; then
#  echo "LD_LIBRARY_PATH is not existed"
  export LD_LIBRARY_PATH=$SYSTEMC_HOME/lib-linux64
#  echo "LD_LIBRARY_PATH is $LD_LIBRARY_PATH"
else
  export LD_LIBRARY_PATH=$SYSTEMC_HOME/lib-linux64:$LD_LIBRARY_PATH
#  echo "LD_LIBRARY_PATH is $LD_LIBRARY_PATH"
fi

echo "LD_LIBRARY_PATH is $LD_LIBRARY_PATH"
