echo 'Installing essential packages'

if [ "$(uname -s)" == "Darwin" ]; then
  if [ ! -s /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  brew install git vim ack tmux
  chsh -s /bin/zsh
else
  sudo add-apt-repository ppa:aacebedo/fasd
  sudo apt-get update
  sudo apt-get install fasd
  sudo apt-get install git vim zsh wget curl python-pip python-dev python-tk cmake build-essential tmux ruby libbluetooth-dev
  pip install pybluez
  chsh -s /usr/bin/zsh
fi

echo 'Please logout the system to activate ZSH'
