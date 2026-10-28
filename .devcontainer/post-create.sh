#!/usr/bin/env sh

## Install required packages
# Update packages list
sudo apt update

# Install network utilities (dig, nslookup, ping, ncat)
sudo apt install --yes dnsutils iputils-ping ncat

# Install packages to interact with SQLite databases
sudo apt install --yes sqlite3 php-sqlite3

# Install PHP and Composer
sudo apt install --yes php-common php-cli php-mysql php-xml php-bcmath composer
