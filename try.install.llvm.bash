

# Install (stable branch)
#To retrieve the archive signature:
#add GPG key
wget -qO- https://apt.llvm.org/llvm-snapshot.gpg.key | sudo tee /etc/apt/trusted.gpg.d/apt.llvm.org.asc
#wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -

# Fingerprint: 6084 F3CF 814B 57C1 CF12 EFD5 15CF 4D18 AF4F 7421
# https://apt.llvm.org/
#deb http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye main
#deb-src http://apt.llvm.org/bullseye/ llvm-toolchain-bullseye main


#add apt source for ubuntu 22 (jammy)
#sudo sh -c 'echo "deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy main" >> /etc/apt/sources.list.d/llvm.list'
sudo tee /etc/apt/sources.list.d/llvm.list <<EOF
deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy main
deb-src http://apt.llvm.org/jammy/ llvm-toolchain-jammy main

# 如果需要特定版本（如 LLVM 20、21、22），可取消注释对应行：
# deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-20 main
# deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-21 main
# deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-22 main
EOF

sudo apt update

##sudo vim /etc/apt/sources.list
#deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy main
#deb-src http://apt.llvm.org/jammy/ llvm-toolchain-jammy main

sudo apt install clang-22 clangd-22 clang-format-22 clang-tidy-22 clang-tools-22

#sudo tee /etc/apt/sources.list.d/llvm.list <<EOF
#deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy main
#deb-src http://apt.llvm.org/jammy/ llvm-toolchain-jammy main
#
## 如果需要特定版本（如 LLVM 20、21、22），可取消注释对应行：
## deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-20 main
## deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-21 main
## deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-22 main
#EOF

#sudo gvim /etc/apt/sources.list.d/llvm-toolchain-jammy.list
## LLVM Toolchain for Ubuntu Jammy (22.04)
#deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy main
#deb-src http://apt.llvm.org/jammy/ llvm-toolchain-jammy main
## LLVM 20版本
#deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-20 main
#deb-src http://apt.llvm.org/jammy/ llvm-toolchain-jammy-20 main
## LLVM 21版本
#deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-21 main
#deb-src http://apt.llvm.org/jammy/ llvm-toolchain-jammy-21 main
