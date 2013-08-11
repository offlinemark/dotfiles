#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

# make sure homebrew is up to date
brew update

# make sure everything is up to date
brew upgrade

# Install homebrew packages
brew install git
brew install htop
brew install irssi
brew install nmap
brew install tmux
brew install valgrind

exit 0
