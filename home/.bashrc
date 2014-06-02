#source ~/git-completion.bash
 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:$PATH"
alias profile='vim ~/.bash_profile'
alias rc='vim ~/.bashrc'
alias reload='. ~/.bash_profile .~/.bashrc'
alias unturd='find . \( -name '\''.tnatr*'\'' -o -name '\''*tnatr;*'\'' -o -name '\''.DS_Store'\'' -o -name '\''._*'\'' -o -name '\''.nfs*F'\'' \) -print -exec rm -Rf {} \;'
# git
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }
   
  export GIT_PS1_SHOWDIRTYSTATE='yes'
  export GIT_PS1_SHOWSTASHSTATE='yes'
  export GIT_PS1_SHOWUNTRACKEDFILES='yes'
  # path
  #export PS1='\[\033[1;32m\]\h\[\033[0;33m\] \w\[\033[1;32m\]$(parse_git_branch)\[\033[00m\]: '
   
   
export PS1="\n\[\033[00;32m\]\w\[\033[00m\]\[$MAGENTA\]\$(parse_git_branch)\[$WHITE\]\n➝  "
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
