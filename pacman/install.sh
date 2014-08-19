#!/bin/sh
#
# pacman
#
# This installs some of the common dependencies needed (or at least desired)
# using pacman

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

# make sure pacman is up to date
info "pacman update: make sure pacman is up to date\n"
sudo pacman -Syyu

# Install pacman packages

## basic utilities
info "pacman -S yaourt"
sudo pacman -S yaourt
info "pacman -S git"
sudo pacman -S git
info "pacman -S htop"
sudo pacman -S htop
info "pacman -S vim"
sudo pacman -S vim
info "pacman -S ctags"
sudo pacman -S ctags
info "pacman -S tmux"
sudo pacman -S tmux

## network tools
info "pacman -S nmap"
sudo pacman -S nmap
info "pacman -S netcat"
sudo pacman -S netcat

## c tools
info "pacman -S gdb"
sudo pacman -S gdb
info "pacman -S valgrind"
sudo pacman -S valgrind
info "pacman -S make"
sudo pacman -S make
info "pacman -S gcc"
sudo pacman -S gcc

success "everything was successful"

exit 0
