#!/bin/zsh
mkdir bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.gitconfig.alias ./bk_$(date "+%Y%m%d_%H%M%S")/.gitconfig.alias
cp -f ~/.tmux.conf ./bk_$(date "+%Y%m%d_%H%M%S")/.tmux.conf
cp -f ~/.vimrc ./bk_$(date "+%Y%m%d_%H%M%S")/.vimrc
cp -f ~/.zprofile ./bk_$(date "+%Y%m%d_%H%M%S")/.zprofile
cp -f ~/.zshrc ./bk_$(date "+%Y%m%d_%H%M%S")/.zshrc

cp -f ./.gitconfig.alias ~/.gitconfig.alias
cp -f ./.tmux.conf ~/.tmux.conf
cp -f ./.vimrc ~/.vimrc
cp -f ./.zprofile ~/.zprofile
cp -f ./.zshrc ~/.zshrc
