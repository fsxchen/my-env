#!/bin/sh

# a init shell  script for develop or network guys.

# sudo apt update

sudo apt install zsh -y

echo
sudo apt install gcc g++ make

sudo apt install git git-flow

sudo apt install curl wget

sudo apt install net-tools netcat


echo "Install pyenv"
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
		 libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils

git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# echo "Install ULauncher"
# sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher

echo "Install Docker in 22.04"
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
echo "End of Docker install"
