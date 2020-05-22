#!/bin/bash

curl -s -O https://releases.hashicorp.com/vagrant/2.2.9/vagrant_2.2.9_x86_64.deb
sudo apt install -y ./vagrant_2.2.9_x86_64.deb
vagrant --version