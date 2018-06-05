#!/bin/sh
set -e

cd ~/.vim

echo 'set runtimepath+=~/.vim

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim

try
source ~/.vim/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

echo "cloning third party plugins"
cd my_plugins
git submodule add -f https://github.com/sheerun/vim-polyglot.git
cd ../
echo "done. check out my_plugins/"
