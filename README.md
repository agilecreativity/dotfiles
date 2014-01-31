dotfiles
========
This is my dotfiles that I used for quite a while. If you like to use it please
follow the simple instruction for installation. You may have to edit/adjust
to your own environment when applicable.

## Installation

``` install.sh
#/usr/bin/env bash
# location of the dotfiles
PUBLIC_DOTFILES=$HOME/Copy/projects/dotfiles

# Use Dropbox for custom aliase e.g. work (Ubuntu) vs home (Mac)
PRIVATE_DOTFILES=$HOME/Dropbox/dotfiles

# Remove existing links first
rm -rf ~/.bin
rm -rf ~/.zsh.d

ln -fs $PUBLIC_DOTFILES/bin              $HOME/.bin
ln -fs $PUBLIC_DOTFILES/zsh/zshrc        $HOME/.zshrc
ln -fs $PUBLIC_DOTFILES/vim/vimrc        $HOME/.vimrc
ln -fs $PUBLIC_DOTFILES/ack/ackrc        $HOME/.ackrc
ln -fs $PUBLIC_DOTFILES/agignore         $HOME/.agignore
ln -fs $PUBLIC_DOTFILES/tmux/tmux.conf   $HOME/.tmux.conf
ln -fs $PUBLIC_DOTFILES/gitignore_global $HOME/.gitignore_global

# Link to private dotfiles for extra aliases/credential that should not be shared.
ln -fs $PRIVATE_DOTFILES/zsh/zsh.d       $HOME/.zsh.d

git config --global core.excludesfile '~/.gitignore_global'
```
## Post installation
Link the gitignore_global as:

``` post-install.sh
git config --global core.excludesfile '~/.gitignore_global'
```
