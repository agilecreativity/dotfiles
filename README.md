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
PRIVATE_DOTFILES=$HOME/apps/private-dotfiles

# Remove existing symlinks first! (destructive)
echo "Remove old symlinks..."
rm -rf ~/.ackrc
rm -rf ~/.agignore
rm -rf ~/.aprc
rm -rf ~/.editorconfig
rm -rf ~/.gitconfig
rm -rf ~/.gitconfig
rm -rf ~/.gitignore
rm -rf ~/.tmux.conf

## NOTE: need to adjust this if running under Linux instead of OSX
rm -rf ~/.xrayconfig
rm -rf ~/.zshrc
rm -rf ~/.pryrc

## Clojure Development
rm -rf ~/.boot/boot.properties
rm -rf ~/.boot/profile.boot
rm -rf ~/.lein/profile.clj

echo "Create new symlinks..."
ln -s $DOTFILES/ack/ackrc $HOME/.ackrc
ln -s $DOTFILES/agignore $HOME/.agignore
ln -s $DOTFILES/aprc $HOME/.aprc
ln -s $DOTFILES/editorconfig $HOME/.editorconfig
ln -s $DOTFILES/env/zshrc $HOME/.zshrc
ln -s $DOTFILES/gitignore $HOME/.gitignore
ln -s $DOTFILES/tmux/tmux.conf $HOME/.tmux.conf
ln -s $DOTFILES/xrayconfig $HOME/.xrayconfig
ln -s $DOTFILES/pryrc $HOME/.pryrc
ln -s $PRIVATE_DOTFILES/gitconfig $HOME/.gitconfig

## For Clojure Development
mkdir -p ~/.boot
ln -s $DOTFILES/clojure/boot.properties $HOME/.boot/boot.properties
ln -s $DOTFILES/clojure/profile.boot $HOME/.boot/profile.boot

mkdir -p ~/.lein
ln -s $DOTFILES/clojure/profile.clj $HOME/.lein/profile.clj

git config --global core.excludesfile '~/.gitignore'
echo "Happy Hacking!"!
```

If you are using ruby you may also run `install-rbenv` (optional)

### Experimental only

This is my personal way to quickly get my personal settings to work in the new machine.

Note: this rely on my `private-dotfiles` that contains some personal settings so you will need to remove any
references in the script above first to make it work for you.

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/agilecreativity/dotfiles/master/setup)"
```

### Note

- [seoul256-gnome-terminal](https://github.com/anuragsoni/seoul256-gnome-terminal)
- [Solarized Color for Gnome](git@github.com:Anthony25/gnome-terminal-colors-solarized.git)
