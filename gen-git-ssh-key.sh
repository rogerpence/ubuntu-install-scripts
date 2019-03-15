#!/usr/bin/env bash

ssh-keygen -t rsa -b 4096 -C "roger.pence@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
cat ~/.ssh/id_rsa.pub | xclip -sel clip

echo The public key is on the clipboard. 
echo Add public key to github then run 'test-git-ssh-key.sh'.






