#!/bin/bash

function install_node() {
  title "Installing Node"

  sudo apt install -y xdg-utils

  git clone https://github.com/nvm-sh/nvm.git ~/.nvm

  /bin/zsh -c "source ~/.nvm/nvm.sh && nvm install --lts && npm install -g yarn && npm install -g pnpm"

  sed -i '/source $ZSH\/oh-my-zsh.sh/a source ~/.nvm/nvm.sh' ~/.zshrc
}
