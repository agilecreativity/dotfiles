#/usr/bin/env bash
# Simple installation script for my dotfiles
PUBLIC_DOTFILES=$HOME/codes/agiledev/dotfiles

# Use Dropbox for custom aliase/environment
PRIVATE_DOTFILES=$HOME/Dropbox/dotfiles

# Remove existing symlinks first
rm -rf ~/.bin
rm -rf ~/.zsh.d
rm -rf ~/.aprc
rm -rf ~/.gitconfig

ln -fs $PUBLIC_DOTFILES/bin              $HOME/.bin
ln -fs $PUBLIC_DOTFILES/zsh/zshrc        $HOME/.zshrc
ln -fs $PUBLIC_DOTFILES/ack/ackrc        $HOME/.ackrc
ln -fs $PUBLIC_DOTFILES/aprc             $HOME/.aprc
ln -fs $PUBLIC_DOTFILES/agignore         $HOME/.agignore
ln -fs $PUBLIC_DOTFILES/gitconfig        $HOME/.gitconfig
ln -fs $PUBLIC_DOTFILES/gitignore_global $HOME/.gitignore_global
ln -fs $PRIVATE_DOTFILES/zsh/zsh.d       $HOME/.zsh.d

git config --global core.excludesfile '~/.gitignore_global'
