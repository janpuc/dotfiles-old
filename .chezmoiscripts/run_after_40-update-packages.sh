#!/usr/bin/env bash

set -euo pipefail

# This script uses Dockutil to order applications in the Dock.

if [ -x ${BREW_PATH} ]; then
    brew cu -v >/dev/null 2>&1
    if [ $? -eq 1 ]; then
        printf "Info: Cask Upgrade is not installed. Installing Cask Upgrade...\n"
        brew tap buo/cask-upgrade
    else
        brew cu --all --cleanup --force --yes >/dev/null 2>&1
    fi
else
    printf "Error: Homebrew is not installed. Exiting.\n"
    exit 1
fi
