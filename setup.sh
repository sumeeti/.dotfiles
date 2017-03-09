#!/bin/sh
#
# This tries to set things up. It will not do everything. Nobody can do everything.

echo "source ~/.dotfiles/bashrc" >> ~/.bashrc

brew help 1>2
if [[ 127 = $? ]]
then
  echo "Installing brew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

mkdir -p ~/workplace/executables

brew_if() {
  if [[ $(brew ls --versions $1) ]]
  then
    echo "$1 is already installed."
  else
    echo "installing $1"
    brew install $1
  fi
}

# Brew things
brew_if coreutils
brew_if postgresql
brew_if wget
brew_if tree
brew_if tig
brew_if sshfs
brew_if tmux
brew_if mutt
brew_if lynx

add_to_executables() {
  if [ ! -f ~/workplace/executables/$1]
  then
    wget -O ~/workplace/executables/$1 $2
    chmod +x ~/workplace/executables/$1
  fi
}

# Subtitle script
add_to_executables subtitle-downloader https://raw.githubusercontent.com/manojmj92/subtitle-downloader/master/subtitle-downloader.py
# Speed Test
add_to_executables speedtest https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py
# Memory check
add_to_executables freecheck http://myunixdiary.weebly.com/uploads/7/4/6/9/7469689/free.py.txt
# Subtitle sync
add_to_executables srt https://raw.githubusercontent.com/riobard/srt.py/master/srt.py
# Mailqun help script
add_to_executables mailqun https://raw.githubusercontent.com/harman28/mailqun/master/mailqun


