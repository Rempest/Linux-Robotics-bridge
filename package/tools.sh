#!/bin/bash

install_tools(){
    echo "[INFO] Installing developer tools..."

    sudo apt install -y \
        neofetch \
        tree \
        unzip \
        zip \
        btop \
        cmake

    echo "[SUCCESS] Developer tools installed."
}
