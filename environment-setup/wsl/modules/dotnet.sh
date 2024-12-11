#!/bin/bash

function install_dotnet() {
  title "Installing .NET"

  sudo apt install -y dotnet-sdk-8.0

  dotnet tool install --global dotnet-ef --version 8.*

  export PATH="$PATH:/home/$(whoami)/.dotnet/tools/"
}
