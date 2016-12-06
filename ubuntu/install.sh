echo 'Installing essential package for Ubuntu...'
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install fasd
sudo apt-get install git vim zsh wget curl python-pip python-dev cmake build-essential
chsh -s /usr/bin/zsh
echo 'Please logout the system to activate ZSH'
