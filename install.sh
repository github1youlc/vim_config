#!/bin/bash

# install vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# cp vimrc
cp ./vimrc ~/.vimrc

# unpack YouCompleteMe
tar -xzvf ./YouCompleteMe.tar.gz -C ~/.vim/bundle/YouCompleteMe
echo "you should get into ~/.vim/bundle/YouCompleteMe to run\
    ./install.sh --clang-completer"

# cp ycm_extra_conf.py 
cp ./ycm_extra_conf.py ~/.ycm_extra_conf.py
