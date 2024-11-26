#!/bin/bash
sudo sed -i "s/^#\\?\\$nrconf{restart} = '.*';/\\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf
sudo apt update
sudo DEBIAN_FRONTEND=noninteractive apt upgrade -y
sudo DEBIAN_FRONTEND=noninteractive apt install sshpass -y
sudo DEBIAN_FRONTEND=noninteractive apt install ansible -y
