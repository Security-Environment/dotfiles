#!/usr/bin/env bash
set -e

[ -f .zshrc ] && cp .zshrc ~/.zshrc
[ -f .tmux.conf ] && cp .tmux.conf ~/.tmux.conf
[ -f .vimrc ] && cp .vimrc ~/.vimrc

echo "Dotfiles installed."
