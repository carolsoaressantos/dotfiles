# Initialize rbenv
eval "$(rbenv init -)"

# Get git branch for prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Define command prompt layout
export PS1="\[\e[35m\]\u\[\e[m\] \[\033[32m\]\w \[\033[36m\]\$(parse_git_branch)\n\[\033[33m\]$\[\033[00m\] "
