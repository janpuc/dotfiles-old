#!/bin/bash

# Brewfile hash: {{ include "Brewfile" | sha256sum }}

printf "\n"
printf "###############################################################################\n"
printf "# run_onchange_brew-bundle.sh                                                 #\n"
printf "###############################################################################\n"

brew bundle cleanup --force
