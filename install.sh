#!/bin/sh

# cd to home dir
cd;

# link .vimrc
if test -f .vimrc.local
then
    echo "Your ~/.vimrc.local already exists, i'll move it to ~/.vimrc.local.old"
    mv -i .vimrc.local .vimrc.local.old
fi
ln -s dotfiles/vimrc.local .vimrc.local

# link .gvimrc
if test -f .gvimrc.local
then
    echo "Your ~/.gvimrc.local already exists, i'll move it to ~/.gvimrc.local.old"
    mv -i .gvimrc.local .gvimrc.local.old
fi
ln -s dotfiles/gvimrc.local .gvimrc.local

# link .janus.rake
if test -f .janus.rake
	then
		echo "Your ~/.janus.rake already exists, i'll move it to ~/.janus.rake.old"
		mv -i .janus.rake .janus.rake.old
fi
ln -s dotfiles/janus.rake .janus.rake

# link .zshrc
if test -f .zshrc
then
    echo "Your ~/.zshrc already exists, i'll move it to ~/.zshrc.old"
    mv -i .zshrc .zshrc.old
fi
ln -s dotfiles/zshrc .zshrc

# link .aliases
if test -f .aliases
then
    echo "Your ~/.aliases already exists, i'll move it to ~/.aliases.old"
    mv -i .aliases .aliases.old
fi
ln -s dotfiles/aliases .aliases

