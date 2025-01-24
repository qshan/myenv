#!/usr/bin/env bash

# https://www.accellera.org/downloads/standards/systemc

  sudo wget -O systemc-2.3.0a.tar.gz http://www.accellera.org/images/downloads/standards/systemc/systemc-2.3.0a.tar.gz
  tar -xzvf systemc-2.3.0a.tar.gz

  cd systemc-2.3.0a
  sudo mkdir -p /usr/local/systemc-2.3.0/
  mkdir objdir
  cd objdir
  ../configure --prefix=/usr/local/systemc-2.3.0

  make
  sudo make install
