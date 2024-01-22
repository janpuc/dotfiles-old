#!/usr/bin/env bash

# Brewfile hash: {{ include "dot_Brewfile" | sha256sum }}s

set -euo pipefail

# This script uses Homebrew to install relevant packages.

# The packages to install are defined in Brewfile. Changes to the Brewfile
# will be detected by Chezmoi between executions to apply any changes.
# NOTE: Packages added manually to the target are removed by the `cleanup` option.

# Prompt pre-emptively for sudo password
printf "Info: A password may be required to install Homebrew packages.\n"
sudo -v

if [ -x ${BREW_PATH} ]; then
    # Source Homebrew environment variables
    eval "$(${BREW_PATH} shellenv)"

    # Update Homebrew and install packages
    printf "Info: Updating Homebrew.\n"
    brew update
    printf "Info: Installing Homebrew packages.\n"
    brew bundle --no-lock --global
    printf "Info: Cleaning up Homebrew packages.\n"
    brew bundle cleanup --force --global

    brew cleanup
    printf "Info: Homebrew package installations completed.\n"
else
    printf "Error: Homebrew is not installed. Exiting.\n"
    exit 1
fi
