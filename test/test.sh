#!/bin/bash -x

ln -sf "$(pwd)/configfiles/dotfiles/.vimrc" "${HOME}/.vimrc"
mkdir -p "${HOME}/.vim/bundle"
cd "${HOME}/.vim/bundle"
git clone https://github.com/VundleVim/Vundle.vim.git
cat "${HOME}/.vimrc"
ls -ail "${HOME}"
ls -ail "${HOME}/.vim/bundle"
vim +PluginInstall +qall

exit 0