# env variables

set -g -x PATH /usr/local/bin /usr/local/sbin $PATH ~/.dotfiles/bin
set -g -x fish_greeting (smile.py)
set -g -x EDITOR /usr/bin/vim
# for vim airline
# set -g -x LC_ALL en_US.UTF8
# set -g -x LANG en_US.UTF8

# aliases

##listing files
alias l="ls -lGH"
alias lt="ls -ltGH"
alias la="ls -laGH"
alias lr="ls -lRGH"

##quickly edit fish config
alias editconf="vim ~/.config/fish/config.fish"

##moving around
alias cdd="cd ~/Desktop"
alias cddd="cd ~/Deskdrawer"
alias ..="pwd; cd ..; pwd; ls -lG"
alias code="cd ~/code"
alias school="cd ~/school"
alias cddot="cd ~/.dotfiles"

##misc
alias cl="clear; pwd; l"
alias mv="mv -v"
alias copy="tr -d \"\\n\" | pbcopy"
alias clearlogs="sudo rm -v /private/var/log/asl/*.asl"
alias thop="sudo htop"
# scoops everything from my ~/desktop into my ~/deskdrawer
alias scoop="mv ~/Desktop/* ~/deskdrawer"
# unscoops everything from the ~/deskdrawer to the ~/desktop (usually temporarily)"
alias unscoop="mv ~/Deskdrawer/* ~/Desktop"
alias rmd="rm -rf"
alias public="curl http://canihazip.com/s/; echo ''"
alias burp="sudo networksetup -setwebproxystate Wi-Fi on; sudo networksetup -setsecurewebproxystate Wi-Fi on; burpsuite"
alias burpoff="sudo networksetup -setwebproxystate Wi-Fi off; sudo networksetup -setsecurewebproxystate Wi-Fi off"
alias apache="sudo apachectl start"
alias apacheoff="sudo apachectl stop"
alias apachegraceful="sudo apachectl graceful"
alias apacherestart="sudo apachectl restart"
alias mysql="/Applications/MAMP/Library/bin/mysql"

##ssh
alias sshtunnel="sudo networksetup -setsocksfirewallproxystate Wi-fi on; ssh -D 8080 -C -N markmoss@asterix.ccs.neu.edu"
alias sshtunneloff="sudo networksetup -setsocksfirewallproxystate Wi-fi off"

##python
alias nt="nosetests"
alias veinit="virtualenv venv; veon"
alias veon=". venv/bin/activate.fish"
alias veoff="deactivate"
