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
alias gdt="git difftool"

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
plugins=(archlinux bundler git encode64 gem rails3 vi-mode cap extract)

source $ZSH/oh-my-zsh.sh

# Setting Path
# export PATH=/home/kusoayan/.rvm/gems/ruby-1.9.3-p194/bin:/home/kusoayan/.rvm/gems/ruby-1.9.3-p194@global/bin:/home/kusoayan/.rvm/rubies/ruby-1.9.3-p194/bin:/home/kusoayan/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl:/opt/qt/bin:/home/kusoayan/.gem/ruby/1.9.1/bin:/home/kusoayan/.rvm/bin


hash -d ror="/srv/http/ror"
export PATH=$PATH:$HOME/bin
