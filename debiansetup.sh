#!/bin/bash

sudo apt update && sudo apt upgrade -y

sudo apt install \
    build-essential curl python3-dev python3-venv libssl-dev libpq-dev \
    bzip2 xz-utils zlib1g libxml2-dev libxslt1-dev libpopt0 \
    libgpgme11 libdevmapper1.02.1 libguestfs-tools \
    git vim neovim flameshot zsh zsh-syntax-highlighting

# setup gh cli
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update && sudo apt install gh -y

# setup nodejs v16.0 lts
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
sudo apt install -y nodejs

# setup vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
bash ~/.vim_runtime/install_awesome_vimrc.sh

# setup zsh
curl -sO "https://raw.githubusercontent.com/lf32/DOT/main/zsh/.zshenv"
curl -sO "https://raw.githubusercontent.com/lf32/DOT/main/zsh/.zshrc"
chsh -s /bin/zsh

# setup gitconfig
curl -sO "https://raw.githubusercontent.com/lf32/DOT/main/git/.gitconfig"
curl -sO "https://raw.githubusercontent.com/lf32/DOT/main/git/.gittemplate"

# setup sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text -y




