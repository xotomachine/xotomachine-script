# ssh -XC root@IP-ADDRESS
# cd /
# git clone --recurse-submodules https://github.com/xotomachine/xotomachine-docker.git > /dev/null

######################################################

# PROFILE
echo 'EMAIL=xotomachine@gmail.com' >> /etc/environment
echo 'NAME=xotomachine' >> /etc/environment
echo 'USER_NAME=xotomachine' >> /etc/environment
echo 'USER_GROUP=machine' >> /etc/environment


echo 'USER_HOME=/home/xotomachine' >> /etc/environment
echo 'ZSH_CUSTOM=/home/xotomachine/.oh-my-zsh/custom' >> /etc/environment

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

sudo chmod a+x /xotomachine-docker/packages/xotomachine-script/setup/*.sh

sudo sh /xotomachine-docker/packages/xotomachine-script/setup/root.sh

######################################################

echo "FINISHED ~ 🍰"
echo "Complete script by running -> "
echo "1. su - ${USER_NAME}"
echo "2. sh /xotomachine-docker/packages/xotomachine-script/install.sh"
