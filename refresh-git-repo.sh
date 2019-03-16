#!/usr/bin/env bash

today=`date +%Y-%m-%d.%H:%M:%S`

mkdir vscode -p
cp ~/.config/Code/User/settings.json ./vscode

git cm $today
