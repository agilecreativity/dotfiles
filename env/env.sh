#!/bin/bash
## Let's try Emacs
export EDITOR="emacs -nw"
export VISUAL="emacs -nw"

## Experiment settings {{{
## Bind the key to Vi for Zsh instead of Emacs!
## See: http://www.cs.elte.hu/zsh-manual/zsh_16.html
## http://dougblack.io/words/zsh-vi-mode.html
## http://zsh.sourceforge.net/Intro/intro_10.html
##uncomment below lines if you like to use Vim

#export EDITOR=vi
#export VISUAL=vi
#bindkey -v
#bindkey '^P' up-history
#bindkey '^N' down-history
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward

## Use 10ms for key sequences instead of 0.4 seconds
#export KEYTIMEOUT=1
## }}}

## Fix the vim's color when running under tmux
export TERM=screen-256color

## Don't clear screen after a command (better with `git status`)
export LESS=-RX
