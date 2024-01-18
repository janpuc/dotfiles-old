#!/bin/bash

echo "\n"
echo "###############################################################################\n"
echo "# run_onchange_dock-order.sh                                                  #\n"
echo "###############################################################################\n"

# Order Dock icons
dockutil --remove all --no-restart
dockutil --position 1 --add '/System/Applications/Launchpad.app' --section apps --no-restart
dockutil --position 2 --add '/System/Applications/System Settings.app' --section apps --no-restart
dockutil --position 3 --add '/System/Applications/Music.app' --section apps --no-restart
dockutil --position 4 --add '/Applications/Arc.app' --section apps --no-restart
dockutil --position 5 --add '/Applications/Messenger.app' --section apps --no-restart
dockutil --position 6 --add '/Applications/Microsoft Teams (work or school).app' --section apps --no-restart
dockutil --position 7 --add '/Applications/Visual Studio Code.app' --section apps --no-restart
dockutil --position 8 --add '/Applications/Warp.app' --section apps --no-restart
dockutil --position 0 --add '~/Downloads/' --section others --display stack --view fan
