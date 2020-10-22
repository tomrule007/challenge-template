#!/bin/bash
set -euo pipefail
#
# This script is only valid for debian users
# TODO: Check if already installed (ie path already contains scriptpath)

# Get script path
SCRIPT_PATH=$(dirname $(readlink -f "$0"))

# Add script path to your .bashrc file
if [[ "$PATH" =~ (^|:)"$SCRIPT_PATH"(|/)(:|$) ]]; then
  echo "challenge-template is already installed"
else
  echo "challenge-template is successfully installed"
  echo $"export PATH=$SCRIPT_PATH:\$PATH" >> ~/.bashrc
fi
echo ""
echo "Usage: challenge [DIRECTORY] --name [FUNCTION_NAME]"
echo ""
echo "EXAMPLE:  \$ challenge ./directory/toCreate --name funFunction"
echo ""
source ~/.bashrc