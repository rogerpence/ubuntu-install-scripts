#!/usr/bin/env bash 

curl https://sh.rustup.rs -sSf | sh

# Till the date of publication of this article, the latest available download version is the 0.8.0
wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip

unzip exa-linux-x86_64-0.8.0.zip

# Move the unziped binary with the name "exa-linux-x86_64" to "/usr/local/bin/" with the exa name
sudo mv exa-linux-x86_64 /usr/local/bin/exa