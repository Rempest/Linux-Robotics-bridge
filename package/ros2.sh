#!/bin/bash

install_ros2() {
    echo "[INFO] Installing ROS2 Humble..."

    sudo apt update

    sudo apt install -y \
        software-properties-common \
        curl

    sudo add-apt-repository universe -y

    sudo curl -sSL \
      https://raw.githubusercontent.com/ros/rosdistro/master/ros.key \
      -o /usr/share/keyrings/ros-archive-keyring.gpg

    echo \
      "deb [arch=$(dpkg --print-architecture) \
      signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] \
      http://packages.ros.org/ros2/ubuntu \
      $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | \
      sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

    sudo apt update

    sudo apt install -y \
        ros-humble-desktop \
        python3-colcon-common-extensions

    if ! grep -q "source /opt/ros/humble/setup.bash" ~/.bashrc; then
        echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
    fi

    mkdir -p ~/ros2_ws/src

    echo "[SUCCESS] ROS2 installed."
}
