#!/bin/sh
#

echo ">> Karabiner installation ..."

K_ROOT=$DOTFILES_ROOT/$(dirname "$0")
ln -sf $K_ROOT/private.xml ~/Library/Application\ Support/Karabiner
