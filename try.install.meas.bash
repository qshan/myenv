#!/usr/bin/env bash

# https://www.linuxmi.com/ubuntu-20-04-21-04-anzhuang-mesa.html

# 从系统应用程序启动器搜索并打开终端。当它打开时，运行命令添加 PPA：
sudo add-apt-repository ppa:kisak/kisak-mesa
sudo apt update

# 最后通过命令安装包括 Mesa 库在内的所有软件包的可用升级：
sudo apt full-upgrade

# 要找出包版本，请使用命令：
glxinfo | grep “OpenGL version”

# 要将显卡驱动恢复到原始状态，首先通过命令安装 ppa-purge：
sudo apt install ppa-purge
# 接下来清除 Ubuntu PPA，它将降级所有已安装的软件包：
sudo ppa-purge ppa:kisak/kisak-mesa
# 对于 Linux Mint 20，建议添加 -d focal 标志以安全工作
sudo ppa-purge -d focal ppa:kisak/kisak-mesa
