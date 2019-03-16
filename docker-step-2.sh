#!/usr/bin/env bash

sudo apt-get update

# The Docker instructions say to do this: 
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"
# where $(lsb_release -cs) resolves to `tessa` on Linux Mint 19.1.
# There isn't a repository entry for tessa,  so fetch the `bionic` 
# version for Unbuntu 18.04 (which is what Linux Mint 19.1 is based on).

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo usremod -aG $USER docker 
sudo gpasswd -a $USER docker

# The above does not install docker-compose from the repositories. That gets an older version. Fetch the one 
# you needed directly as shown below. The version of docker-compose is hard-coded in the line below (1.23.2)
# Get the current release number here:
# https://github.com/docker/compose/tags

sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

docker --version
docker-compose --version
docker run hello-world 