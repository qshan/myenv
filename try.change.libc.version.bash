#!/usr/bin/env bash


## 使用 ldd --version 查看升级后的GLIBC版本。
ldd --version

## Ubuntu20.04更新GLIBC到2.35版本
## https://blog.csdn.net/flysnow010/article/details/140157114
## 标准源 在/etc/apt/sources.list文件末尾增加：
## deb http://th.archive.ubuntu.com/ubuntu jammy main
## 镜像源 在/etc/apt/sources.list文件末尾增加：
## deb http://mirrors.aliyun.com/ubuntu/ jammy main
## update
# sudo apt update
# sudo apt install libc6


## ubuntu20.04 GLIBC从2.35降级到2.31
## https://blog.csdn.net/u013013280/article/details/142208844
## 1. 检查可用版本：
sudo apt update
apt-cache policy libc6
#
## 2.31-0ubuntu9.16 是我们要安装的目标版本
#todo# sudo apt-get install libc6=2.31-0ubuntu9.16 安装会提示依赖错误
## 所以先处理依赖问题。
## 2.更新软件包索引，并清除未完成或残缺的安装缓存：
# sudo apt-get update
# sudo apt-get clean
# sudo apt-get autoremove
## 3.从"sudo apt-get install libc6=2.31-0ubuntu9.16"获得依赖库信息，解除libselinux1 tar readline-common包的锁定，然后重新安装这三个包
# sudo apt-mark unhold libselinux1 tar readline-common
# sudo apt-get install libselinux1 tar readline-common
## 4. 安装libc6=2.31-0ubuntu9.16
# sudo aptitude install libc6=2.31-0ubuntu9.16
## 期间会多次建议你保持  libc6 [2.35-0ubuntu3 (now)]，均选择 n，直到出现下图
## 开始安装 低版本的依赖，选择Y，一直y，安装完成后，查看一下GLIBC版本
## 恭喜你回退成功！！！寄给现在遇到困难的我和你，再坚持一下，就能成功。

## 使用 ldd --version 查看升级后的GLIBC版本。
ldd --version
## 或者使用strings /lib/x86_64-linux-gnu/libc.so.6 |grep GLIBC_查看，如果成功你会看到
strings /lib/x86_64-linux-gnu/libc.so.6 |grep GLIBC_

#todo# 最后从 /etc/apt/sources.list 中删除 deb http://th.archive.ubuntu.com/ubuntu jammy main ，升级完成，可继续使用Pip进行安装。

## Ubuntu20.04升级glibc升级及降级的心路历程
## https://blog.csdn.net/qq_43309940/article/details/143746825
## 降级
## 1.如果你是通过上述sudo apt install libc6的方式升级的GLIBC，建议先把 sources.list中新增的源去掉，然后 sudo apt update一下。
# sudo apt update
## 2.检查可用版本：
# apt-cache policy libc6
## 3.清除apt缓存
# sudo apt clean
# sudo apt autoremove
## 4.解除libselinux1 tar readline-common包的锁定，然后重新安装这三个包
# sudo apt-mark unhold libselinux1 tar readline-common
# sudo apt-get install libselinux1 tar readline-common
## 5.尝试安装老版本
# sudo apt-get install libc6=2.31-0ubuntu9.16
## 如果不报错，那运气比较好，但是这时候大概率是会报错的。
## 出现报错应该是 libc6:amd64 这个包没有安装完成，处于半安装的状态，我们手动安装一下就可以了。
## 执行 ls /var/cache/apt/archives 查看一下有没有关于 libc6:amd64 的包
## 6. 先手动安装
# sudo dpkg -i /var/cache/apt/archives/libc6_2.31-0ubuntu9.16_i386.deb 
# sudo dpkg -i /var/cache/apt/archives/libc6_2.31-0ubuntu9.16_amd64.deb
## 可惜又错了，但是不要慌。
## 7.如果失败，用aptitude安装
## sudo aptitude install libc6=2.31-0ubuntu9.16
## 如果显示保留高级版本选择n，如果显示降级就选y
## 降级完成
