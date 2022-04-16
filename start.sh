######################################################

# PROFILE
export EMAIL="xotoguest@gmail.com"
export NAME="xotoguest"
export USER_NAME="xotoguest"
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

# REPO_PATH
export REPO_PATH="packages/xotomachine-script/setup"

######################################################

chmod a+x /setup/*.sh

sh /setup/root.sh

su - $USER_NAME
cd ${USER_HOME}

sh /setup/apts.sh
sh /setup/language.sh
sh /setup/database.sh
sh /setup/zsh.sh
sh /setup/dotfiles.sh
sh /setup/package.sh
sh /setup/ccat.sh

cp -g $USER_GROUP -o $USER_NAME ./setup/ccat /usr/local/bin/

sh /setup/clean.sh
zsh

######################################################
