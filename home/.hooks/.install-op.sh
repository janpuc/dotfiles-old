#!/usr/bin/env bash

set -euo pipefail

# Define global bin_directory variable
bin_directory="${HOME}/.local/bin"

# Create $HOME/bin directory if missing and add it to PATH
setup_bin_directory() {
    if [ ! -d "$bin_directory" ]; then
        mkdir -p "$bin_directory"
        chmod 0755 "$bin_directory"
    fi

    if [[ ":$PATH:" != *":$bin_directory:"* ]]; then
        # Prefer appending to PATH so existing binaries from Homebrew, etc. are found first
        export PATH="${PATH}:${bin_directory}"
    fi
}

# Check if a binary is installed
check_binary_installed() {
    local binary_name=$1
    if command -v "$binary_name" >/dev/null 2>&1; then
        return 0
    else
        return 1
    fi
}

# Fetch file using curl
fetch_file() {
    local file_name=$1
    local download_url=$2
    if ! curl -sL "$download_url" -o "${bin_directory}/${file_name}"; then
        exit 1
    fi
}

fetch_op_binary() {
    local op_download_url
    op_download_url="https://cache.agilebits.com/dist/1P/op2/pkg/v2.23.0/op_darwin_arm64_v2.23.0.zip"

    # Check if op is already installed and skip if found, otherwise install it
    if check_binary_installed "${bin_directory}/op"; then
        return 0
    else
        fetch_file "op.zip" "$op_download_url"
        unzip "${bin_directory}/op.zip" -x op.sig -d "${bin_directory}" >/dev/null 2>&1
        rm "${bin_directory}/op.zip"
    fi
}

main() {
    setup_bin_directory
    fetch_op_binary
}

main "$@"
