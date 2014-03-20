## See: http://www.cs.elte.hu/zsh-manual/zsh_16.html
## set default editor to Vim
export EDITOR=vi
export VISUAL=vi

## bind the key to Vi for Zsh instead of Emacs!
# http://dougblack.io/words/zsh-vi-mode.html
# http://zsh.sourceforge.net/Intro/intro_10.html
bindkey -v

## experiment settings {{{
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
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
export PATH=$HOME/apps/wkhtmltox/bin:$PATH
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.bin:$PATH

## Tips: To temporary clear the zsh history uncomment the next two lines {{{
#HISTSIZE=5
#SAVEHIST=5
## }}}

## Linux specific settings {{{
if [[ $(uname) == "Linux" ]]; then
  eval `dircolors ~/dotfiles/dircolors/dircolors.256dark`
  #eval `dircolors ~/dotfiles/dircolors/dircolors.ansi-dark`
fi
## }}}

## OSX specific settings {{{
if [[ $(uname) == "Darwin" ]]; then
  export PATH=$HOME/apps/wkhtml2pdf/bin:$PATH
  export PATH=/usr/texbin:$PATH
fi
## }}}

## Elixir related settings {{{
export PATH=$SPIKES_HOME/erlang-projects/elixir/bin:$PATH
## }}}

## Misc settings {{{
platform=`uname`
if [[ $platform == 'Linux' ]]; then
  alias a='ls -lrth --color'
elif [[ $platform == 'Darwin' ]]; then
  alias a='ls -lrthG'
fi
## }}}
