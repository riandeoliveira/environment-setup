#!/bin/bash

function end_setup() {
  echo ""
  echo "=================================================================="
  echo "                   SETUP COMPLETED SUCCESSFULLY                   "
  echo "=================================================================="
}

function header() {
  echo "=================================================================="
  echo "                     LINUX ENVIRONMENT SETUP!                     "
  echo "=================================================================="
  echo ""
}

function request_password() {
    IS_PASSWORD_CORRECT=false
    
    while [ $IS_PASSWORD_CORRECT == false ]; do
        sudo -v &> /dev/null

        if [ $? -eq 0 ]; then
            IS_PASSWORD_CORRECT=true
        else
          exit 1
        fi
    done
}

function start_setup() {
  request_password
  
  clear
  
  header

  sudo apt update -y
  sudo apt upgrade -y
}

function title() {
  echo ""
  echo "==================== $1 ..."
  echo ""
}
