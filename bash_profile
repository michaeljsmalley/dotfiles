parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

export NVM_DIR="/Users/greggmeluski/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper_lazy.sh

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=./node_modules/.bin:$PATH

# Simple Contacts stuff
alias stageHistory='code-push deployment history SCApp-ios Staging'
alias prodHistory='code-push deployment history SCApp-ios Production'
alias releaseIos='code-push promote SCApp-ios Staging Production'
alias gotoRelease='cd ~/simplecontacts/SCApp-2.4'
