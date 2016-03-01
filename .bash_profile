# Set PATH
export PATH=/usr/local/bin:$PATH

# Terminal: Show aliases
showa() { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }

# Terminal: Pretty Git highlighting in Terminal
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='\e[0;35m⌘\e[0;34m \w/\e[0m\e[0;32m$(parse_git_branch)\e[0m '

# Git: shortcuts
gits() {
  git status
}
gitc() {
  git checkout $1
}
gitcb() {
  git checkout -b $1
}
gitaa() {
  git add .
}
gitac() {
  git commit -m $1
}
gitp() {
  git push origin
}
gitpo() {
  git pull origin
}

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

# Chrome: Google a term from the command line
google() {
  local s="$_"
  local query=
    case "$1" in
      '')   ;;
      that) query="search?q=${s//[[:space:]]/+}" ;;
      *)    s="$*"; query="search?q=${s//[[:space:]]/+}" ;;
  esac
  open /Applications/Google\ Chrome.app/ "http://www.google.com/${query}"
}

# Finder: Show and hide hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles TRUE; killall Finder'
alias hideshown='defaults write com.apple.finder AppleShowAllFiles FALSE; killall Finder'

# http://superuser.com/questions/637312/uglifyjs-command-not-found
# export PATH=$PATH:/usr/local/share/npm/bin/

# nvm: Necessary for NVM https://github.com/creationix/nvm/issues/576
# export NVM_DIR=~/.nvm
# source ~/.nvm/nvm.sh
