#!/bin/bash

yum install -y git tree vim zsh bc

echo "vagrant" | chsh -s /bin/zsh

bash < <( curl https://raw.github.com/ammonkc/dotfiles/linux/bootstrap.sh )
