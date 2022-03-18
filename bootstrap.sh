#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y ansible zsh
ansible-galaxy install gantsign.antigen --force
ansible-playbook bootstrap.yaml -K -e my_username="$USER"
echo "Note: Restart your terminal to apply changes!"
