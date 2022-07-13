parse_git_branch() {
  git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}


# prompt
setopt PROMPT_SUBST


# bold, color, home, emoji, green, branch
export PROMPT='%B%F{39}%~%f%b ☠️ %F{47}$(parse_git_branch)%f > '


# Git things
if [ -f ~/.git_aliases ]; then
  . ~/.git_aliases
fi


# profile management
alias kprofile="vim ~/.config/kitty/kitty.conf"
alias vprofile="vim ~/.vimrc"
alias profile="vim ~/.zshrc"
alias reload=". ~/.zshrc ~./vimrc"

# etc
alias note="vim ~/note"
alias awake="caffeinate -diu"
