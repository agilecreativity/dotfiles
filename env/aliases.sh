## Quick navigation {{{
alias g-desktop='cd ~/Desktop/'
alias g-dot='cd ~/apps/private-dotfiles/'
alias g-dot-pub='cd ~/apps/dotfiles/'
alias g-download='cd ~/Downloads/'
alias g-dropbox='cd ~/Dropbox/'
alias g-script='cd ~/apps/pro-scripts/'
## }}}

# Useful aliases {{{
alias v-a-pub='cd ~/apps/dotfiles && vim ~/apps/dotfiles/env/aliases.sh'
alias v-e-pub='cd ~/apps/dotfiles && vim ~/apps/dotfiles/env/env.sh'

alias v-a='cd ~/apps/private-dotfiles && vim ~/apps/private-dotfiles/env/aliases.sh'
alias v-e='cd ~/apps/private-dotfiles && vim ~/apps/private-dotfiles/env/env.sh'
alias v='vim'
alias vn='vim -c "NERDTree"'
alias vt='vim -c "CommandT"'

alias cp='nocorrect cp'
alias curl='noglob curl'
alias find='noglob find'

alias links='noglob links'
alias ln='nocorrect ln'
alias locate='noglob locate'
alias mkdir='nocorrect mkdir'
alias mv='nocorrect mv'
alias rm='nocorrect rm'
alias w3m='noglob w3m -no-mouse'
alias wget='noglob wget'
## }}}

## Git related aliases {{{
alias gd1='git diff HEAD~1'
alias gd2='git diff HEAD~2'
alias gd3='git diff HEAD~3'
alias gd4='git diff HEAD~4'
alias gd5='git diff HEAD~5'
alias gd6='git diff HEAD~6'
alias gd7='git diff HEAD~7'
alias gd8='git diff HEAD~8'
alias gd9='git diff HEAD~9'

## Skip non-ascii files
alias gn1='file $(git diff --name-only HEAD~1) | grep -i ASCII | cut -d: -f1'
alias gn2='file $(git diff --name-only HEAD~2) | grep -i ASCII | cut -d: -f1'
alias gn3='file $(git diff --name-only HEAD~3) | grep -i ASCII | cut -d: -f1'
alias gn4='file $(git diff --name-only HEAD~4) | grep -i ASCII | cut -d: -f1'
alias gn5='file $(git diff --name-only HEAD~5) | grep -i ASCII | cut -d: -f1'
alias gn6='file $(git diff --name-only HEAD~6) | grep -i ASCII | cut -d: -f1'
alias gn7='file $(git diff --name-only HEAD~7) | grep -i ASCII | cut -d: -f1'
alias gn8='file $(git diff --name-only HEAD~8) | grep -i ASCII | cut -d: -f1'
alias gn9='file $(git diff --name-only HEAD~9) | grep -i ASCII | cut -d: -f1'

## Skip non-ascii files
alias vd1='vim `file $(git diff --name-only HEAD~1) | grep -i ASCII | cut -d: -f1`'
alias vd2='vim `file $(git diff --name-only HEAD~2) | grep -i ASCII | cut -d: -f1`'
alias vd3='vim `file $(git diff --name-only HEAD~3) | grep -i ASCII | cut -d: -f1`'
alias vd4='vim `file $(git diff --name-only HEAD~4) | grep -i ASCII | cut -d: -f1`'
alias vd5='vim `file $(git diff --name-only HEAD~5) | grep -i ASCII | cut -d: -f1`'
alias vd6='vim `file $(git diff --name-only HEAD~6) | grep -i ASCII | cut -d: -f1`'
alias vd7='vim `file $(git diff --name-only HEAD~7) | grep -i ASCII | cut -d: -f1`'
alias vd8='vim `file $(git diff --name-only HEAD~8) | grep -i ASCII | cut -d: -f1`'
alias vd9='vim `file $(git diff --name-only HEAD~9) | grep -i ASCII | cut -d: -f1`'

alias gr1='git rebase -i HEAD~1'
alias gr2='git rebase -i HEAD~2'
alias gr3='git rebase -i HEAD~3'
alias gr4='git rebase -i HEAD~4'
alias gr5='git rebase -i HEAD~5'
alias gr6='git rebase -i HEAD~6'
alias gr7='git rebase -i HEAD~7'
alias gr8='git rebase -i HEAD~8'
alias gr9='git rebase -i HEAD~9'

alias gaa='git add --all ./'
alias gca='git commit -am 'WIP''
alias gcam='git commit --amend'
##alias gcp='git commit -am 'WIP' && git push'
alias gcm='git commit -m 'WIP''
# }}}

## Misc aliases {{{
alias sz='source ~/.zshrc'
alias git-where-was-i='git log --no-merges --author=$USER'
alias t-kill='tmux kill-session -t'

## See: http://usevim.com/2012/03/21/git-and-vimdiff/
#alias v-changed='vim -p `git diff --name-only | grep -v Gemfile`'
#alias run-playbook='ansible-playbook --vault-password-file ~/.vault_pass.txt -vvvv'
## }}}

## Platform specific settings {{{
platform=`uname`
if [[ $platform == 'Linux' ]]; then
  alias a='ls -lrth --color'
  alias nn='nautilus `pwd` &'
elif [[ $platform == 'Darwin' ]]; then
  alias a='ls -lrthG'
fi
# }}}

## Emacs stuffs {{{
## Note: for this to work emacs should be started first with
#$emacs --deamon
alias e='emacsclient -t'
### }}}

## Start postgresql manually (run as user postgres)
#pg_ctl -D /var/lib/postgres/data -l logfile start
