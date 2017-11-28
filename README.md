```
# https://github.com/robbyrussell/oh-my-zsh/issues/3807
# source ~/.bash_profile

# http://stackoverflow.com/questions/23233603/how-to-load-bash-profile-when-entering-bash-from-within-zsh
if [ -f ~/.bashrc ]; then . ~/.bashrc; fi

# Git: Help with varification issues
export GIT_SSL_NO_VERIFY=true

# Git: Show 10 git branches I have worked on
alias gitrecent='git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(refname:short)"'

# Git: Helpers
gitc() { git checkout $1; }
gitdev() { git checkout develop; }
gitcb() { git checkout -b $1; }
gitp() { git pull origin $1; }
gitup() { git push origin $1; }
gita() { git add .; }
gitcm() { git commit -m $1; }
gits() { git status; }

# Finder: Show and hide hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hideshown='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'

# http://superuser.com/questions/637312/uglifyjs-command-not-found
export PATH=$PATH:/usr/local/share/npm/bin/

# nvm: Necessary for NVM https://github.com/creationix/nvm/issues/576
# export NVM_DIR=~/.nvm
# source ~/.nvm/nvm.sh
# alias nvmreload='source ~/.nvm/nvm.sh'

# Set the screen capture file type
defaults write com.apple.screencapture type jpg

# Set more frequent updates
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

```
