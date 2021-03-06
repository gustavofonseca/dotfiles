#!/usr/bin/env bash

# ------------------------------
# Get the current working directory of this setup script.
# ------------------------------
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# ------------------------------
# Backup existing configuration.
# ------------------------------
if [ -d ~/.vim ]
then
    mv ~/.vim ~/.vim.backup
fi

if [ -f ~/.vimrc ]
then
    mv ~/.vimrc ~/.vimrc.backup
fi

# ------------------------------
# Create symlinks.
# ------------------------------
ln -s $DIR/vim ~/.vim
ln -s $DIR/vimrc ~/.vimrc

# ------------------------------
# Installing Vundle
# ------------------------------
git submodule init && git submodule update

vim +PluginInstall +qall

