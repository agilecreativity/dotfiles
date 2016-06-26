## dotfiles

This is my dotfiles that I used for quite a while. If you like to use it please
follow the simple instruction for installation. You may have to edit/adjust
to your own environment when applicable.

## Installation

Run the following command:

```
mkdir -p ~/apps
git clone https://github.com/agilecreativity/dotfiles.git ~/apps/dotfiles
cd ~/apps/dotfiles
./install
```

See the file `install` for more detail.

```sh 
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
rm -rf ~/.xmonad

# Create some directories that we need
mkdir -p $HOME/.xmonad
ln -s $DOTFILES/xmonad/xmonad.hs $HOME/.xmonad/xmonad.hs

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
echo "Done"!
```

If you are using ruby you may also run `install-rbenv` (optional)

### Note

- [seoul256-gnome-terminal](https://github.com/anuragsoni/seoul256-gnome-terminal)
- [Solarized Color for Gnome](git@github.com:Anthony25/gnome-terminal-colors-solarized.git)
)
