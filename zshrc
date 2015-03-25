source ~/dotfiles/antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
git
git-flow-avh
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
zsh-users/zsh-completions

# olivierverdier/zsh-git-prompt
EOBUNDLES

# antigen theme robbyrussell
# antigen theme bira
# antigen theme cypher
# antigen theme lambda

antigen apply

###############
#    PROMT    #
###############

function git_prompt() {
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    echo "[%{$FG[012]%}${ref#refs/heads/}%{$reset_color%}-%{$fg[yellow]%}$(git_prompt_short_sha)%{$reset_color%}]$(parse_git_dirty)"
  fi
}

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗ %{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" "

# add git_super_status from zsh-git-prompt
PROMPT='->[$(hostname)] %~/ %{$reset_color%}
λ $(git_prompt)'

###############
#    ALIAS    #
###############

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
hash -d gdrive=/Volumes/jetdrive/GoogleDrive
hash -d jdrive=/Volumes/jetdrive

alias start_psql="pg_ctl -D /usr/local/var/postgres start"
alias start_memcached="memcached -d"
alias start_mysql="mysql.server start"


###############
#   GENERAL   #
###############
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

set -o vi

###############
#    PATH     #
###############

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=$HOME/bin:$PATH

# For golang
export GOPATH=$HOME/GoProjects
export PATH=$PATH:$GOPATH/bin

export PYLEARN2_DATA_PATH=~/Research/pl_data

# Android SDK
export PATH=${PATH}:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools

###############
#     FZF     #
###############

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -l -g ""'

# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

###############
#    LPASS    #
###############

# LastPass Alfred Workflow
# https://github.com/bachya/lp-vault-manager#preventing-future-master-login-requests
export LPASS_AGENT_TIMEOUT=0

PERL_MB_OPT="--install_base \"/Users/lazywei/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/lazywei/perl5"; export PERL_MM_OPT;
