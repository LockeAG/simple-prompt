# ~/.bashrc: executed by bash(1) for non-login shells.
# Merged version: Ubuntu defaults + customizations including sudo shortcut and optional nvim settings

# Exit if not running interactively.
case $- in
*i*) ;;
*) return ;;
esac

# ------------------------------
# History and Terminal Settings
# ------------------------------
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export HISTSIZE=10000
export HISTFILESIZE=20000
shopt -s checkwinsize
shopt -s nocaseglob

# ------------------------------
# PATH and Editor Settings
# ------------------------------
export PATH="$HOME/bin:$PATH"
# export EDITOR=vim   # Use vim by default. Uncomment the following line if you want nvim.
export EDITOR=nvim

export TERM=xterm

# ------------------------------
# Directory and Less Settings
# ------------------------------
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# ------------------------------
# chroot Check (Ubuntu Default)
# ------------------------------
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
  debian_chroot=$(cat /etc/debian_chroot)
fi

# ------------------------------
# Color Support and Aliases
# ------------------------------
if [ -x /usr/bin/dircolors ]; then
  eval "$(dircolors -b)"
  alias ls='ls --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

# Common aliases.
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias g='git'
# Optional: Use Neovim instead of Vim.
alias vim='nvim'

# Sudo shortcut alias.
alias _='sudo'

# Aliases for quickly editing and reloading .bashrc.
alias bashrc='vim ~/.bashrc'
alias reload='source ~/.bashrc'

# Alert alias for long-running commands.
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history | tail -n1 | sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# ------------------------------
# Prompt Customization
# ------------------------------
PS1='\n\[\e[38;5;110m\]\u@\h:\[\e[38;5;141m\] \w\[\e[0m\]\n\[\e[1;38;5;220m\]>\[\e[0m\] '
case "$TERM" in
xterm* | rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
  ;;
*) ;;
esac

# ------------------------------
# Advanced Shell Options
# ------------------------------
set -o vi
shopt -s dirspell

# ------------------------------
# Programmable Completion (Ubuntu Default)
# ------------------------------
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# ------------------------------
# History Search with Arrow Keys (Custom)
# ------------------------------
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
