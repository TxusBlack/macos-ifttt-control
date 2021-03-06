#!/bin/bash

# Get current working directory
BASEDIR=$(dirname "$0")

if [ "$BASEDIR" == "." ]; then
   BASEDIR=$(pwd)
fi

# Creating hash
clear;
echo "o------------------------------------------------------------------o";
echo "| macOS IFTTT Control Uninstaller                             v1.0 |";
echo "o------------------------------------------------------------------o";
echo "|                                                                  |";
echo "|   Do you want remove macOS IFTTT Control from your Mac?          |";
echo "|                                                                  |";
echo "|                                                                  |";
echo "|   [^C] Press Ctrl+C to cancel    [X] Press any key to continue   |";
echo "|                                                                  |";
echo "o------------------------------------------------------------------o";
echo "" > "$BASEDIR/$HASH"
read continue;

launchctl unload ~/Library/LaunchAgents/co.abdyfran.macosiftttcontrol.plist
rm -rf ~/Library/LaunchAgents/co.abdyfran.macosiftttcontrol.plist
rm -rf $BASEDIR
