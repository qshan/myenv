#!/bin/bash

echo "---------- install mill on env ----------"
# web info https://github.com/com-lihaoyi/mill/releases/
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.7.3/0.7.3 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.7.4/0.7.4 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.8.0/0.8.0 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.9.0/0.9.0 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.9.12/0.9.12 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.0/0.10.0 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.2/0.10.2 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.3/0.10.3 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.4/0.10.4 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.11/0.10.11 > /usr/local/bin/mill"
sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.10.13/0.10.13 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.11.5/0.11.5 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.11.6/0.11.0 > /usr/local/bin/mill"
#sudo sh -c "curl -L https://github.com/com-lihaoyi/mill/releases/download/0.11.6/0.11.6 > /usr/local/bin/mill"
sudo chmod +x /usr/local/bin/mill
which mill
mill version

echo "---------- install amm (Ammonite) on env ----------"
# install amm (Ammonite) on env
#sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/com-lihaoyi/Ammonite/releases/download/2.5.4/2.13-2.5.4) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm' && amm
sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/com-lihaoyi/Ammonite/releases/download/2.5.6/2.13-2.5.6) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm' && amm

echo "---------- install GraalVM instead of OpenJDK on env (optinal, need install by manual)----------"
# [optional] install GraalVM instead of OpenJDK
# get the version info here : https://github.com/graalvm/graalvm-ce-builds/releases
# download the file
# wget -c https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.1.0/graalvm-ce-java11-linux-amd64-22.1.0.tar.gz /data/tools/graalvm/
# install this file
# install reference: https://www.graalvm.org/22.1/docs/getting-started/linux/
# tar -xzf graalvm-ce-java<version>-linux-amd64-<version>.tar.gz
# add this following line into .bashrc file after update the path info
# export PATH=/path/to/<graalvm>/bin:$PATH

echo "---------- install z3 program on env ----------"
# issue of "z3" installation
# [info]   java.io.IOException: Cannot run program "z3" (in directory "/data/work/chisel/riscv-mini"): error=2, No such file or directory
sudo apt update
sudo apt install z3
