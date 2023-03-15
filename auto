#!/bin/bash
# This script is provided by coinowo.com to automate the installation of Script Network's Edge Node on Ubuntu.

# Update and install required packages
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential git tmux -y

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

# Start Script nodes using tmux
tmux new -s node '/usr/local/go/bin/script start --config=../scriptnet/node'
tmux new -s cli '/usr/local/go/bin/scriptcli daemon start --port=16889'
tmux new -s detail '/usr/local/go/bin/scriptcli query lightning'

# Open wallet.script.tv in browser and stake SCPT
echo "Open wallet.script.tv in your browser and follow the instructions to stake SCPT."

# Download and install Edge Node application
echo "Navigate to token.script.tv/download in your browser and download the Linux version of the Edge Node application."
echo "Follow the setup guide instructions and open the application once installed."
echo "Click Activate Wallet, enter the required node address and summary details, check the T&C box and proceed."
echo "Toggle the button to On to activate the Edge Node. The transcoding jobs will start and you will be earning rewards."
