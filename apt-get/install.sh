#!/bin/sh
#
# apt-get
#
# This installs some of the common dependencies needed (or at least desired)
# using apt-get

info () {
  printf "  [ \033[00;34m..\033[0m ] $1"
}

user () {
  printf "\r  [ \033[0;33m?\033[0m ] $1 "
}

success () {
  printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
  printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
  echo ''
  exit
}

# make sure apt-get is up to date
info "apt-get update: make sure apt-get is up to date\n"
sudo apt-get update

# make sure everything is up to date
info "apt-get upgrade: make sure everything is up to date\n"
sudo apt-get upgrade

# Install apt-get packages

## basic utilities
info "apt-get install git"
sudo apt-get install git
info "apt-get install htop"
sudo apt-get install htop
info "apt-get install irssi"
sudo apt-get install irssi
info "apt-get install ctags"
sudo apt-get install ctags

## network tools
info "apt-get install nmap"
sudo apt-get install nmap
info "apt-get install netcat"
sudo apt-get install netcat

## c tools
info "apt-get install gdb"
sudo apt-get install gdb
info "apt-get install valgrind"
sudo apt-get install valgrind

success "everything was successful"

exit 0
