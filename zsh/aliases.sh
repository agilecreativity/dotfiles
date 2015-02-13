# Useful aliases {{{
alias v='vim'
alias cp='     nocorrect cp'
alias curl='   noglob curl'
alias find='   noglob find'
alias gem='    nocorrect gem'
alias links='  noglob links'
alias ln='     nocorrect ln'
alias locate=' noglob locate'
alias mkdir='  nocorrect mkdir'
alias mv='     nocorrect mv'
alias rm='     nocorrect rm'
alias w3m='    noglob w3m -no-mouse'
alias wget='   noglob wget'

# Useful bundle aliases
alias be=' bundle exec'
alias ber='bundle exec rake'

# Quickly navigate to the installed ruby gems
alias v19='cd ~/.rbenv/versions/1.9.3/lib/ruby/gems/1.9.1/gems/;vim .'
alias g19='cd ~/.rbenv/versions/1.9.3/lib/ruby/gems/1.9.1/gems/'
alias v22='cd ~/.rbenv/versions/2.1.2/lib/ruby/gems/2.1.0/gems/;vim .'
alias g22='cd ~/.rbenv/versions/2.1.2/lib/ruby/gems/2.1.0/gems/'
# }}}

# Git related aliases {{{
alias gd1='git diff HEAD~1'
alias gd2='git diff HEAD~2'
alias gd3='git diff HEAD~3'
alias gd4='git diff HEAD~4'
alias gd5='git diff HEAD~5'

alias gn1='git diff --name-only HEAD~1'
alias gn2='git diff --name-only HEAD~2'
alias gn3='git diff --name-only HEAD~3'
alias gn4='git diff --name-only HEAD~4'
alias gn5='git diff --name-only HEAD~5'

alias vd1='vim `git diff --name-only HEAD~1 | grep -v ^vendor`'
alias vd2='vim `git diff --name-only HEAD~2 | grep -v ^vendor`'
alias vd3='vim `git diff --name-only HEAD~3 | grep -v ^vendor`'
alias vd4='vim `git diff --name-only HEAD~4 | grep -v ^vendor`'
alias vd5='vim `git diff --name-only HEAD~5 | grep -v ^vendor`'

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
alias gcp='git commit -am 'WIP' && git push'
alias gcm='git commit -m  'WIP''
# }}}

## Misc aliases {{{
alias sz='source ~/.zshrc'
alias git-where-was-i='git log --no-merges --author=$USER'
alias omz='vim ~/.oh-my-zsh/'
alias t-kill='tmux kill-session -t'
# See: http://usevim.com/2012/03/21/git-and-vimdiff/
alias v-changed='vim -p `git diff --name-only | grep -v Gemfile`'
alias run-playbook='ansible-playbook --vault-password-file ~/.vault_pass.txt -vvvv'
## }}}

## Platform specific settings {{{
platform=`uname`
if [[ $platform == 'Linux' ]]; then
  alias a='ls -lrth --color'
  # Note: may be also $nautilus `pwd`
  alias n='nautilus . &> /dev/null'
  alias chrome='/usr/bin/google-chrome'
elif [[ $platform == 'Darwin' ]]; then
  alias a='ls -lrthG'
fi
# }}}
