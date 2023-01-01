#!/bin/bash

echo "Installing Terminal Markdown Viewer"
sudo apt install lynx w3m pandoc && chmod +x md.sh && sudo cp -v md.sh /usr/local/bin/md && echo "\u001b[32mSuccessfully Installed!" && exit
echo -e "\u001b[31mAn error ocurred!!\nPlease try installing the dependencies manually and use `install-other.sh` to install the program"
