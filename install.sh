#!/bin/bash

source scripts/colors.sh
source scripts/logger.sh
source scripts/banner.sh

source packages/common.sh
source packages/docker.sh
source packages/vscode.sh
source packages/ros2.sh
source packages/tools.sh

show_banner

log_info "Starting Linux Dev Setup..."

install_common_packages
install_tools
install_docker
install_vscode
install_ros2

log_success "Installation completed!"
