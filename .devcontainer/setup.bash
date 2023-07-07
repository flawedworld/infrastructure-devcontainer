#!/bin/bash

sudo apt update -y && \
sudo apt upgrade -y && \
sudo apt install ubuntu-advantage-tools -y && \
sudo pro attach $UBUNTUPRO && \
sudo pro enable usg && \
echo 'deb [signed-by=/usr/share/keyrings/nodesource.asc] https://deb.nodesource.com/node_20.x jammy main' | sudo dd of=/etc/apt/sources.list.d/nodesource.list && \
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource.gpg.key | sudo dd of=/usr/share/keyrings/nodesource.asc && \
sudo chmod go+r /usr/share/keyrings/nodesource.asc
echo 'deb [signed-by=/usr/share/keyrings/adoptium.asc] https://packages.adoptium.net/artifactory/deb jammy main' | sudo dd of=/etc/apt/sources.list.d/temurin.list && \
curl -fsSL https://packages.adoptium.net/artifactory/api/gpg/key/public | sudo dd of=/usr/share/keyrings/adoptium.asc && \
sudo chmod go+r /usr/share/keyrings/adoptium.asc
echo 'deb [signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main' | sudo dd of=/etc/apt/sources.list.d/github-cli.list && \
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg && \
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
sudo apt update -y && \
sudo apt install gh bash-completion sshpass sqlite3 temurin-20-jdk zopfli graphicsmagick qrencode zopfli brotli parallel libxml2-utils moreutils yajl-tools nodejs python3-venv -y
