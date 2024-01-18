#!/bin/bash

# Brewfile hash: {{ include "Brewfile" | sha256sum }}

echo "\n"
echo "###############################################################################\n"
echo "# run_onchange_brew-bundle.sh                                                 #\n"
echo "###############################################################################\n"

brew bundle cleanup --force
