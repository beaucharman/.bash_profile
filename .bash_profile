
#  ---------------------------------------------------------------------------
#
#  Description: This file holds all my BASH configurations and aliases
#  https://github.com/robbyrussell/oh-my-zsh/issues/3807
#  source ~/.bash_profile
#
#  Sections:
#  1.  Environment Configuration
#  2.  Make Terminal Better (remapping defaults and adding functionality)
#  3.  File and Folder Management
#  4.  Searching
#  5.  Process Management
#  6.  Networking
#  7.  System Operations & Information
#  8.  Web Development
#  9.  Reminders & Notes
#
#  ---------------------------------------------------------------------------


#   -------------------------------
#   0. MISC
#   -------------------------------

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

# -------------------------------
# 1. ENVIRONMENT CONFIGURATION
# -------------------------------

# Change Prompt
# ------------------------------------------------------------
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="🦄 ⌘ (\W)\033[32m\]\$(parse_git_branch)\[\033[00m\] ➜ "

# Set Paths
# ------------------------------------------------------------
  export PATH="$PATH:/usr/local/bin/"
  export PATH="$PATH:/usr/local/share/npm/bin/" # http://superuser.com/questions/637312/uglifyjs-command-not-found
  export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"

# Set Default Editor (change 'Nano' to the editor of your choice)
# ------------------------------------------------------------
  export EDITOR=/usr/bin/atom

# nvm: Necessary for NVM https://github.com/creationix/nvm/issues/576
# export NVM_DIR=~/.nvm
# source ~/.nvm/nvm.sh
# alias nvmreload='source ~/.nvm/nvm.sh'

# Set the screen capture file type
  defaults write com.apple.screencapture type jpg

# Set more frequent updates
  defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1
