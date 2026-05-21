#!/bin/bash

set -e

source scripts/colors.sh
source scripts/logger.sh
source scripts/banner.sh

show_banner

log_warning "Starting uninstall process..."



sudo apt remove -y \
    code \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    ros-humble-desktop \
    python3-colcon-common-extensions

sudo apt autoremove -y



log_info "Restoring configuration backups..."

[ -f backups/bashrc.backup ] && \
    cp backups/bashrc.backup ~/.bashrc

[ -f backups/tmux.conf.backup ] && \
    cp backups/tmux.conf.backup ~/.tmux.conf

[ -f backups/gitconfig.backup ] && \
    cp backups/gitconfig.backup ~/.gitconfig



rm -rf ~/ros2_ws

log_success "Uninstall completed."
