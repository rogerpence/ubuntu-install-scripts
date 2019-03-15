#!/usr/bin/env bash

mkdir /home/roger/.fonts -p

wget https://github.com/abertsch/Menlo-for-Powerline/raw/master/Menlo%20for%20Powerline.ttf -O Menlo-for-Powerline.ttf
cp Menlo-for-Powerline.ttf ~/.fonts

wget https://www.fontsquirrel.com/fonts/download/source-code-pro -O source-code-pro.zip
unzip source-code-pro.zip -d scp
cp scp/*.otf ~/.fonts

wget https://github.com/tonsky/FiraCode/raw/master/distr/otf/FiraCode-Regular.otf 
cp FiraCode-Regular.otf ~/.fonts

fc-cache -vf ~/.fonts

rm -rf scp 
rm *.zip 
rm *.ttf