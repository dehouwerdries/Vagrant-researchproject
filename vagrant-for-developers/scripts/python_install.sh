#!/bin/bash

sudo apt update -y 
sudo add-apt-repository  -y ppa:deadsnakes/ppa 
sudo  apt install -y python3.9 
sudo useradd -s /bin/bash -d /home/ansible/ -m -G sudo ansible