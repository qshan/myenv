#!/usr/bin/env bash

# Podman配置（推荐）
sudo mkdir -p /etc/containers
sudo tee /etc/containers/registries.conf <<'EOF'
unqualified-search-registries = ["docker.io", "quay.io", "ghcr.io"]

[[registry]]
prefix = "docker.io"
location = "docker.m.daocloud.io"

[[registry]]
prefix = "docker.io"
location = "hub-mirror.c.163.com"

[[registry]]
prefix = "ghcr.io"
location = "ghcr.m.daocloud.io"

[[registry]]
prefix = "quay.io"
location = "quay.m.daocloud.io"
EOF

# # Docker配置（备用）
# sudo mkdir -p /etc/docker
# sudo tee /etc/docker/daemon.json <<'EOF'
# {
#   "registry-mirrors": [
#     "https://docker.m.daocloud.io",
#     "https://hub-mirror.c.163.com",
#     "https://docker.xuanyuan.me"
#   ],
#   "max-concurrent-downloads": 5,
#   "max-concurrent-uploads": 3,
#   "features": {
#     "buildkit": true
#   }
# }
# EOF
#
# sudo systemctl restart docker

#修复Ubuntu 22.04网络转发Bug
sudo sysctl -w net.ipv4.conf.all.forwarding=1
sudo sysctl -w net.ipv4.conf.default.forwarding=1
echo "net.ipv4.conf.all.forwarding=1" | sudo tee -a /etc/sysctl.conf
echo "net.ipv4.conf.default.forwarding=1" | sudo tee -a /etc/sysctl.conf

# 安装Podman + 兼容层
sudo apt update
sudo apt install -y podman podman-docker
#podman-toolbox

#podman-compose install
#podman-compose 是 Python 脚本，非 Podman 官方组件，但兼容性良好（95%+ docker-compose.yml 可用）
#首次运行会自动创建 ~/.config/containers 配置目录
#无需 root 权限（rootless 模式原生支持）
# 1. 安装Python pip（如未安装）
sudo apt update
sudo apt install -y python3-pip python3-setuptools
# 2. 安装podman-compose（注意：是连字符）
pip3 install --user podman-compose
# 3. 将用户bin目录加入PATH（如未配置）
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
# 4. 验证安装
podman-compose --version

# 验证 podman
podman --version


# 3.1 添加官方Podman仓库（获取最新版）
echo "  → 添加Podman官方仓库"
. /etc/os-release
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/libcontainers-archive-keyring.gpg] https://download.opensuse.org/repositories/devel:/kubic:/libcontainers:/stable/xUbuntu_${VERSION_ID}/ /" | \
  sudo tee /etc/apt/sources.list.d/devel:kubic:libcontainers:stable.list
curl -fsSL https://download.opensuse.org/repositories/devel:kubic:libcontainers:stable/xUbuntu_${VERSION_ID}/Release.key | \
  sudo gpg --dearmor -o /usr/share/keyrings/libcontainers-archive-keyring.gpg

# 拉取基础镜像（Ubuntu 22.04）
podman pull docker.io/library/ubuntu:24.04

# todo#运行开发容器（关键配置）
podman run -it --name iree-coral-dev \
  --hostname iree-dev \
  --memory=12g \
  --cpus=3.5 \
  --device=/dev/apex_0 \          # Coral TPU设备
  --device=/dev/bus/usb \         # USB总线（备用）
  -v ${HOME}/projects:/workspace \ # 项目目录持久化
  -v ${HOME}/.ssh:/root/.ssh:ro \ # SSH密钥
  -v ${HOME}/.gitconfig:/root/.gitconfig:ro \
  -p 8080:8080 \                  # VS Code Server端口
  -p 6006:6006 \                  # TensorBoard端口
  ubuntu:24.04 /bin/bash

#  --arch=arm64

#distrobox
# 1. 安装基础组件
sudo apt install -y podman podman-docker distrobox
# 2. 创建专用开发环境（自动集成 Coral TPU 设备）
distrobox create --name iree-dev \
  --image ubuntu:24.04 \
  --additional-flags "--device=/dev/apex_0 --device=/dev/bus/usb"
# 3. 进入环境（自动挂载 home/USB/音频）
distrobox enter iree-dev
# 4. 容器内安装工具链（与宿主机隔离）
apt update && apt install -y \
  build-essential cmake python3-pip git \
  libusb-1.0-0 libedgetpu1-std \
  clang-14 llvm-14 bazelisk
# 5. 导出开发工具到宿主机桌面（可选）
distrobox-export --app code  # VS Code
distrobox-export --app terminator  # 终端
#onetime# 创建 ubuntu 开发环境（自动处理所有集成）
distrobox create --name ubuntu24-dev --image ubuntu:24.04
distrobox create --arch arm64 透明支持

#todo# 进入环境（自动挂载 home/USB/音频/GUI）
distrobox enter ubuntu24-dev
# 导出 VS Code 到宿主机桌面
distrobox-export --app code
