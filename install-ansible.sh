#!/usr/bin/env bash

# Install ansible

sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible 
