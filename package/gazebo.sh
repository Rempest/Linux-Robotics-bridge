#!/bin/bash

install_gazebo() {

    echo "[INFO] Installing Gazebo..."

    sudo apt update

    sudo apt install -y \
        gazebo \
        ros-humble-gazebo-ros-pkgs

    echo "[SUCCESS] Gazebo installed."
}