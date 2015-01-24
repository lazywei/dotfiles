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
PROMPT='λ %~/ $(git_super_status)%{$reset_color%}'
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
# export GOPATH=$HOME
# export PATH=$PATH:$GOPATH/bin

# export DISABLE_AUTO_TITLE=true

eval "$(direnv hook zsh)"

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/lazywei/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

stty stop undef # to unmap ctrl-s

# Ref: https://ruby-china.org/topics/19748
# export CONFIGURE_OPTS='--disable-dtrace'

# Start fzf configuration

. `brew --prefix`/etc/profile.d/z.sh
#
# # Setting ag as the default source for fzf
# export FZF_DEFAULT_COMMAND='ag -l -g ""'
# export FZF_DEFAULT_OPTS='-x -m --sort 10000'
#
# # fe [FUZZY PATTERN] - Open the selected file with the default editor
# #   - Bypass fuzzy finder if there's only one match (--select-1)
# #   - Exit if there's no match (--exit-0)
# fe() {
#   local file
#   file=$(fzf --query="$1" --select-1 --exit-0)
#   [ -n "$file" ] && ${EDITOR:-vim} "$file"
# }
#
# # Equivalent to above, but opens it with `open` command
# fo() {
#   local file
#   file=$(fzf --query="$1" --select-1 --exit-0)
#   [ -n "$file" ] && open "$file"
# }
#
#
# # fd - cd to selected directory
# fd() {
#   local dir
#   dir=$(find ${1:-*} -path '*/\.*' -prune \
#                   -o -type d -print 2> /dev/null | fzf +m) &&
#   cd "$dir"
# }
#
# # fda - including hidden directories
# fda() {
#   local dir
#   dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
# }
#
# # cdf - cd into the directory of the selected file
# cdf() {
#    local file
#    local dir
#    file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
# }
#
# # fh - repeat history
# fh() {
#   print -z $(([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s | sed 's/ *[0-9]* *//')
# }
#
# # fkill - kill process
# fkill() {
#   ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9}
# }
#
# unalias z
# z() {
#   if [[ -z "$*" ]]; then
#     cd "$(_z -l 2>&1 | sed -n 's/^[ 0-9.,]*//p' | fzf)"
#   else
#     _z "$@"
#   fi
# }

export PYLEARN2_DATA_PATH=~/Research/pl_data

# Android SDK
export PATH=${PATH}:~/Library/Android/sdk/platform-tools:~/Library/Android/sdk/tools

# Hub Aliasing
eval "$(hub alias -s)"
