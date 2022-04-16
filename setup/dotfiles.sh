###################################### CREATE FOLDER

sudo mkdir $USER_HOME/.config
sudo touch $USER_HOME/.zshrc
echo "source $USER_HOME/.config/.zshrc" >> $USER_HOME/.zshrc

###################################### COPY FILES

sudo git clone --recurse-submodules https://github.com/xotomachine/xotomachine-dotfiles.git $USER_HOME/.config > /dev/null
sudo git clone https://github.com/tmux-plugins/tpm ~/.config/.tmux/plugins/tpm
sudo chown $USER_NAME:${USER_GROUP} $USER_HOME/.config
