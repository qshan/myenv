#!/usr/bin/env bash

sudo apt update

sudo apt install -y --install-recommends --reinstall \
nvidia-driver-390 \
nvidia-headless-390 \
nvidia-dkms-390 \
nvidia-kernel-common-390 \
nvidia-kernel-source-390 \
nvidia-utils-390 \

# nvidia-headless-no-dkms-390 \
