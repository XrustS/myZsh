#!/bin/bash
# check and install zsh support CentOS, Fedora an debian like systems.
 sudo which zsh || yum install zsh || apt-get install zsh || echo "Whats going wrong!" && exit 1
 sudo chsh -s $(which zsh)
#
# download antigen
 echo "Install Antigen"
 curl -L git.io/antigen > ~/antigen.zsh
# download custom configure files
 curl -L https://git.io/vbT07 > ~/antigenrc
 curl -L https://git.io/vbTEI > ~/powerline9krc
 curl -L https://git.io/vbTEY > ~/.zshrc
echo ">>>>> Install complite!!! <<<<<<"