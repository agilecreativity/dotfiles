#/usr/bin/env bash
set -e

# The public dotfiles
DOTFILES=$HOME/apps/dotfiles

# Remove existing symlinks first! (destructive)
echo "Remove old symlinks..."
rm -rf ~/.aprc
rm -rf ~/.gitconfig
rm -rf ~/.ackrc
rm -rf ~/.zshrc
rm -rf ~/.gitconfig
rm -rf ~/.agignore
rm -rf ~/.gitignore
rm -rf ~/.tmux.conf
rm -rf ~/.editorconfig
# TODO: need to adjust this if running under Linux instead of OSX
rm -rf ~/.xrayconfig

echo "Create new symlinks..."
ln -s $DOTFILES/env/zshrc      $HOME/.zshrc
ln -s $DOTFILES/ack/ackrc      $HOME/.ackrc
ln -s $DOTFILES/aprc           $HOME/.aprc
ln -s $DOTFILES/agignore       $HOME/.agignore
ln -s $DOTFILES/gitconfig      $HOME/.gitconfig
ln -s $DOTFILES/gitignore      $HOME/.gitignore
ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES/editorconfig   $HOME/.editorconfig
ln -s $DOTFILES/xrayconfig     $HOME/.xrayconfig

git config --global core.excludesfile '~/.gitignore'
echo "Done!"
