# See: http://www.cs.elte.hu/zsh-manual/zsh_16.html
# set default editor to Vim
export EDITOR=vi
export VISUAL=vi

# bind the key to Vi for Zsh instead of Emacs!
# See:
# http://dougblack.io/words/zsh-vi-mode.html
# http://zsh.sourceforge.net/Intro/intro_10.html
bindkey -v

## experiment settings:BEG: {{{
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
## }}}

## use 10ms for key sequences instead of 0.4 seconds
export KEYTIMEOUT=1
## }}}

## fix the vim's color when running under tmux
export TERM=screen-256color

## Android related settings {{{
export ANDROID_SDK_HOME=~/apps/adt-bundle/sdk
export PATH=$ANDROID_SDK_HOME/platform-tools:$PATH
export PATH=$ANDROID_SDK_HOME/tools:$PATH
## }}}

## Path settings {{{
export SPIKES_HOME=~/Copy/spikes
export PATH=$HOME/Dropbox/dotfiles/scripts:$PATH
export PATH=$HOME/apps/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.bin:$PATH
## }}}

# Tips: To temporary clear the zsh history uncomment the next two lines {{{
#HISTSIZE=5
#SAVEHIST=5
# }}}

# Make the ls command look prettier with solarized color scheme
if [[ $(uname) == "Linux" ]]; then
  eval `dircolors ~/dotfiles/dircolors/dircolors.256dark`
  #eval `dircolors ~/dotfiles/dircolors/dircolors.ansi-dark`
fi

## Elixir related settings {{{
export PATH=$SPIKES_HOME/erlang-projects/elixir/bin:$PATH
## }}}
