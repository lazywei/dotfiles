#!/bin/sh
#

echo ">> Zim installation ..."
git clone --recursive https://github.com/Eriner/zim.git ${ZDOTDIR:-${HOME}}/.zim
