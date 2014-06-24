#/usr/bin/env bash
set -e

# The public dotfiles
DOTFILES=$HOME/dotfiles

# The private dotfiles
PRIVATE_DOTFILES=$HOME/codes/bitbucket/private-dotfiles

# Remove existing symlinks first! (destructive)
rm -rf ~/.bin
rm -rf ~/.zsh.d
rm -rf ~/.aprc
rm -rf ~/.gitconfig
rm -rf ~/.ackrc
rm -rf ~/.zshrc
rm -rf ~/.env.sh
rm -rf ~/.aliases.sh
rm -rf ~/.gitconfig
rm -rf ~/.agignore
rm -rf ~/.gitignore
rm -rf ~/.tmux.conf
rm -rf ~/.editorconfig

ln -s $DOTFILES/bin               $HOME/.bin
ln -s $DOTFILES/zsh/zshrc         $HOME/.zshrc
ln -s $DOTFILES/zsh/env.sh        $HOME/.env.sh
ln -s $DOTFILES/zsh/aliases.sh    $HOME/.aliases.sh
ln -s $DOTFILES/ack/ackrc         $HOME/.ackrc
ln -s $DOTFILES/aprc              $HOME/.aprc
ln -s $DOTFILES/agignore          $HOME/.agignore
ln -s $DOTFILES/gitconfig         $HOME/.gitconfig
ln -s $DOTFILES/gitignore         $HOME/.gitignore
ln -s $DOTFILES/tmux/tmux.conf    $HOME/.tmux.conf
ln -s $DOTFILES/editorconfig      $HOME/.editorconfig
ln -s $PRIVATE_DOTFILES/zsh/zsh.d $HOME/.zsh.d

git config --global core.excludesfile '~/.gitignore'
