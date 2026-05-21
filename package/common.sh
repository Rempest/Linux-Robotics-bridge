#!/bin/bash

install_common_packages() {
    echo "[INFO] Installing common packages..."

    sudo apt update

    sudo apt install -y \
        curl \
        wget \
        git \
        vim \
        htop \
        tmux \
        net-tools \
        build-essential \
        software-properties-common

    echo "[SUCCESS] Common packages installed."  
}
