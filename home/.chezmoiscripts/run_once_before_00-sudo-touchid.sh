#!/usr/bin/env bash

set -euo pipefail

# This script enables sudo authorizantion using Touch ID.

# Prompt pre-emptively for sudo password
printf "Info: A password is required to authorize sudo via Touch ID.\n"
sudo -v

if [ -z "$(sudo cat /etc/pam.d/sudo_local)" ]; then
    printf "Info: Enabling sudo via Touch ID authorization.\n"
    echo "auth       sufficient     pam_tid.so" | sudo tee -a /etc/pam.d/sudo_local &> /dev/null
else
    printf "Info: File /etc/pam.d/sudo_local not empty, skip adding sudo Touch ID config.\n"
fi
