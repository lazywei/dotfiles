#!/bin/sh
#

echo ">> FZF installation ..."
if [ -d $HOME/.fzf ]
then
  echo ">>> FZF found, skip ..."
else
  echo ">>> FZF not found, clone ..."
  git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
  $HOME/.fzf/install
fi
