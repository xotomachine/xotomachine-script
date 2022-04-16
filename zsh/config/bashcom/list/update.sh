#!/bin/bash

# UPDATE ALL
function ba.updateall() {
	echo "brew list and updates"
	echo " -----------------"
	echo " "
	brew list
	sudo brew update
	sudo brew cask update
	echo " "
	echo "antigen list and updates"
	echo " -----------------"
	echo " "
	sudo antigen update
	echo " "
	echo "gem list and updates"
	echo " -----------------"
	echo " "
	gem list
	sudo gem update
	echo " "
	echo "ZSH updates"
	echo " -----------------"
	echo " "
	upgrade_oh_my_zsh
	echo " "
	echo "npm list and updates"
	echo " -----------------"
	echo " "
	npm list -g --depth=0
	sudo npm update -g
	echo " "
	echo " -----------------"
	echo "MORE TO CHECK "
	echo " -----------------"
	echo " "
	sudo npm-check -u -g
	echo " "
	echo "DONE ~"
	echo " "
	echo " "
	echo " "
	echo " "
	echo " "
	#backup dot files
	# while true; do
	#   read -p "do you wish to backup dot files?" yn
	#   case $yn in
	#   [Yy]*) echo " NOW BACKING UP ALL DOT FILES IN :  " && clean.backupdot && break ;;
	#   [Nn]*) exit ;;
	#   *) echo "Please answer yes or no." ;;
	#   esac
	# done
	# echo " "
	# echo " "
	# echo "DONE ~ "
	echo " "
	echo " "
	# brew bundle backup
	# while true; do
	#   read -p "do you wish to perform a brew bundle DUMP and CHECK;?" yn
	#   case $yn in
	#   [Yy]*) echo " NOW BACKING UP ALL BREW FILES IN :  " && brew bundle check && brew bundle dump && break ;;
	#   [Nn]*) exit ;;
	#   *) echo "Please answer yes or no." ;;
	#   esac
	# done
	# echo " "
	# echo " "
	# echo "DONE ~"
	echo " "
	echo " "
}
