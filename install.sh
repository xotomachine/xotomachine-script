# LOGIN AS $USERNAME AND RUN :

######################################################

sh /xotomachine-docker/packages/xotomachine-script/setup/apts.sh
sh /xotomachine-docker/packages/xotomachine-script/setup/language.sh
sh /xotomachine-docker/packages/xotomachine-script/setup/database.sh
sh /xotomachine-docker/packages/xotomachine-script/setup/zsh.sh
sh /xotomachine-docker/packages/xotomachine-script/setup/dotfiles.sh
sh /xotomachine-docker/packages/xotomachine-script/setup/package.sh
sh /xotomachine-docker/packages/xotomachine-script/setup/ccat.sh

cp -g $USER_GROUP -o $USER_NAME /xotomachine-docker/packages/xotomachine-script/setup/ccat /usr/local/bin/

sh /xotomachine-docker/packages/xotomachine-script/setup/clean.sh
rm -rf /etc/environment

zsh

######################################################
