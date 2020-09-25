#!/bin/bash
#
# This script is only valid for debian users
# TODO: Check if already installed (ie path already contains scriptpath)

# Get script path
SCRIPTPATH=$(dirname $(readlink -f "$0"))

# Add script path to your .bashrc file
echo $"export PATH=\$PATH:$SCRIPTPATH" >> ~/.bashrc
echo ""
echo "You can now use: \$ challenge ./directory/toCreate [--name functionName]"
source ~/.bashrc