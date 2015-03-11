source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
git
heroku
pip
command-not-found

brew
npm
bower
docker
urltools # urlencode

osx
terminalapp

zsh-users/zsh-syntax-highlighting

olivierverdier/zsh-git-prompt
EOBUNDLES

# antigen theme robbyrussell
# antigen theme bira
# antigen theme cypher
# antigen theme lambda

antigen apply

# ZSH Theme - Preview: http://cl.ly/350F0F0k1M2y3A2i3p1S
# add git_super_status from zsh-git-prompt
PROMPT='-> %~/ %{$reset_color%}
[λ $(hostname)] $(git_super_status)'
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
###############################

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
hash -d gdrive=/Volumes/jetdrive/GoogleDrive
hash -d jdrive=/Volumes/jetdrive

alias start_psql="pg_ctl -D /usr/local/var/postgres start"
alias start_memcached="memcached -d"
alias start_mysql="mysql.server start"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

export EDITOR=/usr/local/bin/vim

# ---- Set Path ----

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=$HOME/bin:$PATH

# For golang
export GOPATH=$HOME/GoProjects
export PATH=$PATH:$GOPATH/bin

export PYLEARN2_DATA_PATH=~/Research/pl_data

# Android SDK
export PATH=${PATH}:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools

# LastPass Alfred Workflow
# https://github.com/bachya/lp-vault-manager#preventing-future-master-login-requests
export LPASS_AGENT_TIMEOUT=0
