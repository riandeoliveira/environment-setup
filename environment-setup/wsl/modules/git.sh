#!/bin/bash

function install_git() {
  title "Installing Git"

  sudo apt install -y git

  git config --global user.name "Rian Oliveira"
  git config --global user.email "riandiasdeoliveira2001@gmail.com"
  git config --global core.autocrlf false
}
