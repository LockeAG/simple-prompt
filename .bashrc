# Enable color support for ls and add handy aliases
if [ -x /usr/bin/dircolors ]; then
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Aliases for common commands
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias g='git'
alias v='vim'

# Customize the command prompt (PS1) with Tokyo Night Storm theme colors and a bolder >
PS1='\n\[\e[38;5;110m\]\u@\h:\[\e[38;5;141m\] \w\[\e[0m\]\n\[\e[1;38;5;220m\]>\[\e[0m\] '

# Set the terminal type to xterm
export TERM=xterm

# Set the default editor to Vim
export EDITOR=vim

# Enable history search with arrow keys
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Avoid duplicates in history
export HISTCONTROL=ignoredups:erasedups

# Append to the history file, rather than overwriting it
shopt -s histappend

# Set a larger history size
export HISTSIZE=10000
export HISTFILESIZE=20000

# Use Vim mode in Bash
set -o vi

# Enable auto-correction for typos in directory names
shopt -s dirspell

# Alias for opening .bashrc
alias bashrc='vim ~/.bashrc'

# Source .bashrc to apply changes immediately
alias reload='source ~/.bashrc'

# Add paths to PATH variable (adjust according to your needs)
export PATH="$HOME/bin:$PATH"
