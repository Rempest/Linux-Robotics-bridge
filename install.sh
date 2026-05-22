#!/bin/bash


set -e



source scripts/colors.sh
source scripts/logger.sh
source scripts/check_os.sh
source scripts/banner.sh


source packages/gazebo.sh
source packages/common.sh
source packages/tools.sh
source packages/docker.sh
source packages/vscode.sh
source packages/ros2.sh


show_banner



check_os


log_info "Starting Linux development environment setup..."



install_common_packages
install_tools
install_docker
install_vscode
install_ros2
install_gazebo


log_info "Backing up existing configs..."

mkdir -p backups

[ -f ~/.bashrc ] && cp ~/.bashrc backups/bashrc.backup
[ -f ~/.tmux.conf ] && cp ~/.tmux.conf backups/tmux.conf.backup
[ -f ~/.gitconfig ] && cp ~/.gitconfig backups/gitconfig.backup



log_info "Applying configurations..."

cp configs/bashrc ~/.bashrc
cp configs/tmux.conf ~/.tmux.conf
cp configs/gitconfig ~/.gitconfig

mkdir -p ~/.config/Code/User

cp configs/vscode-settings.json \
   ~/.config/Code/User/settings.json


log_success "Installation completed successfully!"

echo ""
echo "Please restart your terminal."
echo ""
