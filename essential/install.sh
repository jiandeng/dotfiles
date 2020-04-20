echo 'Installing essential packages'

if [ "$(uname -s)" == "Darwin" ]; then
  if [ ! -s /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  fi

  if [ ! -s /usr/local/bin/pip ]; then
    ln -s /usr/local/bin/pip3 /usr/local/bin/pip
  fi

  brew install colordiff git vim ack tmux cmake protobuf protobuf-c global
  chsh -s /bin/zsh
else
  sudo add-apt-repository ppa:aacebedo/fasd
  sudo apt-get update
  sudo apt-get install fasd ack-grep
  sudo apt-get install colordiff git vim zsh wget curl python-pip python-dev python-tk cmake build-essential tmux ruby libbluetooth-dev global
  pip install pybluez
  chsh -s /usr/bin/zsh
fi

echo 'Please logout the system to activate ZSH'
