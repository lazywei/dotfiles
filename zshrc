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

zsh-users/zsh-syntax-highlighting
EOBUNDLES

# antigen theme robbyrussell
# antigen theme bira
# antigen theme cypher
antigen theme lambda


antigen apply

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gdt="git difftool -y"
# alias vim="/usr/local/Cellar/macvim/7.4-70/MacVim.app/Contents/MacOS/Vim"

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

export PATH=/Users/lazywei/.rbenv/shims:/Users/lazywei/.rbenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/go/bin:/usr/texbin

export PATH=/usr/local/bin:$PATH

export PATH=$PATH:$HOME/bin

# For pip
# export PATH=$PATH:$(brew --prefix)/share/python

# For nodejs's npm and nodejs
export PATH=$PATH:/usr/local/share/npm/bin:/usr/local/bin/node

# For Haskell's cabal
export PATH=$PATH:$HOME/.cabal/bin

# For golang
export GOPATH=/tmp
# export PATH=$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by Anaconda 1.8.0 installer
# export PATH="/Users/lazywei/anaconda/bin:$PATH"

export DISABLE_AUTO_TITLE=true

export PATH="$PATH:$HOME/railsbricks"

# For Go binary tools
export PATH=/Users/lazywei/GoProjects/tools/bin:$PATH

eval "$(direnv hook zsh)"

export DOCKER_HOST=tcp://:2375

stty stop undef # to unmap ctrl-s

# PETSc
export PETSC_DIR="/usr/local/Cellar/petsc/3.4.4"
export PETSC_ARCH="arch-darwin-c-opt"

# temp added, need to find out a better solution
export PATH="$PATH:`xcode-select -print-path`/usr/bin"

# Ref: https://ruby-china.org/topics/19748
export CONFIGURE_OPTS='--disable-dtrace'


# Start fzf configuration

. ~/.fzf.zsh
. `brew --prefix`/etc/profile.d/z.sh

# Setting ag as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -l -g ""'
export FZF_DEFAULT_OPTS='-x -m --sort 10000'

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  local file
  file=$(fzf --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && ${EDITOR:-vim} "$file"
}

# Equivalent to above, but opens it with `open` command
fo() {
  local file
  file=$(fzf --query="$1" --select-1 --exit-0)
  [ -n "$file" ] && open "$file"
}


# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

# fda - including hidden directories
fda() {
  local dir
  dir=$(find ${1:-.} -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# cdf - cd into the directory of the selected file
cdf() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}

# fh - repeat history
fh() {
  print -z $(([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s | sed 's/ *[0-9]* *//')
}

# fkill - kill process
fkill() {
  ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -${1:-9}
}

unalias z
z() {
  if [[ -z "$*" ]]; then
    cd "$(_z -l 2>&1 | sed -n 's/^[ 0-9.,]*//p' | fzf)"
  else
    _z "$@"
  fi
}
