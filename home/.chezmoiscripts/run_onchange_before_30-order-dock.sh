#!/usr/bin/env bash

set -euo pipefail

# This script uses Dockutil to order applications in the Dock.

if ! command -v dockutil &> /dev/null; then
    printf "Error: Dockutil is not installed. Exiting.\n"
    exit 1
else
    dockutil --remove all --no-restart >/dev/null 2>&1
    dockutil --position 1 --add '/System/Applications/Launchpad.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 2 --add '/System/Applications/System Settings.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 3 --add '/System/Applications/Music.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 4 --add '/Applications/Arc.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 5 --add '/Applications/Messenger.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 6 --add '/Applications/Microsoft Teams (work or school).app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 7 --add '/Applications/Visual Studio Code.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 8 --add '/Applications/Warp.app' --section apps --no-restart >/dev/null 2>&1
    dockutil --position 0 --add '~/Downloads/' --section others --display stack --view fan >/dev/null 2>&1
    printf "Info: Dock applications have been ordered."
fi
