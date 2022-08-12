#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install \
    build-essential python3-dev python3-venv libssl-dev libpq-dev \
    bzip2 xz-utils zlib1g libxml2-dev libxslt1-dev libpopt0 \
    libgpgme11 libdevmapper1.02.1 libguestfs-tools \
    git vim neovim zsh zsh-sytax-highlighting

# setup gh cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh

# setup nodejs v16.0 lts
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
sudo apt install -y nodejs

# setup vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
