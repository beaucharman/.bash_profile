# Git: Help with varification issues
export GIT_SSL_NO_VERIFY=true

# npm: shortcuts
npmi() {
	npm install $1
}

npmig() {
  npm install $1 -g
}

npmis() {
  npm install $1 --save
}

npmisd() {
  npm install $1 --save-dev
}

npmrefresh() {
  rm -rf node_modules/ && npm install
}

# Finder: Show and hide hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hideshown='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'

# http://superuser.com/questions/637312/uglifyjs-command-not-found
export PATH=$PATH:/usr/local/share/npm/bin/

# nvm: Necessary for NVM https://github.com/creationix/nvm/issues/576
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh
alias nvmreload='source ~/.nvm/nvm.sh'

# Set the screen capture file type
defaults write com.apple.screencapture type jpg

# Set more frequent updates
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
