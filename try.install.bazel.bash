#!/usr/bin/env bash
#


# sudo apt install curl gnupg
# curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor > bazel.gpg
# sudo mv bazel.gpg /etc/apt/trusted.gpg.d/
# echo "deb [arch=amd64] https://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list
#
# sudo apt update && sudo apt search bazel
# # 选择合适的版本进行安装
# sudo apt install bazel-4.2.2
# # 创建符号链接
# mkdir ~/bin
# ln -s /usr/bin/bazel-4.2.2 ~/bin/bazel

# https://github.com/bazelbuild/bazel
# https://github.com/bazelbuild/bazel/releases/tag/8.0.0
# wget -c https://github.com/bazelbuild/bazel/releases/download/7.0.0/bazel-7.0.0-installer-linux-x86_64.sh
# sudo cp /usr/local/lib/bazel/bin/bazel /usr/local/lib/bazel/bin/bazel-7.0.0-linux-x86_64
wget -c https://github.com/bazelbuild/bazel/releases/download/8.0.0/bazel-8.0.0-installer-linux-x86_64.sh
