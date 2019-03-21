#!/usr/bin/env bash

# https://github.com/Microsoft/vscode/issues/15529

# I can't find where this URL for the 64-bit Deb is docuemented 
# except at the link above--but it does seem to work.
curl -o code.deb -L http://go.microsoft.com/fwlink/\?LinkID\=760868   
sudo dpkg -i code.deb
rm code.deb 

# Bump maximux user watches up to 100,000. 
# See this article: 
# https://code.visualstudio.com/docs/setup/linux#_visual-studio-code-is-unable-to-watch-for-file-changes-in-this-large-workspace-error-enospc
sudo echo fs.inotify.max_user_watches=100000 >> /etc/sysctl.conf
sudo sysctl -p

# Do something about copying VS Code settings files here. 
