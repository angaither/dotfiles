# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi


export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/local/mysql/bin:$PATH"
alias profile='vim ~/.bash_profile'
alias cdds='cd /vagrant/html/profiles/dosomething'
alias copyprof='pbcopy < ~/.bash_profile'
alias hubpr='hub pull-request -b DoSomething:dev'
alias rc='vim ~/.bashrc'
alias reload='. ~/.bash_profile .~/.bashrc'
alias gitkill='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
# Clean up dem files.
alias unturd='find . \( -name '\''.tnatr*'\'' -o -name '\''*tnatr;*'\'' -o -name '\''.DS_Store'\'' -o -name '\''._*'\'' -o -name '\''.nfs*F'\'' \) -print -exec rm -Rf {} \;'
# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
# git
alias gitkill='git branch --merged | grep -v "\*" | grep -v  "master\|dev" | xargs -n 1 git branch -d'
alias gc='git checkout'
alias gb='git branch'
alias gs='git status'
alias gp='git push'
alias gpu='git push -u origin'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
    }

  export GIT_PS1_SHOWDIRTYSTATE='yes'
  export GIT_PS1_SHOWSTASHSTATE='yes'
	export GIT_PS1_SHOWUNTRACKEDFILES='yes'
	export PS1="\n\[\033[00;32m\]\w\[\033[00m\]\[$MAGENTA\]\$(parse_git_branch)\[$WHITE\]\n➝  "


export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/local/mysql/bin:/Users/andreagaither/.composer/vendor/bin:/Users/andreagaither/.composer/vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/mysql/bin
