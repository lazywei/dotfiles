#!/bin/sh
#

echo ">> Zim installation ..."
if [ -d $HOME/.zim ]
then
  echo ">>> Zim found, skip ..."
else
  echo ">>> Zim not found, clone ..."
  git clone --recursive https://github.com/Eriner/zim.git $HOME/.zim
fi
