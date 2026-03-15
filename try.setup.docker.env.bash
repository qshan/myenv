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

# Docker配置（备用）
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<'EOF'
{
  "registry-mirrors": [
    "https://docker.m.daocloud.io",
    "https://hub-mirror.c.163.com",
    "https://docker.xuanyuan.me"
  ],
  "max-concurrent-downloads": 5,
  "max-concurrent-uploads": 3,
  "features": {
    "buildkit": true
  }
}
EOF

sudo systemctl restart docker
