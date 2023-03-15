#!/bin/bash
# This script is provided by coinowo.com to automate the installation of Script Network's Edge Node on Ubuntu.

# Update and install required packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential -y 
sudo apt-get install git -y
sudo apt install tmux

# Install Go
wget https://go.dev/dl/go1.19.2.linux-amd64.tar.gz 
sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.2.linux-amd64.tar.gz

# Add Go to PATH
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.profile
source ~/.profile

# Clone repository and install Script binaries
mkdir -p $GOPATH/src/github.com/scripttoken/
cd $GOPATH/src/github.com/scripttoken/
sudo git clone https://github.com/scriptnetwork/Node-Network-guide.git script
cd script
sudo cp -r ./integration/scriptnet ../scriptnet 
sudo chmod -R 777 /usr/local/go 
git config --global --add safe.directory /usr/local/go/src/github.com/scripttoken/script 
make install
