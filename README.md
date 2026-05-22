# Linux Dev Setup

Automated Linux development environment bootstrap tool for robotics, DevOps, and software engineering workflows.

## Overview

Linux Dev Setup is a modular Bash-based provisioning system designed to quickly configure a clean Linux workstation for development.

The project automates:
- package installation,
- ROS2 environment setup,
- Docker configuration,
- terminal customization,
- developer tooling,
- workspace initialization.

The repository follows a modular infrastructure-oriented architecture similar to real-world bootstrap and provisioning systems.

---

## Features

- Automated Ubuntu development environment setup
- ROS2 Humble installation
- Docker Engine installation
- Visual Studio Code installation
- Developer tools installation
- Custom Bash configuration
- tmux configuration
- Git configuration
- VSCode settings provisioning
- Backup and restore system
- Colored logging system
- Modular architecture
- Uninstall support

---

## Supported Systems

| Distribution | Version | Status |
|---|---|---|
| Ubuntu | 22.04 LTS | Supported |
| Ubuntu | 24.04 LTS | Supported |

---

## Architecture

```text
linux-dev-setup/
│
├── install.sh
├── uninstall.sh
├── LICENSE
├── README.md
├── .gitignore
│
├── packages/
│   ├── common.sh
│   ├── docker.sh
│   ├── vscode.sh
│   ├── ros2.sh
│   └── tools.sh
│
├── configs/
│   ├── bashrc
│   ├── tmux.conf
│   ├── gitconfig
│   └── vscode-settings.json
│
├── scripts/
    ├── check_os.sh
    ├── colors.sh
    ├── logger.sh
    └── banner.sh


```
---
## Installation

**1. Clone Repository**
```bash
git clone https://github.com/Rempest/linux-dev-setup.git
cd linux-dev-setup
```

**2. Make Scripts Executable**
```bash
chmod +x install.sh
chmod +x uninstall.sh
```

**3. Run Installer**
```bash
./install.sh
```
---
## Installed Components:

**Core Packages**
*curl*
*wget*
*git*
*vim*
*tmux*
*htop*
*build-essential*

**Developer Tools**
*Docker Engine*
*Docker Compose*
*Visual Studio Code*
*ROS2 Humble*
*colcon*

**Environment Configuration**
*Bash aliases*
*tmux customization*
*Git aliases*
*VSCode settings*
---

## Configuration Management
**Before applying new configurations, the installer automatically creates backups:**
```bash
backups/
├── bashrc.backup
├── tmux.conf.backup
└── gitconfig.backup
```
**Uninstall**
To remove installed components and restore backups:
```bash
./uninstall.sh
```
**Example Workflow**
```bash
git clone https://github.com/Rempest/linux-dev-setup.git

cd linux-dev-setup

chmod +x install.sh

./install.sh
```

## Project Goals

**This project was created to:**

simplify Linux workstation setup,
automate robotics environment provisioning,
improve reproducibility,
provide a clean modular Bash architecture,
demonstrate Linux infrastructure engineering practices.


## License

**Licensed under the Apache License 2.0.**

See the LICENSE file for more information.

**Disclaimer**
This project modifies system packages and user configuration files.
