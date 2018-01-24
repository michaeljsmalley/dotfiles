# show git branch on the command line
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "


# use this if git-bash-prompt installed
# https://github.com/magicmonty/bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="/Users/greggmeluski/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper_lazy.sh

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=./node_modules/.bin:$PATH

#common commands
alias findPackager='lsof -i :8081'

# Simple Contacts stuff
alias stageIos='code-push deployment history rquigley/SCApp-ios Staging'
alias prodIos='code-push deployment history rquigley/SCApp-ios Production'
alias stageAndroid='code-push deployment history rquigley/SCApp-android Staging'
alias prodAndroid='code-push deployment history rquigley/SCApp-android Production'
alias releaseAll='code-push promote rquigley/SCApp-android Staging Production && code-push promote rquigley/SCApp-ios Staging Production'
alias gotoRelease='cd ~/simplecontacts/SCApp-2.5'

alias deployStaging='ansible-playbook --inventory-file=staging deploy_website.yml'
alias deployProduction='ansible-playbook --inventory-file=production deploy_website.yml'

