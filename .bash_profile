export PATH=/usr/local/bin:$PATH
export GEM_EDITOR='vim'
export EDITOR='vim'
source ~/.profile
alias python=python3
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias chrm="open /Applications/Google\ Chrome.app"
alias s='screen'
alias sr='screen -r'
alias r='rails'
alias rr='rake routes'
alias bi='bundle check; bundle install'
alias rdm='rake db:migrate'
alias rdr='rake db:rollback'
alias rdc='rake db:create:all'
alias te='RAILS_ENV=test'
alias pe='RAILS_ENV=production'
alias de='RAILS_ENV=development'
alias rds='rake db:seed'
alias begin='rake notes:custom ANNOTATION=BEGIN'
alias okeefe='rake notes:custom ANNOTATION=OKEEFE'
alias codify='rake notes:custom ANNOTATION=CODIFY'
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
