#!/usr/bin/env bash

cp backup-vscode.sh ./vscode/
cp ~/.config/Code/User/keybindings.json ./vscode/  
cp ~/.config/Code/User/settings.json ./vscode/
cp -r ~/.config/Code/User/snippets/ vscode/snippets/
code --list-extensions --show-versions > vscode/vsc-extensions.txt

#export fd=$(date '+%Y-%m-%dT%H:%M:%S')
git cm backup-$(date '+%Y-%m-%dT%H:%M:%S')
git push 



