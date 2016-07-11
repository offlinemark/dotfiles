source ~/.aliases
source ~/.abbr.fish

# env variables
set -g -x PATH . /usr/local/bin /usr/local/sbin $PATH ~/.dotfiles/bin
set -g -x fish_greeting ""
set -g -x EDITOR ~/.dotfiles/bin/e
set -g -x GOPATH ~/code/lang/go/gopath
set -g -x CFLAGS "-Wall -pedantic"

set -g fish_key_bindings fish_vi_key_bindings

# for vim airline
# set -g -x LC_ALL en_US.UTF8
# set -g -x LANG en_US.UTF8
