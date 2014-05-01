# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gdt="git difftool -y"
#alias vim="/usr/local/Cellar/macvim/7.4-70/MacVim.app/Contents/MacOS/Vim"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git encode64 gem rails cap extract zeus tmux tmuxinator vi-mode)

export ZSH_HIGHLIGHT_HIGHLIGHTERS="(mail brackets pattern cursor root docker)"

export EDITOR=/usr/local/bin/vim

source $ZSH/oh-my-zsh.sh

# Setting Path
# export PATH=/home/kusoayan/.rvm/gems/ruby-1.9.3-p194/bin:/home/kusoayan/.rvm/gems/ruby-1.9.3-p194@global/bin:/home/kusoayan/.rvm/rubies/ruby-1.9.3-p194/bin:/home/kusoayan/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/qt/bin:/home/kusoayan/.gem/ruby/1.9.1/bin:/home/kusoayan/.rvm/bin
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
# export GOPATH=$HOME/go
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

export DOCKER_HOST=tcp://localhost:4243

stty stop undef # to unmap ctrl-s
