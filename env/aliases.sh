## Quick navigation {{{
alias g-desktop='cd ~/Desktop/'
alias g-dotfiles-pri='cd ~/apps/private-dotfiles/'
alias g-dotfiles='cd ~/apps/dotfiles/'
alias g-download='cd ~/Downloads/'
alias g-dropbox='cd ~/Dropbox/'
alias g-scripts='cd ~/apps/pro-scripts/'
alias g-tmux-starter='cd ~/apps/tmux-starter/'

alias g-m='cd ~/projects/github/clojure-walkthrough/'
alias g-s-em='cd ~/codes/spikes/emacs/'
alias g-s-go='cd ~/codes/spikes/golang/'
alias g-s-js='cd ~/codes/spikes/javascript/'
alias g-s-rb='cd ~/codes/spikes/ruby/'
alias g-sp='cd ~/codes/spikes/'
## }}}

# Useful aliases {{{
alias v-als='vim ~/apps/dotfiles/env/aliases.sh'
alias v-als-priv='vim ~/apps/private-dotfiles/env/aliases.sh'

alias v-env='vim ~/apps/dotfiles/env/env.sh'
alias v-env-pr='vim ~/apps/private-dotfiles/env/env.sh'

alias v-scr='cd ~/apps/pro-scripts;vim -c CommandT'
alias vs='vim ~/.ssh/config'
alias vz='vim ~/.zshrc'
alias v='vim'
alias vn='vim -c "NERDTree"'
alias vt='vim -c "CommandT"'

alias cp='nocorrect cp'
alias curl='noglob curl'
alias find='noglob find'
#alias gem='nocorrect gem'
alias links='noglob links'
alias ln='nocorrect ln'
alias locate='noglob locate'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias w3m='noglob w3m -no-mouse'
alias wget='noglob wget'

# Useful bundle aliases
alias be=' bundle exec'
alias ber='bundle exec rake'
alias bes='bundle exec rspec'
alias bec='bundle exec cucumber'

# When working with Vagrant
alias ssh-vagrant='ssh deploy@33.33.33.33'

# Quickly navigate to the installed ruby gems
alias v22='cd ~/.rbenv/versions/2.1.2/lib/ruby/gems/2.1.0/gems/;vim .'
alias g22='cd ~/.rbenv/versions/2.1.2/lib/ruby/gems/2.1.0/gems/'
## }}}

## Git related aliases {{{
alias gd1='git diff HEAD~1'
alias gd2='git diff HEAD~2'
alias gd3='git diff HEAD~3'
alias gd4='git diff HEAD~4'
alias gd5='git diff HEAD~5'

## Skip non-ascii files
alias gn1='file $(git diff --name-only HEAD~1) | grep -i ASCII | cut -d: -f1'
alias gn2='file $(git diff --name-only HEAD~2) | grep -i ASCII | cut -d: -f1'
alias gn3='file $(git diff --name-only HEAD~3) | grep -i ASCII | cut -d: -f1'
alias gn4='file $(git diff --name-only HEAD~4) | grep -i ASCII | cut -d: -f1'
alias gn5='file $(git diff --name-only HEAD~5) | grep -i ASCII | cut -d: -f1'

## Skip non-ascii files
alias vd1='vim `file $(git diff --name-only HEAD~1) | grep -i ASCII | cut -d: -f1`'
alias vd2='vim `file $(git diff --name-only HEAD~2) | grep -i ASCII | cut -d: -f1`'
alias vd3='vim `file $(git diff --name-only HEAD~3) | grep -i ASCII | cut -d: -f1`'
alias vd4='vim `file $(git diff --name-only HEAD~4) | grep -i ASCII | cut -d: -f1`'
alias vd5='vim `file $(git diff --name-only HEAD~5) | grep -i ASCII | cut -d: -f1`'

alias gr1='git rebase -i HEAD~1'
alias gr2='git rebase -i HEAD~2'
alias gr3='git rebase -i HEAD~3'
alias gr4='git rebase -i HEAD~4'
alias gr5='git rebase -i HEAD~5'

alias gaa='git add --all ./'
alias gca='git commit -am 'WIP''
alias gcam='git commit --amend'
alias gcp='git commit -am 'WIP' && git push'
alias gcm='git commit -m 'WIP''
# }}}

## Misc aliases {{{
alias sz='source ~/.zshrc'
alias git-where-was-i='git log --no-merges --author=$USER'
alias t-kill='tmux kill-session -t'

## See: http://usevim.com/2012/03/21/git-and-vimdiff/
alias v-changed='vim -p `git diff --name-only | grep -v Gemfile`'
alias run-playbook='ansible-playbook --vault-password-file ~/.vault_pass.txt -vvvv'
## }}}

## Platform specific settings {{{
platform=`uname`
if [[ $platform == 'Linux' ]]; then
  alias a='ls -lrth --color'
  ## Note: may be also $nautilus `pwd`
  alias n='nautilus . &> /dev/null'
  alias chrome='/usr/bin/google-chrome'
  ## If we are on Ubuntu/Linux may be we should use this
  #alias vim='/usr/local/bin/vim'
  #alias v='/usr/local/bin/vim'
elif [[ $platform == 'Darwin' ]]; then
  alias a='ls -lrthG'
  ## Be explicit about the version of Vim works better with git
  #alias vim='/opt/boxen/homebrew/bin/vim'
  #alias v='/opt/boxen/homebrew/bin/vim'
fi
# }}}

## Emacs stuffs {{{
## Note: for this to work emacs should be started first with
#$emacs --deamon
alias e='emacsclient -t'
### }}}

## Install latest version of Emacs and fix the alias to make it use
## the latest version [see also](https://jonasbjork.net/install-emacs-25-0-macosx/)

#brew install emacs --HEAD --use-git-head --cocao --srgb
#brew linkapps emacs
#alias emacs="/Applications/Emacs.app/Contents/MacOS/Emacs -nw"

## Start postgresql manually (run as user postgres)
#pg_ctl -D /var/lib/postgres/data -l logfile start
