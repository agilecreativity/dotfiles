## dotfiles

This is my dotfiles that I used for quite a while. If you like to use it please
follow the simple instruction for installation. You may have to edit/adjust
to your own environment when applicable.

## Installation

Run the following command:

```
git clone https://github.com/agilecreativity/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

See the file `install.sh` for more detail.

``` install.sh
#/usr/bin/env bash
DOTFILES=$HOME/dotfiles

# Remove existing symlinks first! (destructive)
rm -rf ~/.bin
rm -rf ~/.zsh.d
rm -rf ~/.aprc
rm -rf ~/.gitconfig
rm -rf ~/.ackrc
rm -rf ~/.zshrc
rm -rf ~/.gitconfig
rm -rf ~/.agignore
rm -rf ~/.gitignore
rm -rf ~/.tmux.conf
rm -rf ~/.editorconfig

ln -s $DOTFILES/bin            $HOME/.bin
ln -s $DOTFILES/zsh/zshrc      $HOME/.zshrc
ln -s $DOTFILES/zsh/zsh.d      $HOME/.zsh.d
ln -s $DOTFILES/ack/ackrc      $HOME/.ackrc
ln -s $DOTFILES/aprc           $HOME/.aprc
ln -s $DOTFILES/agignore       $HOME/.agignore
ln -s $DOTFILES/gitconfig      $HOME/.gitconfig
ln -s $DOTFILES/gitignore      $HOME/.gitignore
ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES/editorconfig   $HOME/.editorconfig

git config --global core.excludesfile '~/.gitignore'
```
