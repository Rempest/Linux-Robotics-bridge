#!/bin/bash

install_vscode() {
    echo "[INFO] Installing VSCode..."
    
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | \
         gpg --dearmor > packages.microsoft.gpg
         
    sudo install -D -o root -g root -m 644 \
         packages.microsoft.gpg \
         /etc/apt/keyrings/packages.microsoft.gpg
         
    echo \
      "deb [arch=amd64 signed-by=/etc/apt/keyrings/packages.microsoft.gpg] \
      https://packages.microsoft.com/repos/code stable main" | \
      sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
      
    rm -f packages.microsoft.gpg # Исправлено имя файла

    sudo apt update
    sudo apt install -y code # Исправлено: apt вместо apr

    echo "[SUCCESS] VSCode installed."
}
