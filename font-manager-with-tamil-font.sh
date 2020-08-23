#!/bin/bash

#adding repository , updating the sources and installing font-manager silently
sudo add-apt-repository ppa:font-manager/staging -y
sudo apt-get update -y
sudo apt-get install font-manager -y

#Downloading bamini font
wget "https://tamilfont.net/wp-content/uploads/bamini.zip" -O ~/Downloads/bamini.zip
#unzipping the zip file downloaded
unzip ~/Downloads/bamini.zip
#creates a directory called fonts to store the bamini font TTF file
mkdir ~/fonts
#move the Bamini TTF file to the fonts directory
mv Bamini.TTF ~/fonts
#Remove all Bamini related files from Downloads
rm -v ~/Downloads/Bamini.TTF ~/Downloads/bamini.zip
#Launch the font-manager GUI
font-manager
