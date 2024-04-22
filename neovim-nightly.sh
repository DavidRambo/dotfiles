#!/usr/bin/bash

if [ ! -d ~/repos/ ]; then
    mkdir ~/repos
fi

if [ ! -d ~/repos/neovim/ ]; then
    cd ~/repos
    git clone https://github.com/neovim/neovim.git
else
    cd ~/repos/neovim/
    git pull
fi

cd ~/repos/neovim/

make clean

make CMAKE_BUILD_TYPE=RelWithDebInfo CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local/neovim"

make install
