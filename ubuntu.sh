#!/bin/sh

# a init shell  script for develop or network guys.

sudo apt update
echo
sudo apt install git gcc g++ make



echo "Install ULauncher"
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher


