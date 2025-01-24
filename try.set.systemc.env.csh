#!/usr/bin/env tcsh

setenv SYSTEMC_HOME /usr/local/systemc-2.3.4

if (! $?LD_LIBRARY_PATH) then
  echo "LD_LIBRARY_PATH is not existed"
  setenv LD_LIBRARY_PATH  $SYSTEMC_HOME/lib-linux64
else
  setenv LD_LIBRARY_PATH  "${LD_LIBRARY_PATH}:$SYSTEMC_HOME/lib-linux64"
endif

echo "LD_LIBRARY_PATH is $LD_LIBRARY_PATH"
