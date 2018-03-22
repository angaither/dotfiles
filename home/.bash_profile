# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Load work-specific alias/shortcuts/variables
if [ -f ~/.ds_config ]; then
  . ~/.ds_config
fi

# Git things
if [ -f ~/.git_aliases ]; then
  . ~/.git_aliases
fi

export PATH="/usr/localphp5/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/local/mysql/bin:$PATH"
alias profile='vim ~/.bash_profile'
alias copyprof='pbcopy < ~/.bash_profile'
alias rc='vim ~/.bashrc'
alias ..='cd ..'
alias reload='. ~/.bash_profile .~/.bashrc'
alias vaggy='vagrant'
alias c='clear'

# Clean up dem files.
alias unturd='find . \( -name '\''.tnatr*'\'' -o -name '\''*tnatr;*'\'' -o -name '\''.DS_Store'\'' -o -name '\''._*'\'' -o -name '\''.nfs*F'\'' \) -print -exec rm -Rf {} \;'
# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export GIT_PS1_SHOWDIRTYSTATE='yes'
export GIT_PS1_SHOWSTASHSTATE='yes'
export GIT_PS1_SHOWUNTRACKEDFILES='yes'
export PS1="\n\[\033[00;32m\]\w\[\033[00m\]\[$MAGENTA\]\$(parse_git_branch)\[$WHITE\]🍄🥑🥒\n➝  "


export PATH=/opt/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/local/mysql/bin:/Users/andreagaither/.composer/vendor/bin:/Users/andreagaither/.composer/vendor/bin:/usr/local/bin:/usr/local/sbin:/usr/local/git/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/usr/local/mysql/bin
