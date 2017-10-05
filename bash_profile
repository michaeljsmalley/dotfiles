export NVM_DIR="/Users/greggmeluski/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper_lazy.sh

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=./node_modules/.bin:$PATH
alias stageHistory='code-push deployment history SCApp-ios Staging'
alias prodHistory='code-push deployment history SCApp-ios Production'
alias releaseIos='code-push promote SCApp-ios Staging Production'
alias gotoRelease='cd ~/simplecontacts/SCApp-2.4'
