#!/bin/bash
cp -f ~/.bashrc ~/.bashrc.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.gitconfig.alias ~/.gitconfig.alias.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.tmux.conf ~/.tmux.conf.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.vimrc ~/.vimrc.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.zpreztorc ~/.zpreztorc.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.zprofile ~/.zprofile.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.zshenv ~/.zshenv.bk_$(date "+%Y%m%d_%H%M%S")
cp -f ~/.zshrc ~/.zshrc.bk_$(date "+%Y%m%d_%H%M%S")

cp -f ./.bashrc ~/.bashrc
cp -f ./.gitconfig.alias ~/.gitconfig.alias
cp -f ./.tmux.conf ~/.tmux.conf
cp -f ./.vimrc ~/.vimrc
cp -f ./.zpreztorc ~/.zpreztorc
cp -f ./.zprofile ~/.zprofile
cp -f ./.zshenv ~/.zshenv
cp -f ./.zshrc ~/.zshrc
