#!/bin/sh
#

echo ">> Spacemacs installation ..."
if [ -d $HOME/.emacs.d ]
then
  echo ">>> .emacs.d found, skip ..."
else
  echo ">>> .emacs.d not found, clone ..."
  git clone https://github.com/syl20bnr/spacemacs $HOME/.emacs.d
fi
