#!/usr/bin/env bash

today=`date +%Y-%m-%d.%H:%M:%S`

mkdir vscode -p
mkdir vscode/snippets -p
mkdir root -p
mkdir git -p

# Copy Visual Studio Code settings file. 
cp ~/.config/Code/User/*.json ./vscode
cp ~/.config/Code/User/snippets/*.json ./vscode/snippets

# Copy Bash/zsh dot files. 
cp ~/.rp_bashrc ./root
cp ~/.bashrc ./root
cp ~/.zshrc ./root

# See this StackExchange answer on changing attribute-driven terminal colors. 
# https://unix.stackexchange.com/questions/241726/fix-ls-colors-for-directories-with-777-permission
cp ~/.dircolors ./root 

# Copy Git files.
cp ~/.gitconfig ./git 

git cm $today
git push


