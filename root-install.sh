# ssh -XC root@IP-ADDRESS
# cd /
# git clone --recurse-submodules https://github.com/xotomachine/xotomachine-docker.git > /dev/null

######################################################

sudo sh /xotomachine-docker/packages/xotomachine-script/env.sh
sudo chmod a+x /xotomachine-docker/packages/xotomachine-script/*.sh
sudo chmod a+x /xotomachine-docker/packages/xotomachine-script/setup/*.sh

######################################################

sudo sh /xotomachine-docker/packages/xotomachine-script/setup/root.sh

######################################################

echo "FINISHED ~ 🍰"
echo "Complete script by running -> "
echo "1. su - $USER_NAME"
echo "2. sh /xotomachine-docker/packages/xotomachine-script/user-install.sh"
