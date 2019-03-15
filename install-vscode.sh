#!/usr/bin/env bash

# https://github.com/Microsoft/vscode/issues/15529

# I can't find where this URL for the 64-bit Deb is docuemented 
# except at the link above--but it does seem to work.
curl -o code.deb -L http://go.microsoft.com/fwlink/\?LinkID\=760868   
sudo dpkg -i code.deb
rm code.deb 