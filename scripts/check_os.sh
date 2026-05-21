#!/bin/bash

check_os() {

    if [ ! -f /etc/os-release ]; then
        echo "[ERROR] Cannot detect operating system."
        exit 1
    fi

    source /etc/os-release

    if [[ "$ID" != "ubuntu" ]]; then
        echo "[ERROR] Unsupported distribution: $ID"
        echo "This installer supports Ubuntu only."
        exit 1
    fi

    echo "[INFO] Detected Ubuntu $VERSION_ID"
}
