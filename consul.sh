#!/bin/bash

sudo apt-get -y install unzip
curl https://releases.hashicorp.com/consul/1.0.7/consul_1.0.7_linux_amd64.zip -o consul.zip
unzip consul.zip
sudo chmod +x consul
sudo mv consul /usr/bin/consul
rm consul.zip