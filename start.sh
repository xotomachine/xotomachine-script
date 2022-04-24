######################################################

# PROFILE
# Force encoding
echo 'EMAIL=xotomachine@gmail.com' >> /etc/environment
echo 'NAME=xotomachine' >> /etc/environment
echo 'USER_NAME=xotomachine' >> /etc/environment
echo 'USER_GROUP=machine' >> /etc/environment

# VERSIONS
echo 'NVM_VERSION=0.33.2' >> /etc/environment
echo 'NEOVIM_VERSION=0.7.0' >> /etc/environment
echo 'YARN_VERSION=1.8.0' >> /etc/environment
echo 'POSTGRES_VERSION=12' >> /etc/environment
echo 'JAVA_VERSION=11' >> /etc/environment
echo 'RUBBY_VERSION=2.1.1' >> /etc/environment
echo 'NERDS_FONT_VERSION=2.1.0' >> /etc/environment
echo 'FZF_VERSION=0.21.1' >> /etc/environment
echo 'GITSTATUS_VERSION=1.0.0' >> /etc/environment

# ENVIRONMENT VARS
echo 'DOTFILE_REPO=https://github.com/xotomachine/xotomachine-dotfiles.git' >> /etc/environment

######################################################

chmod a+x /xotomachine-docker/packages/xotomachine-script/setup/*.sh

sudo sh /xotomachine-docker/packages/xotomachine-script/setup/root.sh

su - $USER_NAME
cd ${USER_HOME}

sudo sh /xotomachine-docker/packages/xotomachine-script/setup/apts.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/language.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/database.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/zsh.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/dotfiles.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/package.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/ccat.sh

cp -g $USER_GROUP -o $USER_NAME /xotomachine-docker/packages/xotomachine-script/setup/ccat /usr/local/bin/

sudo sh /xotomachine-docker/packages/xotomachine-script/setup/clean.sh

zsh

######################################################
