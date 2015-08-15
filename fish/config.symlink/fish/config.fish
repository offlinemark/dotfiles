source ~/.aliases

# env variables
set -g -x PATH . /usr/local/bin /usr/local/sbin $PATH ~/.dotfiles/bin /usr/local/heroku/bin
set -g -x fish_greeting ""
set -g -x EDITOR ~/.dotfiles/e
set -g -x GOPATH ~/code/lang/go/gopath

# for vim airline
# set -g -x LC_ALL en_US.UTF8
# set -g -x LANG en_US.UTF8
