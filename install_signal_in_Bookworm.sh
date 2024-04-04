#!/usr/bin/env bash

# NOTE: for 64-bit Debian-based
# Linux distributions based on Debian such as Ubuntu, Mint etc.

# Install official public software signing key:
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null

# Add our repository to your list of repositories:
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' | sudo tee /etc/apt/sources.list.d/signal-xenial.list

# Update pkgc dbase and install Signal:
sudo apt update -y 
sudo apt install signal-desktop

########################################################
 # End of script
 
 sudo apt autoremove

 printf "\e[1;32mYou are finished with install! Thanks you.\e[0m\n"
