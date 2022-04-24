######################################################

# PROFILE
export EMAIL="xotomachine@gmail.com"
export NAME="xotomachine"
export USER_NAME="xotomachine"
export USER_GROUP="machine"

# VERSIONS
export NVM_VERSION="0.33.2"
export NEOVIM_VERSION="0.7.0"
export YARN_VERSION="1.8.0"
export POSTGRES_VERSION="12"
export JAVA_VERSION="11"
export RUBBY_VERSION="2.1.1"
export NERDS_FONT_VERSION="2.1.0"
export FZF_VERSION="0.21.1"
export GITSTATUS_VERSION="1.0.0"

# ENVIRONMENT VARS
export DOTFILE_REPO="https://github.com/xotomachine/xotomachine-dotfiles.git"

######################################################

chmod a+x ./setup/*.sh

sudo sh ./setup/root.sh

sudo su - $USER_NAME
cd ${USER_HOME}

sudo sh ./setup/apts.sh
sudo sh ./setup/language.sh
sudo sh ./setup/database.sh
sudo sh ./setup/zsh.sh
sudo sh ./setup/dotfiles.sh
sudo sh ./setup/package.sh
sudo sh ./setup/ccat.sh

cp -g $USER_GROUP -o $USER_NAME ./setup/ccat /usr/local/bin/

sudo sh ./setup/clean.sh
zsh

######################################################
