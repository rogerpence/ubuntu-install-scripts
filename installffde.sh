#!/usr/bin/env bash

# Install the latest nightly FireFox Dev version. Run this script often! 

# Get the lastest FFDE version number.
curl -o releases.txt https://download-installer.cdn.mozilla.net/pub/devedition/releases/
VERSION=$(grep -o '[0-9][0-9]\.[0-9][a-z][0-9]' releases.txt | tail -1)    
rm releases.txt    

# Get download file name.
FILE=firefox-$VERSION.tar.bz2

# Create /opt/firefox-dev if it doesn't exist.
if [ ! -d "/opt/firefox-dev" ]
then 
    sudo mkdir /opt/firefox-dev
fi

# Get Firefox download.
curl -o $FILE https://download-installer.cdn.mozilla.net/pub/devedition/releases/$VERSION/linux-x86_64/en-US/$FILE

# If you don't get the file you specified, you get an HTML file with a 
#'404 Not found' text in it.
if grep -iq '404 Not found' $FILE 
then
    clear
    echo Error...
    echo $FILE did not download.
    rm $FILE
    exit 
fi

# Unzip the install file.
tar xvjf $FILE

# Clear the target directory.
sudo rm -rf /opt/firefox-dev/*

# Move the program files to the target directory.
sudo mv firefox/* /opt/firefox-dev

# Remove the unzipped install folder.
rm -rf firefox

# Remove the install file.
rm $FILE

echo Firefox Dev Ed $1 installed.
