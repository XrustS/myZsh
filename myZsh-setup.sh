#! /bin/bash
# check and install zsh support CentOS, Fedora an debian like systems.
 # which zsh || yum install zsh || apt-get install zsh || echo "What's going wrong!" && exit 1
 # sudo chsh -s $(which zsh)
#
# download antigen
 echo ">>>>> Install Antigen"
 git clone https://github.com/XrustS/myZsh.git ~/.myZsh
 curl -L git.io/antigen > ~/antigen.zsh
# download custom configure files
echo ">>>>> Copy cfg files"
  cp ~/.myZsh/* ~
 # curl -L https://git.io/vbT07 > ~/.antigenrc
 # curl -L https://git.io/vbTEI > ~/powerline9krc
 # curl -L https://git.io/vbTEY > ~/.zshrc
echo ">>>>> Install complite!!! <<<<<<"
