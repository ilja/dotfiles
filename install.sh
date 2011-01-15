#!/bin/sh

# cd to home dir
cd;

# link .vimrc
if test -f .vimrc
then
    echo "Your ~/.vimrc already exists, i'll move it to ~/.vimrc.old"
    mv -i .vimrc .vimrc-old
fi
ln -s dotfiles/dotvim/vimrc .vimrc

# link .gvimrc
if test -f .gvimrc
then
    echo "Your ~/.gvimrc already exists, i'll move it to ~/.gvimrc.old"
    mv -i .gvimrc .gvimrc-old
fi
ln -s dotfiles/dotvim/gvimrc .gvimrc

# link .vim
if test -d .vim
then
    echo "Your ~/.vim already exists, i'll move it to ~/.vim.old"
    mv -i .vim .vim-old
fi
ln -s dotfiles/dotvim .vim

# link .zshrc
if test -f .zshrc
then
    echo "Your ~/.zshrc already exists, i'll move it to ~/.zshrc.old"
    mv -i .zshrc .zshrc-old
fi
ln -s dotfiles/zshrc .zshrc

# link .aliases
if test -f .aliases
then
    echo "Your ~/.aliases already exists, i'll move it to ~/.aliases.old"
    mv -i .aliases .aliases-old
fi
ln -s dotfiles/aliases .aliases

