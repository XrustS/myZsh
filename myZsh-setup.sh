#! /bin/bash
# check and install zsh support CentOS, Fedora an debian like systems.
 pathZsh=$(which zsh)

 if [ $(which zsh) ] 
 then
 	test $SHELL != $pathZsh && chsh -s $pathZsh
 else
 	#if ubuntu ->
	if [ -e /etc/lsb-release ]
	then
	  sudo apt-get install zsh || echo "Install ---> zsh \nWhat's going wrong!" && exit 1 
	fi
	#if redh ->
	if [ -e /etc/redhat-release ]
	then 
	  sudo yum install zsh || echo "Install ---> zsh \nWhat's going wrong!" && exit 1
	  chsh -s $(which zsh)
	fi
 fi
#
# download antigen
echo ">>>>> Install Antigen"
 [ -d ~/.myZsh ] || git clone https://github.com/XrustS/myZsh.git ~/.myZsh
 curl -L git.io/antigen > ~/antigen.zsh
# download custom configure files
echo ">>>>> Copy cfg files"
  cp ~/.myZsh/.* ~
 # curl -L https://git.io/vbT07 > ~/.antigenrc
 # curl -L https://git.io/vbTEI > ~/powerline9krc
 # curl -L https://git.io/vbTEY > ~/.zshrc
echo ">>>>> Install complite!!! <<<<<<"
