# Enable command completion
autoload -Uz compinit
compinit

# Customize the command prompt (PS1) with Tokyo Night Storm theme colors, a newline before the username and hostname, and a space before the ~
PROMPT=$'\n%F{cyan}%n@%m:%F{magenta} %~%f\n%F{yellow}%B>%b%f '

# Set the terminal type to xterm
export TERM=xterm

# Set the default editor to Vim
export EDITOR=vim

# Set options for history management
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt histignorealldups
setopt extendedhistory

# Enable case-insensitive globbing (used in pathname expansion)
setopt NO_CASE_GLOB

# Enable auto-correction for typos in directory names
setopt CORRECT

# Aliases for common commands
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias ..='cd ..'
alias ...='cd ../..'
alias g='git'
alias v='vim'

# Alias for editing .zshrc
alias zshrc='vim ~/.zshrc'

# Alias for reloading .zshrc
alias reload='source ~/.zshrc'

# Add paths to PATH variable (adjust according to your needs)
export PATH="$HOME/bin:$PATH"
