# LOGIN AS $USERNAME AND RUN :
# sh /xotomachine-docker/packages/xotomachine-script/user-install.sh

######################################################

cd ~

sudo sh /xotomachine-docker/packages/xotomachine-script/env.sh
sudo chmod a+x /xotomachine-docker/packages/xotomachine-script/*.sh
sudo chmod a+x /xotomachine-docker/packages/xotomachine-script/setup/*.sh

######################################################

sudo sh /xotomachine-docker/packages/xotomachine-script/setup/apts.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/language.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/database.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/zsh.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/dotfiles.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/package.sh
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/ccat.sh

cp -g $USER_GROUP -o $USER_NAME /xotomachine-docker/packages/xotomachine-script/setup/ccat /usr/local/bin/
sudo sh /xotomachine-docker/packages/xotomachine-script/setup/clean.sh

######################################################
