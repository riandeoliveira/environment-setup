#!/bin/bash

source wsl/modules/curl.sh
source wsl/modules/docker.sh
source wsl/modules/dotnet.sh
source wsl/modules/git.sh
source wsl/modules/make.sh
source wsl/modules/node.sh
source wsl/modules/ohmyzsh.sh
source wsl/modules/vim.sh

source wsl/utils/functions.sh

start_setup

install_curl
install_vim
install_make
install_git

# FIXME: A instalação do Oh My Zsh interrompe as seguintes, pois cria um novo terminal
# FIXME: O Oh My Zsh requer mais testes

install_ohmyzsh

install_node
install_dotnet
install_docker

end_setup
