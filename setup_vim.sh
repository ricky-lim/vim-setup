#!/usr/bin/env bash
# -*- coding: utf-8 -*-

VIM_DIR=${HOME}/.vim
VIM_BUNDLE=${VIM_DIR}/bundle
VIM_UNDO=${VIM_DIR}/vim_undo #persistent file undo
VUNDLE_GIT="https://github.com/VundleVim/Vundle.vim.git"

if ! [[ -d "$VIM_DIR" ]]; then
    mkdir -p $VIM_DIR && echo "$VIM_DIR created"
    mkdir -p $VIM_UNDO && echo "$VIM_UNDO created"
fi

if ! [[ -e ${VIM_BUNDLE}/Vundle.vim ]]; then
    mkdir -p ${VIM_BUNDLE}
    git clone $VUNDLE_GIT ${VIM_BUNDLE}/Vundle.vim
    echo "$VUNDLE_GIT cloned"
fi

cp ./.vimrc ${HOME}/.vimrc
vim +PluginInstall +qall

echo "setup vim-config: done"
