#!/bin/bash

sudo add-apt-repository -y ppa:git-core/ppa
sudo apt update -y
sudo apt install -y git

git --version