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
